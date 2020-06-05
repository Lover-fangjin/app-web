<template>
    <div class="secutity-wrap">
        <Left ref="left"/>
        <Right ref="right"/>
        <Bottom ref="bottom"/>
        <!-- <Hotkey class='right-510'/> -->
        <!-- <Compass /> -->

        <Poi ref="event" :info="poiInfos.event" />
        <People ref="people" :info="poiInfos.people" />
    </div>
</template>

<script>
    import Left from './Leftwind/index.vue';
    import Right from './RightWind/index.vue';
    import Bottom from './Bottom/index.vue'
    import FileSaver from 'file-saver';
    // import Hotkey from '../components/Hotkey.vue';
    import Poi from '../components/poi/Poi.vue'
    import People from '../components/poi/People.vue'

    export default {
        components: {
            Left,
            Right,
            Bottom,
            // Hotkey,
            People,
            Poi
        },
        data() {
            return {
                timer: null,
                event_entity: undefined,
                peop_entity: undefined,
                peopleVisible: true,
                carVisible: true,
                eventVisible: true,
                poiInfos: {
                    event: {
                        type: 'event_poi',
                        group: 'event_group',
                        list: [],
                        imgs: {
                            defaultImg: 'static/images/pois/site_d.png',
                            activeImg: 'static/images/pois/site_s.png',
                        }
                    },
                    people: {
                        type: 'people_poi',
                        group: 'people_group',
                        list: [],
                        imgs: {
                            defaultImg: 'static/images/pois/people_d.png',
                            activeImg: 'static/images/pois/people_s.png',
                        }
                    },
                },
                eventList:[]
            }
        },
        mounted () {
            let me = this;
            me.$nextTick(() => {
                me.initLayers();
                // me.roundRobin();
                me.globalEvent.addHandler(me.eventType.CHANGEPOIVISIBLE, me.changePoiVisible);
            })
        },
        methods: {
            /**
             * 初始化图层、父级实体、可视距离等
             * @author hejin 2020.5.25
             */
            initLayers() {
                let me = this;
                let _viewer =me.$root.viewer;
                let _eventId = this.guid.newGUID();
                let peopleId = this.guid.newGUID();
                me.event_entity = _viewer.entities.add({
                    id: _eventId,
                    group: me.poiInfos.event.group,
                });
                me.peop_entity = _viewer.entities.add({
                    id: peopleId,
                    group: me.poiInfos.people.group,
                });
                // me.updateEntityVisible();
                _viewer.scene.camera.changed.addEventListener(me.updateEntityVisible);
            },
            updateEntityVisible() {
                let me = this;
                let _viewer =me.$root.viewer;
                //获取当前相机高度
                let height = Math.ceil(_viewer.camera.positionCartographic.height); //取整数
                me.event_entity.show = me.eventVisible && height >= 10 && height <= 6000 ? true : false;
                me.peop_entity.show = me.peopleVisible && height >= 10 && height <= 60000 ? true : false;
            },
            /**
             * 接口轮循, 10秒请求一次服务器
             * @author hejin 2020.5.25
             */
            roundRobin() {
                let me = this;
                let params = {
                    userId: '',
                    pageNum: 1,
                    pageSize: 999,
                    dateType: me.currentDate
                }
                me.$api.getAllEvent(params).then(res => {
                    console.log('警情信息: ', res);
                    let _infos = res.result.list;
                    let _list = _infos.map(item => {
                        let _info = Object.assign({name: item.problem_level + '-' + item.event_type}, item)
                        return _info
                    })
                    me.eventList = _list;
                    me.$refs['left'].updateEventList(_list);
                    me.$refs['event'].updateEventList(_list);

                    me.timer = setInterval(() => { 
                        // 10秒执行一次轮循 
                        params.dateType = me.currentDate;
                        me.$api.getAllEvent(params).then(res => {
                            let _infos = res.result.list;
                            let _list = _infos.map(item => {
                                let _info = Object.assign({name: item.problem_level + '-' + item.event_type}, item)
                                return _info
                            })
                            let _contained = me.isContained(me.eventList, _list);
                            me.eventList = _list;
                            if(!_contained) {
                                me.$refs['left'].updateEventList(_list);
                                // me.$refs['event'].updateEventList(_list);
                                me.$refs['event'].updatePoiPosition(_list);
                                me.getAllEventCount();
                            }
                        });
                        me.$api.getAllDutyUser({dateType: me.currentDate}).then(res => {
                            me.$refs['people'].updatePeoplePosition(res.result);
                        })
                    }, 10000);
                });
                me.getAllEventCount();
                me.getAllDutyUser();
            },
            /**
             * 请求所有统计结果
             * @author hejin 2020.5.25
             */
            getAllEventCount(){
                let me = this;
                me.$api.getEventCount({dateType: me.currentDate}).then(res => {
                    me.$refs['right'].updateAllEventCount(res.result);
                    me.$refs['bottom'].updateAllEventCount(res.result);
                })
            },
            /**
             * 请求所有在线人员简要信息
             * @author hejin 2020.5.25
             */
            getAllDutyUser(){
                let me = this;
                me.$api.getAllDutyUser({dateType: me.currentDate}).then(res => {
                    me.$refs['people'].updatePeopleList(res.result);
                })
            },
            /**
             * 处理人员poi点数据，格式化poi点显示名称
             * @author hejin 2020.5.25
             */
            updateEventPoi(_data){
                let _list = _data.map(item => {
                    let _info = Object.assign({name: item.problem_level + '-' + item.event_type}, item)
                    return _info
                })
                this.eventList = _list;
            },
            /**
             * 判断两个数组是否有差
             */
            isContained(a, b) {
                if( a.length < 1 ) { return; }
                let me = this, _viewer = this.$root.viewer;
                if(!(a instanceof Array) || !(b instanceof Array)) return false;
                if(a.length != b.length) {
                    let _len = b.length - a.length;
                    if( _len > 5 ) { return; }
                    for(let i = 0; i < _len; i++){
                        let _info = b[i];
                        this.$notify({
                            title: _info.problem_level+'警情',
                            message: _info.event_type + '：' + _info.description,
                            duration: 100000,
                            onClick: () => {
                                let lon = parseFloat(_info.lon), lat = parseFloat(_info.lat);
                                let info = {
                                    longitude: lon,
                                    latitude: lat,
                                    height: 500,
                                    heading: 0,
                                    pitch: -90,
                                    roll: config.startViewer.euler.roll
                                }
                                goAngleView(_viewer, info);
                            }
                        });
                    }
                    return false
                };
                for(var i = 0, len = b.length; i < len; i++){
                    let _keys = Object.keys(a[i]);
                    let _status = true;
                    _keys.map(key => {
                        if( a[i][key] != b[i][key] ){ 
                            _status = false;
                            return; 
                        }
                    });
                    if (!_status) { 
                        return false;
                    }
                }
                return true;
            },
            changePoiVisible(param) {
                let me = this;
                let _type = param.data.type;
                let _visible = param.data.visible;
                switch(_type){
                    case 'pepole':
                        me.peopleVisible = _visible;
                        break;
                    case 'car':
                        me.carVisible = _visible;
                        break;
                    case 'event':
                        me.eventVisible = _visible;
                        break;
                }
                me.updateEntityVisible();
            }
        },
        destroyed () {
            clearInterval(this.timer);
        },
    }
    
</script>

<style lang="scss" scoped>
.right-510{
    position: absolute;
    top: 85px;
    right: calc( 20% + 10px );
    z-index: 5;
}
.right-10{
    position: absolute;
    top: 90px;
    right: 10px;
    z-index: 5;
}
</style>