<template>
    <div>
        <el-popover
            placement="left"
            @show="showList"
            trigger="click">
            <ul class="poiList">
                <li v-for="item in poiList" :key="item.id">
                    <el-checkbox v-model="item.visible" :label="item.name" border size="mini" @change="onChange(item)"></el-checkbox>
                </li>
            </ul>
            <Square slot="reference" imgUrl="static/images/hotkey/dinshis.png"></Square>
        </el-popover>
    </div>
</template>

<script>
    import Square from './Square.vue';
    import { lookAndFlyPoint } from '@/util/common3d.js'
    export default {
        data() {
            return {
                poiList: [{
                        "id": "pepole",
                        "name": "值勤人点位",
                        "visible": true
                    },{
                        "id": "car",
                        "name": "车辆点位",
                        "visible": true
                    },
                    {
                        "id": "event",
                        "name": "事件点位",
                        "visible": true
                    }
                ],
            }
        },
        components: {
            Square,
        },
        methods: {
            onChange(_item) {
                this.globalEvent.trigger({type:this.eventType.CHANGEPOIVISIBLE, data:{type: _item.id, visible: _item.visible}});
            },
            showList() {}
        },
    }
</script>

<style lang="scss" scoped>
@import "@/assets/style/index.scss";
.poiList{
    li{
        color: rgb(31, 166, 231);
        padding: 5px 0;
        cursor: pointer;
    }
    li:hover{
        color: #de8f4c;
    }
}
</style>

<style lang="scss">
@import "@/assets/style/index.scss";
.el-popover {
    @include background_color("hotkey-background-color");
    min-width: 100px !important;
    border: 1px solid rgba(235, 238, 245, 0.496) !important;
    padding: 5px 12px !important;

}
.el-popper[x-placement^=left] .popper__arrow {
    border-left-color: #EBEEF5;
}
.el-popper[x-placement^=left] .popper__arrow::after {
    border-left-color: $duty-bg !important;
}
.poiList .el-checkbox.is-bordered.el-checkbox--mini {
    width: 100% !important;
}
</style>