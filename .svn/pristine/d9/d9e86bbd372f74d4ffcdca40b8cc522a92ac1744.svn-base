package com.qf.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * 用户的业务逻辑层的实现
 * 这个类里面需要注入 Repository这个对象
 * @ClassName: UserService 
 * @Description: TODO
 * @author 小波波
 * @date 2017-7-20 下午1:58:24 
 *
 */
@Service
public class UserService {
	@Autowired
	UserRepository userRepository=null;
    /**
     * 保存
     * @Title: save 
     * @Description: TODO
     * @param @param uName
     * @param @param uPwd    
     * @return void     
     * @throws
     */
	@Transactional
	public void save(String userName,String userPwd){
		//这里就可以调用这个方法了
		userRepository.save(userName, userPwd);
	}
}
