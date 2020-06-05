<template>
    <div class="search">

        <div class="input-item">
            <el-autocomplete
                popper-class="my-autocomplete"
                v-model="result"
                :fetch-suggestions="querySearch"
                placeholder="请输入内容"
                @input="autoInput"
                @select="handleSelect">
                <i class="el-icon-search el-input__icon" 
                    style="line-height:32px"
                    slot="suffix"
                    @click="handleIconClick">
                </i>
                <template slot-scope="props">
                    <div class="name">{{ props.item.name }}</div>
                    <span class="addr">{{ Array.isArray(props.item.address) ? props.item.district : props.item.address }}</span>
                </template>
            </el-autocomplete>
        </div>
    </div>
</template>

<script>
    import {goAngleView, drawEntityPoi, removeEntityByName} from '@/util/common3d';
    import { isEmptyArray } from '@/util/tools';
    export default {
        data() {
            return {
                restaurants: [],
                result: '',
                poiName: 'tmpPoi',
                defaultImg: 'static/img/daohang.png',
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
                removeEntityByName(_viewer, me.poiName);

                let param = {
                    id: me.poiName,
                    name: item.name,
                    imgUrl: me.defaultImg,
                    lat: item.location.lat,
                    lng: item.location.lng,
                    height: 10
                }
                drawEntityPoi(_viewer, me.poiName, [param]);

                let c = config.zInst1.camOper.getPosition();
                let info = {
                    longitude: item.location.lng,
                    latitude: item.location.lat,
                    height: 5500,
                    heading: 0,
                    pitch: -90,
                    roll: c.roll
                }
                goAngleView(info);
            },
            handleIconClick(ev) {
                console.log(this.result);
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
            }
        }
    }
</script>

<style lang="scss">


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
            -webkit-appearance: none;
            background: rgba(255,255,255,0.3) !important;
            background-image: none;
            border-radius: 4px;
            border: 1px solid rgba(255,255,255,0.4) !important;
            box-sizing: border-box;
            color: #ffffff !important;
            display: inline-block;
            font-size: 14px;
            height: 55px;
            line-height: 1;
            outline: none;
            padding: 0 28px;
            transition: border-color .2s cubic-bezier(.645,.045,.355,1);
            width: 100%;
            text-align: left !important;
        }
        
        .el-autocomplete {
            width: 100% !important;
        }
    }
</style>