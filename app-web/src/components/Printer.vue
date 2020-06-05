<template>
    <div>
        <el-button class="printer-btn" @click="print" type="primary" icon="el-icon-printer">print</el-button>

        <el-dialog :modal='false' title="print setting" :visible.sync="dialogFormVisible" width="40%">
        <el-form :model="form">
            <el-form-item label="print title" :label-width="formLabelWidth">
            <el-input v-model="form.title" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="title font size preview" :label-width="formLabelWidth">
            <el-input
                :disabled="true"
                v-bind:style="{fontSize:form.fontSize}"
                v-model="form.title"
                autocomplete="off"
            ></el-input>
            </el-form-item>
            <el-form-item label="title font size" :label-width="formLabelWidth">
            <el-select style="width:100%" v-model="form.fontSize" placeholder="font size">
                <el-option label="h1" value="32"></el-option>
                <el-option label="h2" value="24"></el-option>
                <el-option label="h3" value="18.72"></el-option>
                <el-option label="h4" value="16"></el-option>
                <el-option label="h5" value="13.28"></el-option>
                <el-option label="h6" value="12"></el-option>
            </el-select>
            </el-form-item>
            <el-form-item label="print width" :label-width="formLabelWidth">
            <el-input placeholder="unit px" v-model="form.width"></el-input>
            </el-form-item>
            <el-form-item label="print height" :label-width="formLabelWidth">
            <el-input placeholder="unit px" v-model="form.height"></el-input>
            </el-form-item>
            <el-form-item label="download print file" :label-width="formLabelWidth">
            <el-switch style="float: left;" v-model="form.downLoadEnable"></el-switch>
            </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
            <el-button @click="dialogFormVisible=false">cancel</el-button>
            <el-button type="primary" @click="printSetting">ok</el-button>
        </div>
        </el-dialog>
    </div>
</template>

<script>
    import CesiumPrint from "cesium-print";
    export default {
        data() {
            return {
                formLabelWidth: "120px",
                dialogFormVisible: false,
                form: {
                    fontSize: "32",
                    width: "978",
                    height: "650",
                    downLoadEnable: true //是否下载打印文件
                }
            };
        },
        methods: {
            printSetting() {
            if (!this.form.title) {
                this.$message({
                    message: "请填写标题",
                    type: "warning"
                });
                return;
            }
            if (!this.form.fontSize) {
                this.$message({
                    message: "请选择字体",
                    type: "warning"
                });
                return;
            }
            if (!this.form.width && this.form.height) {
                this.$message({
                    message: "请设置宽高（单位px）",
                    type: "warning"
                });
                return;
            }
            this.dialogFormVisible = false;
            this.resolve(this.form);
            },
            //打印事件
            print() {
                const self = this;
                // self.$notify({
                //     title: "",
                //     message: "现在你可以使用鼠标拖拽选取打印区域，松开后开始打印！Now you can use the mouse to drag and drop to select the print area, release it and start printing!",
                //     type: "success"
                // });
                let _confirmPromise = function() {
                    return new Promise((resolve, reject) => {
                        self.dialogFormVisible = true;
                        self.resolve = resolve;
                    });
                };
                //打印cesium canvas dom
                CesiumPrint.drawArea("cesiumCanvas", {
                    penColor: "yellow", //画笔颜色
                    strokeWidth: 1 //单位 px
                }).then(base64url => {
                    //自定义打印（设置纸张大小，打印标题）
                    //     高       宽
                    // A0：1189mm * 841mm
                    // A1：841mm * 594mm
                    // A2：594mm * 420mm
                    // A3：420mm * 297mm
                    // A4：297mm * 210mm
                    //  页边距： 0.75 inch
                    // A1: 23.39x33.11 inch
                    // 打印机DPI：300DPI
                    // 屏幕DPI  : 96DPI
                    // width　=　(23.39 - 0.75 * 2) * 96  = 2101 px
                    // height =  (33.11 - 0.75 * 2)* 96  = 3034 px
                    // A4: 8.27x11.69 inch
                    // 打印机DPI：300DPI
                    // 屏幕DPI  : 96DPI
                    // width　=　(8.27 - 0.75 * 2) * 96  = 650 px
                    // height =  (11.69 - 0.75 * 2)* 96  = 978 px
                    // 所以，当<table> 的width=650px, height=978px时，用IE 打印时，刚好能打印一页的A4纸．
                    // //a1横向打印尺寸
                    // var a1 = { width: "3034", height: "2101" };
                    // //a4横向打印尺寸
                    // var a4 = { width: "978", height: "650" };
                    _confirmPromise().then(options => {
                        // let printOptions = {
                        //   title: "打印标题(print title)",
                        //   width: a4.width,
                        //   height: a4.height,
                        //   fontSize: "30",
                        //   downLoadEnable: true //是否下载打印文件
                        // };
                        CesiumPrint.print(base64url, options);
                    });
                }).catch(error => {
                    console.error(error);
                });
            },
        }
    }
</script>

<style lang="scss" scoped>
.printer-btn {
    position: absolute;
    top: 90px;
    right: 10px;
    z-index: 99;
  }
</style>
<style lang="scss">
.v-modal{
    background: transparent !important;
}
</style>