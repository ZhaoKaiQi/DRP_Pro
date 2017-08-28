package com.qf.realm;

import java.util.ArrayList;

import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import com.qf.crudrepository.User;

/**
 * @ClassName: MyRealm
 * @Description: 自定义的realm
 * @author 赵凯琦
 * @date 2017-7-29 上午3:48:48
 */
public class MyRealm extends AuthorizingRealm {
	/**
	 * 用户授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		// 第一步：先获取用户名
		//String userName = (String) principals.getPrimaryPrincipal();
		// 通过用户名查询数据库，获取当前用户所拥有的权限
		// 下面是模拟
		List<String> pers = new ArrayList<>();
		pers.add("visite");
		pers.add("delete");
		pers.add("update");

		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		for (String per : pers) {
			info.addStringPermission(per);
		}
		return info;
	}

	/**
	 * 用户认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		// 获取用户的身份信息,也就是说运行到这里的时候，用户信息已经传到这儿了，获取用户名
		String userName = (String) token.getPrincipal();
		// 这个的认证流程和我们平时是不一样的，首先获取用户名，通过用户名到服务器去查找密码，如果没找到或不匹配，返回null，否则将数据封装返回
		// 接下来去服务器查找数据
		// 用户名不为空的时候需要自己判断
		if (userName == null || "".equals(userName)) {
			return null;
		}
		// 下面根据用户名到数据库查找用户信息并返回
		// 模拟查回来的数据
		User user = new User();
		user.setUserName("xiaoqiqi");
		user.setUserPwd("123");
		/*List<String> menus = user.getMenus();
		  menus.add("报表查看");
		  menus.add("修改报表");
		  menus.add("删除报表");
		  menus.add("增加报表");*/
		// 接下来要进行验证，对数据进行封装,第三个是用户昵称，没有 写null
		SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
				user, user.getUserPwd(), "小琦琦");
		return authenticationInfo;
	}

}
