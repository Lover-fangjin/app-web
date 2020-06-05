<template>
    <div class="ncov">
        <div style="font-size:16px;margin-top:10px;">信用等级统计<span style="color:rgba(30, 159, 229, 1);margin-left:10px;font-weight:bold;">{{title}}</span></div>
        <div class="grade-wrap">
            <div class="grade-wrap-item"  v-for="item in dataList" :key="item.id">
                <p>{{item.value}}</p>
                <p>{{item.name}}</p>
                <p>占比<span style="margin-left:2px;">{{item.per}}%</span></p>
            </div>
        </div>
    </div>
</template>

<script>
/**
 * 信用等级统计
 * @author hejin 2020-3-4
 */
import { mapGetters } from 'vuex';
import { doublePieChart } from './charts.js'

export default {
    data() {
        return {
            title:'',
            total: 0,
            dataList:[],
            loading: false
        }
    },
    computed: {
        ...mapGetters([
            'statistic'
        ])
    },
     watch: {
        'statistic'(result) {
            let me = this;
            let _datas = result.creditRating;
            let legend = ['1A级', '2A级', '3A级', '4A级', '5A级'], series = {};
            me.total = 0;
            legend.map((item, index) => {
                series[item] = { value: 0, name: item, per: 0 };
            })
            _datas.map(item => {
                me.total += parseInt(item.count);
                me.title = '(' + me.total + '家)'; 
                let _rating = item.credit_rating.length + 'A级'
                series[_rating].value = item.count
            })
            Object.keys(series).map(key => {
                series[key].per =(Math.round(series[key].value / parseInt(me.total) * 1000) / 10);
            })
            me.dataList = Object.values(series);
        }
    },
}
</script>

<style lang="scss" scoped>
@import "@/assets/style/ztman.scss";
.ncov{
    height: 100%;
    width: 100%;
}
.charts {
    width: 100%;
    height: 100%;
}
.grade-wrap{
    width: 90%;
    margin: 6px auto;
    display: flex;
    .grade-wrap-item{
        width: 20%;
        padding: 10px 0;
        flex:1;
        margin: 0 8px;
        p{
            margin-bottom: 10px;
        }
        p:nth-of-type(1){
            font-size: 22px;
            color: #fff;
        }
        p:nth-of-type(2){
            width: 100%;
            height: 30px;
            line-height: 30px;
            text-align: center;
            font-size: 16px;
        }
        p:nth-of-type(3){
            font-size: 14px;
        }
    }
    .grade-wrap-item:nth-of-type(1){
        p:nth-of-type(2){
            border: 1px dotted #fc8200;
            color: #fc8200;
        }
        p:nth-of-type(3)>span{
            color: #fc8200;
        }
    }
    .grade-wrap-item:nth-of-type(2){
        p:nth-of-type(2){
            border: 1px dotted #00fff0;
            color: #00fff0;
        }
        p:nth-of-type(3)>span{
            color: #00fff0;
        }
    }
    .grade-wrap-item:nth-of-type(3){
        p:nth-of-type(2){
            border: 1px dotted #0ad466;
            color: #0ad466;
        }
        p:nth-of-type(3)>span{
            color: #0ad466;
        }
    }
    .grade-wrap-item:nth-of-type(4){
        p:nth-of-type(2){
            border: 1px dotted #8262f2;
            color: #8262f2;
        }
        p:nth-of-type(3)>span{
            color: #8262f2;
        }
    }
    .grade-wrap-item:nth-of-type(5){
        p:nth-of-type(2){
            border: 1px dotted #fcbc00;
            color: #fcbc00;
        }
        p:nth-of-type(3)>span{
            color: #fcbc00;
        }
    }
}
</style>