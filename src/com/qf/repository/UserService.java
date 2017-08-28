package com.qf.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * �û���ҵ���߼����ʵ��
 * �����������Ҫע�� Repository�������
 * @ClassName: UserService 
 * @Description: TODO
 * @author С����
 * @date 2017-7-20 ����1:58:24 
 *
 */
@Service
public class UserService {
	@Autowired
	UserRepository userRepository=null;
    /**
     * ����
     * @Title: save 
     * @Description: TODO
     * @param @param uName
     * @param @param uPwd    
     * @return void     
     * @throws
     */
	@Transactional
	public void save(String userName,String userPwd){
		//����Ϳ��Ե������������
		userRepository.save(userName, userPwd);
	}
}
