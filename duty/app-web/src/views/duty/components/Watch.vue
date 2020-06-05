<template>
     <div id="watch">
        <el-dialog title="值班表" :visible.sync="dialogTableVisible" @closed="onClosed">
            <el-table :data="gridData" height="700">
                <el-table-column property="site_name" label="站点名称" width="250"></el-table-column>
                <el-table-column property="duty_start_time" label="起始时间" width="160"></el-table-column>
                <el-table-column property="duty_end_time" label="结束时间" width="160"></el-table-column>
                <el-table-column property="truename" label="姓名" width="150"></el-table-column>
                <el-table-column property="mobile" label="联系电话" width="150"></el-table-column>
                <el-table-column property="is_duty" label="在岗状态">
                    <template slot-scope="scope">
                        <img :src="scope.row.is_duty=='1' ? 'static/images/duty/open.png' : 'static/images/duty/off.png'" alt="">
                    </template>
                </el-table-column>
            </el-table>
        </el-dialog>
    </div>
</template>

<script>
    import { mapGetters } from 'vuex';
    import { isEmptyArray } from '@/util/tools.js';

    export default {
        computed: {
            ...mapGetters([
                'wacthInfo'    
            ])
        },
        data() {
            return {
                dialogTableVisible: false,
                gridData: [],
            }
        },
        methods: {
            onClosed() {
                this.$store.commit('updateWacthInfo', []);
            }
        },
        watch: {
            'wacthInfo' (sitesInfo) {
                console.log('watchInfo: ', sitesInfo);
                if(isEmptyArray(sitesInfo)) { return; }

                let _girdData = []
                sitesInfo.map(info => {
                    if(isEmptyArray(info.users)) { return; }
                    let _data = [];
                    info.users.map(user => {
                        user.site_name = info.name;
                        _data.push(user);
                    })
                    _girdData = _girdData.concat(_data);
                })
                this.dialogTableVisible = true;
                this.gridData = _girdData;
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