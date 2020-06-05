var CesiumHeat = function (viewer, data = {
    autoMaxMin: true,
    data: [],
  }, bbox = [-180, -90, 180, 90]
, heatmapConfig = {}, autoRadiusConfig = {
enabled: true,
min: 6375000,
max: 10000000,
maxRadius: 20 * 2,
minRadius: 5 * 2,
}, canvasConfig = {
totalArea: 360 * 2 * 720 * 2,
autoResize: true,
}) {
if (typeof window == 'undefined') return

this.viewer = viewer
this.bbox = bbox
this.autoRadiusConfig = autoRadiusConfig
this.max = undefined
this.min = undefined

/**
* 澧炲姞涓€涓垨澶氫釜鐐�
* @param {Object|[]} x
*/
this.addData = function(x) {
if (Array.isArray(x)) {
this.data = this.data.concat(x.map(y => {
this.updateMaxMin(y.value)
return this.convertData(y)
}))
} else {
this.updateMaxMin(x.value)
this.data.push(this.convertData(x))
}
this.updateCesium(true)
}

/**
* 鎸夊綋鍓嶇殑鐩告満楂樺害璋冩暣鐐圭殑杈愬皠锛堣秺楂橈紝瓒婂ぇ锛�
*/
this.updateHeatmap = function() {
let h = this.viewer.camera.getMagnitude()
const { min, max, minRadius, maxRadius } = this.autoRadiusConfig
let newRadius = parseInt(minRadius + (maxRadius - minRadius) * (h - min) / (max - min))

this.heatmap.setData({
max: this.max,
min: this.min,
data: this.data.map(({ x, y, value }) => {
return {
x, y, value, radius: newRadius,
}
})
})
}

/**
* 鏇存柊cesium鏄剧ず
* @param {*} updateHeat
*/
this.updateCesium = function(updateHeat) {
if (this.layer) {
this.viewer.scene.imageryLayers.remove(this.layer)
}
updateHeat && this.updateHeatmap()

let provider = new Cesium.SingleTileImageryProvider({
url: this.heatmap.getDataURL(),
rectangle: Cesium.Rectangle.fromDegrees(...this.bbox)
})
this.layer = this.viewer.scene.imageryLayers.addImageryProvider(provider)
}

/**
* 杞崲鍧愭爣
* @param {*} param0
*/
this.convertData = function({ x, y, value }) {
let [px, py] = this.gps2point([x, y])
return {
x: px,
y: py,
value: value,
}
}

/**
* 鏇存柊鏈€澶у€兼渶灏忓€�
* @param {number} value
*/
this.updateMaxMin = function(value) {
if (this.max === undefined) {
this.max = value
} else {
this.max = Math.max(value, this.max)
}
if (this.min === undefined) {
this.min = value
} else {
this.min = Math.min(value, this.min)
}
}

this.gps2point = function(gps = []) {
let [x1, y1] = gps
let { top, left, height, width } = this.boxMeta
let canvasConfig = this.canvasConfig

let x = parseInt((x1 - left) / width * canvasConfig.width)
let y = parseInt((top - y1) / height * canvasConfig.height)
return [x, y]
}

/**
* 閿€姣�
*/
this.destory = function() {
this.viewer.camera.moveEnd.removeEventListener(this.cameraMoveEnd)
if (this.layer) {
this.viewer.scene.imageryLayers.remove(this.layer)
}
if (this.mountPoint) {
this.mountPoint.remove()
}
}


// bbox璁＄畻鍩虹淇℃伅
const [left, bottom, right, top] = bbox
let height = top - bottom, width = right - left
this.boxMeta = {
top, left, height, width
}

// 璁＄畻鐢诲竷澶у皬
if (canvasConfig.autoResize) {
if (!canvasConfig.totalArea) {
throw 'specify totalArea if auto resize'
}
// w*h = totalArea
// w:h = width/height
const h = Math.floor(Math.sqrt(height * canvasConfig.totalArea))
const w = Math.floor(h * width / height)
this.canvasConfig = {
...canvasConfig,
width: w,
height: h,
}
} else {
if (!canvasConfig.width || !canvasConfig.height) {
throw 'specify width and height if not auto resize'
}
this.canvasConfig = canvasConfig
}

// 鍒濆鍖杊eatmap
let config = { ...heatmapConfig }
if (!config.container) {
this.mountPoint = newDiv({
position: `absolute`,
top: 0,
left: 0,
'z-index': -100,
overflow: 'hidden',
width: 0,
height: 0,
}, document.body)

config.container = newDiv({
width: this.canvasConfig.width,
height: this.canvasConfig.height
}, this.mountPoint)
}
this.heatmapConfig = config
this.heatmap = h337.create(config)

// 璁剧疆鐑姏鍥炬暟鎹�
let dataConfig
if (Array.isArray(data)) {
dataConfig = {
autoMaxMin: true,
data,
}
} else {
dataConfig = {
...data
}
}
if (!dataConfig.autoMaxMin) {
if (!dataConfig.min || !dataConfig.max) {
throw 'need max and min when not auto'
}
this.min = dataConfig.min
this.max = dataConfig.max
}
console.log('this', this)
let newData = dataConfig.data.map(x => {
this.updateMaxMin(x.value)
return this.convertData(x)
})
delete dataConfig.data

this.dataConfig = dataConfig
this.data = newData
let heatdata = {
max: this.max,
min: this.min,
data: newData,
}
this.heatmap.setData(heatdata)

// 鏇存柊鍒癱esium
this.updateCesium(autoRadiusConfig.enabled)
this.cameraMoveEnd = () => this.updateCesium(true)
autoRadiusConfig.enabled && this.viewer.camera.moveEnd.addEventListener(this.cameraMoveEnd)
}

/**
* 鍒涘缓涓€涓爣绛�
* @param {*} style
* @param {*} parent
*/
function newDiv(style, parent) {
let div = document.createElement('div')
parent && parent.append(div)
for (let k in style) {
if (typeof style[k] === 'number') {
div.style[k] = style[k] + 'px'
continue
}
div.style[k] = style[k]
}
return div
}