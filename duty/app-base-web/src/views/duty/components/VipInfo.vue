<template>
     <div id="watch">
        <el-dialog title="会员详细信息" :visible.sync="dialogTableVisible" width="600px"  @closed="onClosed" :modal='false'>
            <el-tabs type="border-card" v-model="activeName">
                <el-tab-pane label="会员基本信息" name="first">
                    <ul>
                        <li>
                            <span>会员名称：</span>
                            <span>{{detailDate.company_name}}</span>
                        </li>
                        <li>
                            <span>联系人：</span>
                            <span>{{detailDate.contact_person_name}}</span>
                        </li>
                        <li>
                            <span>联系电话：</span>
                            <span>{{detailDate.contact_person_mobile}}</span>
                        </li>
                        <li>
                            <span>注册资本：</span>
                            <span>{{detailDate.register_capital}}</span>
                        </li>
                        <li>
                            <span>信用等级：</span>
                            <span>{{detailDate.credit_rating}}</span>
                        </li>
                        <li>
                            <span>经营地址：</span>
                            <span>
                                {{detailDate.manage_detail_address}}
                            </span>
                            
                        </li>
                        <li class="img">
                            <el-image :src="erweima"></el-image>
                        </li>
                    </ul>
                </el-tab-pane>
                <el-tab-pane label="法人信息">
                    <ul>
                        <li>
                            <span>法人：</span>
                            <span>{{detailDate.legal_person_name}}</span>
                            </li>
                        <li>
                            <span>法人联系电话：</span>
                            <span>{{detailDate.contact_person_mobile}}</span>
                        </li>
                        <li>
                            <span>统一社会码：</span>
                            <span>{{detailDate.enterprise_code}}</span>
                        </li>
                        <li>
                            <span>注册地址：</span>
                            <span>{{detailDate.register_detail_address}}</span>
                        </li>
                    </ul>
                </el-tab-pane>
                <el-tab-pane label="企业简介">
                    <div>
                        <p style="color:#de8f4c;margin-bottom:10px;font-size:16px;">公司简介：</p>
                        <pre class="introduction">{{detailDate.company_detail}}</pre> 
                    </div>
                </el-tab-pane>
                <el-tab-pane label="相关资质">
                    <div>
                        <p style="color:#de8f4c;margin-bottom:10px;font-size:16px;">资质：</p>
                        <el-row :gutter="20" style="height:330px;overflow-y:auto">
                            <el-col :span="6" v-for="(url, index) in arrs" :key="index">
                                <el-image
                                    style="width: 100px; height: 100px"
                                    :src="url"
                                    :preview-src-list="getSrcList(index)">
                                </el-image>
                            </el-col>
                        </el-row>
                    </div>
                </el-tab-pane>
            </el-tabs>
        </el-dialog>
    </div>
</template>

<script>
    import { mapGetters } from 'vuex';
    import { isEmptyArray,isEmptyObject} from '@/util/tools.js';

    export default {
        computed: {
            ...mapGetters([
                'vipId'
            ])
        },
        data() {
            return {
                dialogTableVisible: false,
                gridData: [],
                tabPosition: 'left',
                detailDate:{},
                erweima:[],
                qrList:[],
                activeName:'first',
                arrs:[],
            }
        },
        mounted () {
        },
        methods: {
            onClosed() {
                this.$store.commit('updateVipId', 'none')
                this.activeName='first';
            },
            getSrcList(index){
                return this.arrs.slice(index).concat(this.arrs.slice(0,index))
            },
            detailedInfo(_id){
                let me = this;
                let params = {
                    cid:_id
                }
                me.$api.getCompanyDetail(params).then(res =>{
                    if(res.resultCode === 200){
                        let _result =res.result, _arr =[];
                        if(isEmptyObject(_result)) { return; }
                        me.dialogTableVisible=true;
                        me.detailDate = _result.company;
                        me.erweima = config.services + _result.qrList[0];
                        me.qrList = _result.qualiList;
                        me.qrList.map(url => {
                            let _url = config.services +  url;
                            _arr.push(_url)
                        })
                        me.arrs = _arr;
                    }
                });
            }
        },
        watch: {
            'vipId' (id) {
                if(id !== 'none') {
                    this.$store.commit('updateVipId', 'none')
                    this.detailedInfo(id);
                }
            }
        },
    }
</script>

<style lang="scss">
@import "@/assets/style/ztman.scss";
#watch{
    // 遮罩
    .el-dialog {
        border: 1px solid $duty-border;
    }
    .el-dialog__body {
        background-color:#0B1838!important;
        padding: 10px 20px 20px 20px !important;
    }
    .el-dialog__header{
        background:#0B1838 !important;
        color: #fff !important;
    }
    .el-dialog__title{
        color: #fff;
    }
    .el-dialog__headerbtn .el-dialog__close {
        color: #fff;
    }
    // tab切换
    .el-tabs--border-card>.el-tabs__header{
        background: transparent !important;
    }
    .el-tabs__item{
        padding: 0 37px;
        color: #Fff;
        border-right: 1px solid $duty-border;
        height: 32px;
        line-height: 32px;
    }
    .el-tabs--border-card{
        background-color:#0B1838!important;
        border: 1px solid transparent;
        height: 400px;
    }
    .el-tabs--border-card>.el-tabs__header{
        border-radius: 5px;
        border: 1px solid $duty-border;
        color: #fff;
    }
    .el-tabs--border-card>.el-tabs__header .el-tabs__item.is-active{
        background: $duty-color;
        color: #fff;
        border: 1px solid transparent;
    }
    #tab-3{
        padding: 0 38px;
    }
    .el-tabs--border-card>.el-tabs__content{
        color: #fff;
        text-align: left;
       ul{
            li{
                margin-top: 10px;
                span{
                    font-size: 14px;
                }
                span:nth-of-type(1){
                    color: #de8f4c;
                }   
                span:nth-of-type(2){
                    color: #fff;
                }
            }
            .img{
                width: 112px;
                height: 112px;
                margin:30px auto;
                img{
                    display: block;
                    width: 100%;
                    height: 100%;
                }
            }

       }
    }
    .introduction{
        // text-indent: 30px;
        font-size: 15px;
        color: #fff;
        line-height: 40px;
        height: 320px;
        overflow-y:auto;
        line-height: 30px;
    }
    .img-block{

    }
    
    z-index: 9999;
}
</style>
