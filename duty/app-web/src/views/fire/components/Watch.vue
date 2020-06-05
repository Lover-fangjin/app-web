<template>
     <div id="watch">
        <el-dialog title="值班表" :visible.sync="dialogTableVisible">
            <el-table :data="gridData">
                <el-table-column property="DUTY_DATE" label="日期" width="150"></el-table-column>
                <el-table-column property="DUTY_TIME" label="时间" width="200"></el-table-column>
                <el-table-column property="people" label="姓名" width="150"></el-table-column>
                <el-table-column property="People_tel" label="联系电话" width="200"></el-table-column>
                <el-table-column property="IS_DUTY" label="在岗状态">
                    <template slot-scope="scope">
                        <img :src="scope.row.IS_DUTY=='1'?'static/images/duty/open.png' : 'static/images/duty/off.png'" alt="">
                    </template>
                </el-table-column>
            </el-table>
        </el-dialog>
    </div>
</template>

<script>
    import { mapGetters } from 'vuex';

    export default {
        computed: {
            ...mapGetters([
                'wacthInfo'    
            ])
        },
        data() {
            return {
                tableData: [{
                        tel: '13811111111',
                        name: '王小虎',
                        status: '弄'
                    }, 
                    {
                        tel: '13811111111',
                        name: '王小虎',
                        status: '弄'
                    }
                ],
                dialogTableVisible: false,
                gridData: [],
            }
        },
        watch: {
            'wacthInfo' (value) {
                console.log('watchInfo: ', value);
                this.dialogTableVisible = true;
            }
        },
    }
</script>

<style lang="scss">
@import "@/assets/style/ztman.scss";
#watch{
    .el-dialog__body {
        background-color: $duty-bg !important;
    }
    z-index: 9999;
}
</style>