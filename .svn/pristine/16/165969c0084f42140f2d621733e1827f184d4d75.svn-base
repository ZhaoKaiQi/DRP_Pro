package com.qf.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;


public interface UserRepository extends Repository<User, Integer> {
	// 下面是正常的常规查询方法，名字必须符合特定格式
	public List<User> findByUserName(String userName);

	public List<User> findByUserId(int userId);

	public List<User> findByUserNameAndUserId(String userName, int userId);

	public List<User> findByUserNameLike(String userName);

	public List<User> findByUserIdLessThan(int userId);

	// 下面是通过注解的方式查询数据，名字就可以随便写了（HQL：面向对象查询）
	@Query("select u from User u")
	public List<User> findAll();

	@Query("select u from User u where u.userId=?")
	public List<User> findUserByUserId(int userId);

	// 问好后面的数字表示第几个参数
	@Query("select u from User u where u.userId=?1")
	public List<User> findUserByUserId1(int userId);

	// 这个：后面的是给查询条件加个名字，下面的注解意思是把后面的值赋给userId，就是那个名字
	@Query("select u from User u where u.userId=:userId")
	public List<User> findUserByUserId2(@Param("userId") int userId);

	// 玩法1
	@Query("select u from User u where u.userName like ?")
	public List<User> findUserByName(String userName);

	// 玩法2：？后面的数字表示第几个参数
	@Query("select u from User u where u.userName like ?1")
	public List<User> findUserByName1(String userName);

	// 玩法3：这种方法在调用的时候就不要%了
	@Query("select u from User u where u.userName like concat('%',?,'%')")
	public List<User> findUserByName2(String userName);

	// 玩法4：？后面的数字表示第几个参数，这种方法在调用的时候就不要%了
	@Query("select u from User u where u.userName like %?1%")
	public List<User> findUserByName3(String userName);

	// 玩法5：这个：后面的是给查询条件加个名字，下面的注解意思是把后面的值赋给userId，就是那个名字
	@Query("select u from User u where u.userName like %:userName%")
	public List<User> findUserByName4(@Param("userName") String userName);

	// 下面是本地SQL
	@Query(nativeQuery = true, value = "select * from user")
	public List<User> getAll();

	@Query(value = "select u from User u where u.userId=?1 and u.userName=?2")
	public List<User> getUserByIdAndName(int userId, String userName);

	// 这个注解是插入语句的注解
	// 查询的时候只用到读的事务，而插入需要写的事务，所以这个地方只有这个是不行的，还要有个service层来添加事务，才可以调用，具体操作见UserService
	@Modifying
	@Query(value = "insert into user(userName,userPwd) values(?1,?2)", nativeQuery = true)
	public void save(String userName, String userPwd);

}
