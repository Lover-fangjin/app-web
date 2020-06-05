 <template>
    <div class="login-wrap">
        <div class="form login">
            <div class="logo">
                <img :src="$project.logo">
                <span>{{$project.title}}</span>
            </div>
            <el-form :model="user" status-icon :rules="rules" ref="user" label-width="100px">
                <el-form-item prop="username">
                    <el-input size="small" type="input" v-model="user.username" autocomplete="off" placeholder="用户名/手机"></el-input>
                </el-form-item>
                <el-form-item prop="password">
                    <el-input size="small"  type="password" v-model="user.password" autocomplete="off"  placeholder="密码"></el-input>
                </el-form-item>

                <span class="login-wrap-content-from-forget"><el-checkbox v-model="remember">记住密码</el-checkbox></span>

                <el-form-item>
                    <el-button type="primary" size="small" @click="onLogin"> 提交 <i v-if="loginLoading" class="el-icon-loading" /></el-button>
                </el-form-item>
                <p style="text-align:center;color:rgba(255,255,255,0.7);width:100%;display:block;font-size:14px;margin-top:50px;">2020 v1.0</p>
            </el-form>
        </div>
    </div>
</template>

<script>
    import { debuglog } from 'util';
    import { goAngleView, earthRotation } from '@/util/common3d';
    export default {
        data() {

            var validatePass = (rule, value, callback) => {
                if (value === '') {
                        callback(new Error('请输入密码'));
                } else {
                    if (this.user.password !== '') {
                        this.$refs.user.validateField('checkPass');
                    }
                    callback();
                }
            };
            var validateUser = (rule, value, callback) => {
                if (value === '') {
                    callback(new Error('请输入用户名'));
                } else {
                    callback();
                }
            };

            return {
                user: {
                    username: 'admin',
                    password: '123456',
                },
                rules: {
                    username: [
                        { validator: validateUser, trigger: 'blur' }
                    ],
                    password: [
                        { validator: validatePass, trigger: 'blur' }
                    ]
                },
                remember: true,
                loginLoading: false,
            }
        },
        methods: {
            login(formName) {
                let me = this
                me.$refs[formName].validate((valid) => {
                    if (valid) {
                        me.$router.push('/duty')
                    } else {
                        console.log('error submit!!');
                        return false;
                    }
                });
            },
            onLogin () {
                let me = this;
                var loginParams = {username: me.user.username, password: me.user.password}
                me.$refs.user.validate((valid) => {
                    if (valid) {
                        me.loginLoading = true;
                        me.$api.login(loginParams).then(res =>{
                            me.loginLoading = false
                            // if(res.code === ''){
                            if(res.resultCode === 200){
                                // localStorage.setItem('isLogin', true)
                                // localStorage.setItem('projectName',res.data.sysuser.systemName)
                                // if(me.remember){
                                //     localStorage.setItem('user', JSON.stringify(loginParams)) 
                                // }else{
                                //     localStorage.removeItem('user')
                                //     sessionStorage.setItem('user', JSON.stringify(res.user))
                                // } 
                                // sessionStorage.setItem('token', res.data.token)
                                // localStorage.setItem('userid',res.data.sysuser.id)
                                
                                me.$message({message: '登录成功',type:'success', duration:config.duration})
                                sessionStorage.setItem('token',res.result.token)
                                me.$router.push('/duty')
                            }
                        }).catch(err => {
                            me.loginLoading = false
                            me.$message({message: err, type: 'error', duration:config.duration})
                        })
                    }
                })
            },
            clear(){
                $(document).unbind("keydown");
            }
        },
        mounted () {
            let me = this;
            // me.onLogin();
            var loginuser = localStorage.getItem('user');
            loginuser = JSON.parse(loginuser);
            if (loginuser !== null) {
                me.remember = true;
                me.user.username = loginuser.username;
                me.user.password = loginuser.password;
            }
             $(document).keydown((e) => {
                if (e.keyCode === 13) {
                    me.onLogin();
                }
            })
            me.$nextTick(()=>{

                earthRotation(viewer, 7000000);
                // let info = { ...config.startViewer.poisiton, ...config.startViewer.euler }
                // goAngleView(info);
                let info = { ...config.startViewer.poisiton, ...config.startViewer.euler }
                goAngleView(info);
            })
        },
        destroyed () {
            this.clear();
        }
    }
</script>

<style  lang="scss">
.login-wrap{
    width: 100%;
    height: 100%;
    position: absolute;
    background: rgba(37,32,32,0);
    z-index: 5;
    .login{
        // background: rgba(255,255,255,0.2);
        background: rgba(11,24,56,0.7);
        .el-form-item__content {
            margin-left: 0px !important;
        }
        .el-input__inner {
            background: #fff !important;
            color: #666 !important;
            height: 30px !important;
            text-align: left !important;
            border: 1px solid #ccc !important;
        }
    }

}

</style>


<style lang="scss" scoped>

.form {
  position: absolute;
  top: 45%;
  left: 48.5%;
  margin: -160px 0 0 -160px;
  width: 350px;
  height: 330px;
  padding: 40px 60px;
  box-shadow: 0 0 100px rgba(0, 0, 0, 0.08);
  border-radius: 5px;

  button {
    width: 100%;
    margin-top: 15px;
  }

  p {
    color: rgb(204, 204, 204);
    text-align: center;
    margin-top: 16px;
    font-size: 12px;
    display: flex;
    justify-content: space-between;
  }
}

.logo {
  text-align: center;
  cursor: pointer;
  margin-bottom: 24px;
  display: flex;
  justify-content: center;
  align-items: center;

  img {
    width: 40px;
    margin-right: 8px;
    background-color: cornflowerblue;
    border-radius: 30px;
  }

  span {
    vertical-align: text-bottom;
    font-size: 23px;
    text-transform: uppercase;
    display: inline-block;
    font-weight: 700;
    background-image: -webkit-gradient(linear, 37.219838% 34.532506%, 36.425669% 93.178216%, from(#29cdff), to(#0a60ff), color-stop(0.37, #148eff));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    
  }
}

.login-wrap-content-from-forget{
    display: block;
    margin: auto;
    height: 36px;
    color: #8492a6;
    font-size: 12px;
    text-align: left;
    .el-checkbox__label{
        color: #8492a6;
        font-size: 12px;
    }
}
</style>