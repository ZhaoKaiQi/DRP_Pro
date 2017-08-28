package com.qf.crudrepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.qf.repository.User;

/**
 * @ClassName: UserRepository
 * @Description: �о��Ǹ�Repository������Ӧ���ӽӿڵ��о�,��������Լ����ṩ����ɾ�Ĳ�ķ���
 * @author �Կ���
 * @date 2017-7-20 ����2:20:45
 * 
 */
public interface UserRepository2 extends CrudRepository<User, Integer>,
		PagingAndSortingRepository<User, Integer>, JpaRepository<User, Integer> {

}
