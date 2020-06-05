<template>
    <div class="search">

        <div class="input-item">
            <el-autocomplete
                size="mini"
                placeholder="请输入查询内容"
                popper-class="my-autocomplete"
                v-model="result"
                clearable
                @clear="onClear"
                :fetch-suggestions="querySearch"
                :select-when-unmatched='true'
                @input="autoInput"
                @select="handleSelect">
                <!-- <i class="el-icon-search el-input__icon" 
                    style="line-height:32px"
                    slot="suffix"
                    @click="handleIconClick">
                </i> -->
                <!-- <el-button class="search-btn" slot="append" style="background:transparent;" icon="el-icon-search" @click="handleIconClick"></el-button> -->
                <template slot-scope="props">
                    <div class="name">{{ props.item.name }}</div>
                    <span class="addr">{{ Array.isArray(props.item.address) ? props.item.district : props.item.address }}</span>
                </template>
            </el-autocomplete>
        </div>
    </div>
</template>

<script>
    import { goAngleView, drawEntityPoiSingle, getCamersPosition,removeEntityByType } from '@/util/common3d';
    import { isEmptyArray } from '@/util/tools';
    export default {
        data() {
            return {
                restaurants: [],
                result: '',
                poiName: 'tmpPoi',
                defaultImg: 'static/img/daohang.png',
                point: {
                    type: 'search_poi',
                    group: 'search_group',
                    imgs: {
                        defaultImg: 'static/images/pois/site_d.png',
                        activeImg: 'static/images/pois/site_s.png',
                    }
                },
            }
        },
        methods: {
            querySearch(queryString, cb) {
                var restaurants = this.restaurants;
                var results = queryString ? restaurants.filter(this.createFilter(queryString)) : restaurants;
                // 调用 callback 返回建议列表的数据
                cb(results);
            },
            createFilter(queryString) {
                return (restaurant) => {
                    return (restaurant.value.toLowerCase().indexOf(queryString.toLowerCase()) === 0);
                };
            },
            handleSelect(item) {
                console.log(item)
                let me = this, _viewer = this.$root.viewer;
                removeEntityByType(_viewer, me.point.type);

                let param = {
                    id: me.poiName,
                    name: item.name,
                    lat: item.location.lat,
                    lng: item.location.lng,
                    height: 10,
                    imgs: me.point.imgs,
                    type:  me.point.type,
                    group: me.point.group
                }
                drawEntityPoiSingle(_viewer, param);

                let c = getCamersPosition(_viewer);
                let info = {
                    longitude: item.location.lng,
                    latitude: item.location.lat,
                    height: 1000,
                    heading: config.startViewer.euler.heading,
                    pitch: -90,
                    roll: config.startViewer.euler.roll
                }
                goAngleView(_viewer, info);
            },
            autoInput(){
                let me = this;
                var keywords = me.result;
                AMap.plugin('AMap.Autocomplete', function(){
                    // 实例化Autocomplete
                    var autoOptions = {
                    city: '全国'
                    }
                    var autoComplete = new AMap.Autocomplete(autoOptions);
                    autoComplete.search(keywords, function(status, result) {
                        if(isEmptyArray(result.tips)) { return; }
                        let data = result.tips;
                        data.map(item => {
                            item['value'] = item.name;
                        })
                        me.restaurants = data;
                    })
                })
            },
            onClear(){
                this.result = '';
                let _viewer = this.$root.viewer;
                let info = { ...config.startViewer.poisiton, ...config.startViewer.euler };
                goAngleView(_viewer, info);
                removeEntityByType(_viewer, this.point.type)
            }
        }
    }
</script>

<style lang="scss">
@import "../../assets/style/index.scss";

.my-autocomplete {
    li {
        line-height: normal;
        padding: 7px;
        .name {
            text-overflow: ellipsis;
            overflow: hidden;
        }
        .addr {
            font-size: 12px;
            color: #b4b4b4;
        }
        .highlighted .addr {
            color: #ddd;
        }
    }
}
    
.search {

    .el-input__inner {
        // background: #313c73 !important;
        background: rgba(11, 24, 56, 0.7) !important;
        color: #ffffff !important;
        text-align: left !important;
        border: none !important;
    }
    
    .el-autocomplete {
        width: 100% !important;
    }

    .el-input-group__append{
        // background: $panel-background-color !important;
        background: rgba(11, 24, 56, 0.7) !important;
        border: none !important;
    }
    // .el-autocomplete:after{
    //     position: absolute;
    //     width: 1px;
    //     height: 15px;
    //     background: rgba(255,255,255,0.5);
    //     top: 6px;
    //     right: 50px;
    //     content: '';
    // }
    .search-btn{
        background: transparent !important;
        border: none !important;
    }
    .el-autocomplete{
        border:1px solid rgba(255,255,255,0.5) !important;
        border-radius: 5px;
        position: relative !important;
        width: 250px;
    }
    .select-option{
        background: rgba(11, 24, 56, 0.7) !important;
    }
    .el-scrollbar{
        background: red !important;
    }
    .el-icon-search{
        color: #fff;
    }
}
</style>