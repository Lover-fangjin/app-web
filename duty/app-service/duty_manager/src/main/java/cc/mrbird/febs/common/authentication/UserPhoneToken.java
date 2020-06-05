package cc.mrbird.febs.common.authentication;

import org.apache.shiro.authc.AuthenticationToken;

import java.io.Serializable;

/**
 * Created by Administrator on 2020/3/6.
 */
public class UserPhoneToken implements AuthenticationToken, Serializable {

    private static final long serialVersionUID = 8960804447446088496L;


    private String phone;
    private boolean rememberMe;
    private String host;

    public UserPhoneToken(String phone){
        this(phone,false,null);
    }


    public UserPhoneToken(String phone,boolean rememberMe){
        this(phone,rememberMe,null);
    }
    public UserPhoneToken(String phone,boolean rememberMe,String host){
        this.phone=phone;
        this.rememberMe=rememberMe;
        this.host=host;
    }
    public String getHost() {
        return host;
    }

    public boolean isRememberMe() {
        return rememberMe;
    }

    @Override
    public Object getPrincipal() {
        return phone;
    }

    @Override
    public Object getCredentials() {
        return phone;
    }


}
