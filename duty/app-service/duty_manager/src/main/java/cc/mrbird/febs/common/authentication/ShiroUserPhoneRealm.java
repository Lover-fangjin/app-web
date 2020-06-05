package cc.mrbird.febs.common.authentication;

import cc.mrbird.febs.system.entity.Menu;
import cc.mrbird.febs.system.entity.Role;
import cc.mrbird.febs.system.entity.User;
import cc.mrbird.febs.system.service.IMenuService;
import cc.mrbird.febs.system.service.IRoleService;
import cc.mrbird.febs.system.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.AllowAllCredentialsMatcher;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Created by Administrator on 2020/3/6.
 */
@Component
public class ShiroUserPhoneRealm extends AuthorizingRealm {

    public static final String REALM_NAME = "user_phone_realm";

    @Autowired
    private IUserService userService;
    @Autowired
    private IRoleService roleService;
    @Autowired
    private IMenuService menuService;

    @Override
    public String getName() {
        return REALM_NAME;
    }

    @Override
    public void setCredentialsMatcher(CredentialsMatcher credentialsMatcher) {
        //这儿的CredentialsMatcher的new的对象必须是AllowAllCredentialsMatcher
        CredentialsMatcher matcher = new AllowAllCredentialsMatcher();
        super.setCredentialsMatcher(matcher);
    }
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        String userName = user.getUsername();

        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();

        // 获取用户角色集
        List<Role> roleList = this.roleService.findUserRole(userName);
        Set<String> roleSet = roleList.stream().map(Role::getRoleName).collect(Collectors.toSet());
        simpleAuthorizationInfo.setRoles(roleSet);

        // 获取用户权限集
        List<Menu> permissionList = this.menuService.findUserPermissions(userName);
        Set<String> permissionSet = permissionList.stream().map(Menu::getPerms).collect(Collectors.toSet());
        simpleAuthorizationInfo.setStringPermissions(permissionSet);
        return simpleAuthorizationInfo;
    }
    /**
     * 通过此方法完成认证数据的获取及封装，系统底层会将认证数据传递认证管理器，有认证管理器完成认证操作
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UserPhoneToken token = (UserPhoneToken) authenticationToken;
        //获取controller传过来的数据
        String phone = (String) token.getPrincipal();
        //去数据库根据手机号查询用户信息
        User user = this.userService.findByName(phone);

        //比对手机号
        if (user == null)
            throw new UnknownAccountException("账号未注册！");
        if (User.STATUS_LOCK.equals(user.getStatus()))
            throw new LockedAccountException("账号已被锁定,请联系管理员！");

        return new SimpleAuthenticationInfo(user, phone, getName());
    }

    @Override
    public boolean supports(AuthenticationToken var1){
        return var1 instanceof UserPhoneToken;
    }
}
