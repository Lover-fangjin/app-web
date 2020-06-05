<template>
    <div class="ncov-wrap">
        <div class="center">
            <Map class='map'/>
            <Left />
            <TimeLine />
            <News />
            <Header />
            <Flatmap v-if="currTab === 'flat'"/>
            <Heatmap v-if="currTab === 'heat'"/>
            <div v-if="currTab === 'video'" class="media">
                <Media v-for="addr in zhiboPoints"
                    :key="addr.name"
                    :name="addr.name"
                    :url="addr.url"
                    :georef="addr.georef"
                    :vtype="addr.type"
                    :medias="medias" />
            </div>
        </div>
    </div>
</template>

<script>
    import Left from './Left';
    import TimeLine from './TimeLine';
    import News from './News'
    import Map from './map'
    import Heatmap from './Heatmap'
    import Flatmap from './Flatmap/index.vue'
    import Media from './video/index.vue'
    import { mapGetters } from 'vuex';
    import Header from './Header'

    export default {
        components: {
            Left, 
            TimeLine,
            News,
            Map,
            Flatmap,
            Heatmap,
            Media,
            Header,
        },
        computed: {
            ...mapGetters([
                'currTab'    
            ])
        },

        data() {
            return {
                cmid: 'none',
                zhiboPoints: [
                    /*
                    {
                        georef: "huoshenshan02",
                        name: "火神山实时画面2",
                        url:
                            "https://mobilelive-play.ysp.cctv.cn/ysp/C736F1FABA0A008ACCC09B78C23B6A8D7CB78D097A778BBC21F9A8C658054456E99C0AA31374DB7A7BC8579ACDC915C0B01FAE24F7FEDC86E934EF5C7083399B24F263064E6E9F93B6DA568E8D2365AE369571916DFAB92F44BA6CB2E33F5CAE/2001891501_hd.m3u8"
                    },
                    {
                        georef: "huoshenshan01",
                        name: "火神山实时画面1",
                        url:
                            "https://mobilelive-play.ysp.cctv.cn/ysp/F2B167778DAEDE252C9E62CCE23CA51EB08EEF67BEA35DE73D81AF0A9391E0584AC9C7000711EC57512BE36C98C27561BE9625F57019FD31FDD99AB57B8C357A05DA762608C6B2E9BCCCD421A0B9EFAD6E5340B9CA7DB345C5316B3F05DAF211/2001894001_hd.m3u8"
                    },
                    {
                        georef: "huoshenshan02",
                        name: "火神山回看画面2",
                        type: "mp4",
                        url:
                            "https://mp4playcloud-cdn.ysp.cctv.cn/c000033c7v5.lYIs11002.mp4?sdtfrom=v7007&guid=53a76d1e221b7e536282c4640425c542&vkey=FF942CC5F1ED90C875734DAD0ABA7C7CFDF2ABC644FF095A7942E6F685C29993373D7CCFF165059541D222BD207B132EA1F0BE1AE6553A9CFFD98C837184B528F4A33DD281DA411BF459A8A7F4524214BE2E034984AEF8DFAF353C338DCBD1452C3DAB37346F5C178BDBB9D98FCE6A01&platform=2"
                    },
                    {
                        georef: "huoshenshan01",
                        name: "火神山回看画面1",
                        type: "mp4",
                        url:
                            "https://mp4playcloud-cdn.ysp.cctv.cn/f000069yp0n.afNb11002.mp4?sdtfrom=v7007&guid=53a76d1e221b7e536282c4640425c542&vkey=134B59C7CD7B1ABC435970200597F27FBE7CEEB69AA787AE0146FEB00A611542BC74A5B22094F56B0705BF17D4695CBBF07818A2517FF9FAAFBD86875DFC60C0167A82197C59F125EB9D9620BC10D0A89A2A59A8F6E82D01F32BBFAA0673749AE8B25475BE282781836494536B0D81ED&platform=2"
                    },*/
                    {
                        georef: "leishenshan01",
                        name: "雷神山实时画面1",
                        url: "https://mobilelive-play.ysp.cctv.cn/ysp/E4F9D6E9E2CB4C1D7868477F655F5726CA7029487D7528C5CE8436BA8CFEF593926522EDD95870598B7CC17FEBB58C45ECBABA9F4DF59AF44662747CD4477E937DC545BFE287B25D58DB285E112B36212019FD9E34DA103CE84EBF6354B830FB/2001893301_hd.m3u8"
                    },
                    {
                        georef: "leishenshan02",
                        name: "雷神山实时画面2",
                        url: "https://mobilelive-play.ysp.cctv.cn/ysp/C30A9F9A16CC01F5A81AF758854CE146D124447C066E0A59568CB66D11824C5724BED80D8493EE530DFD937ACEBAED46C1B6E6FD057802DB76DDAD134960C26E9AF543FB7AEBE8F226C5D08A800EAF42795BD88EC407A186F81AAD73C07E28CA/2001893201_hd.m3u8"
                    }
                ],
                medias: []

            }
        }, 
        mounted () {
            let me = this;
            // this.initEarth()

            this.$ds.loadScene().then(scene => {
                me.medias = scene.sceneTree.root.children.filter(item => {return item.title === '直播点位'})[0].children
            }).catch(ex => {
                console.log("query scene failed ", ex);
            });
        },
        methods: {
            changeMouseLocation(type){
                this.$store.commit('updateMouseLocation', type);
            },
            initEarth(){
                Cesium.Ion.defaultAccessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiI3YzU5YjczZC03ZWY5LTQ0OTYtOTRhZi02ZTYwMWY2NjgxYzUiLCJpZCI6NzA0Niwic2NvcGVzIjpbImFzciIsImdjIl0sImlhdCI6MTU0ODEzNzg2MH0.lJ9W6aJEhWmB9KLTr6o2NmDUQFHXs0i9RZ_DE-_ji3I'
                
                // 默认指向中国
                Cesium.Camera.DEFAULT_VIEW_RECTANGLE = Cesium.Rectangle.fromDegrees(118.0, 27.0, 123.0, 31.0);
                Cesium.Camera.DEFAULT_VIEW_FACTOR = 1.0;
                var zInst1 = new ZGLobe.Viewer('earth', {
                    showFPS: false,
                    shadows: false,
                    infoBox: false,
                    vrButton: false,
                    show3DCoordinates: true,
                    contextOptions: {
                        webgl:{
                        preserveDrawingBuffer: true
                        }
                    }
                })

                zInst1.pickControl.setCanPick(true)
                zInst1.viewer.scene.globe.depthTestAgainstTerrain = false;
                
                Cesium.Camera.DEFAULT_VIEW_RECTANGLE = Cesium.Rectangle.fromDegrees(118.0, 27.0, 123.0, 31.0);
                Cesium.Camera.DEFAULT_VIEW_FACTOR = 3.0;

                config.zInst1 = zInst1
                viewer = config.zInst1.viewer
                viewer.scene.postProcessStages.fxaa.enabled = false; //去锯齿 是文字清晰

                var url = 'http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineStreetPurplishBlue/MapServer/tile/{z}/{y}/{x}'
                // var url = 'http://cache1.arcgisonline.cn/arcgis/rest/services/ChinaOnlineStreetGray/MapServer/tile/{z}/{y}/{x}'
                zInst1.objectManager.addImageryLayer('BASEMAP', 'BASEMAP', ZGLobe.Constants.ImageryType.Template, url)
            },
            onMenuChange(id) {
                let me = this;
                if(id === 'none'){
                    me.$store.commit('updateToggleRight',  !me.toggleRight);
                    $(".right").stop(true,false).animate({'margin-right': '-350px'}, 'normal', 'linear', function(){ });
                } else {
                    me.$store.commit('updateToggleRight',  true);
                    $(".right").stop(true,false).animate({'margin-right': '0px'}, 'normal', 'linear', function(){ });
                }
            }
        },
        watch: {
            "currMenuId" (id) {
                this.onMenuChange(id)
            }
        }
    }
</script>

<style lang="scss" scoped>
    @import '../../assets/style/ztman.scss';
    .ncov-wrap{width:100%;height:100%; min-height: 600px; overflow: hidden;}

    .map{
        left: 15%;
        position: absolute;
        width: 70%;
        z-index: 2;
    }
</style>