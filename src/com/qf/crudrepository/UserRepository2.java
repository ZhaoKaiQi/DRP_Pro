package com.qf.crudrepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.qf.repository.User;

/**
 * @ClassName: UserRepository
 * @Description: 研究那个Repository这个类对应的子接口的研究,这个子类自己就提供了增删改查的方法
 * @author 赵凯琦
 * @date 2017-7-20 下午2:20:45
 * 
 */
public interface UserRepository2 extends CrudRepository<User, Integer>,
		PagingAndSortingRepository<User, Integer>, JpaRepository<User, Integer> {

}
