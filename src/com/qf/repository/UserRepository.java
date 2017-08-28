package com.qf.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;


public interface UserRepository extends Repository<User, Integer> {
	// �����������ĳ����ѯ���������ֱ�������ض���ʽ
	public List<User> findByUserName(String userName);

	public List<User> findByUserId(int userId);

	public List<User> findByUserNameAndUserId(String userName, int userId);

	public List<User> findByUserNameLike(String userName);

	public List<User> findByUserIdLessThan(int userId);

	// ������ͨ��ע��ķ�ʽ��ѯ���ݣ����־Ϳ������д�ˣ�HQL����������ѯ��
	@Query("select u from User u")
	public List<User> findAll();

	@Query("select u from User u where u.userId=?")
	public List<User> findUserByUserId(int userId);

	// �ʺú�������ֱ�ʾ�ڼ�������
	@Query("select u from User u where u.userId=?1")
	public List<User> findUserByUserId1(int userId);

	// �����������Ǹ���ѯ�����Ӹ����֣������ע����˼�ǰѺ����ֵ����userId�������Ǹ�����
	@Query("select u from User u where u.userId=:userId")
	public List<User> findUserByUserId2(@Param("userId") int userId);

	// �淨1
	@Query("select u from User u where u.userName like ?")
	public List<User> findUserByName(String userName);

	// �淨2������������ֱ�ʾ�ڼ�������
	@Query("select u from User u where u.userName like ?1")
	public List<User> findUserByName1(String userName);

	// �淨3�����ַ����ڵ��õ�ʱ��Ͳ�Ҫ%��
	@Query("select u from User u where u.userName like concat('%',?,'%')")
	public List<User> findUserByName2(String userName);

	// �淨4������������ֱ�ʾ�ڼ������������ַ����ڵ��õ�ʱ��Ͳ�Ҫ%��
	@Query("select u from User u where u.userName like %?1%")
	public List<User> findUserByName3(String userName);

	// �淨5�������������Ǹ���ѯ�����Ӹ����֣������ע����˼�ǰѺ����ֵ����userId�������Ǹ�����
	@Query("select u from User u where u.userName like %:userName%")
	public List<User> findUserByName4(@Param("userName") String userName);

	// �����Ǳ���SQL
	@Query(nativeQuery = true, value = "select * from user")
	public List<User> getAll();

	@Query(value = "select u from User u where u.userId=?1 and u.userName=?2")
	public List<User> getUserByIdAndName(int userId, String userName);

	// ���ע���ǲ�������ע��
	// ��ѯ��ʱ��ֻ�õ��������񣬶�������Ҫд��������������ط�ֻ������ǲ��еģ���Ҫ�и�service����������񣬲ſ��Ե��ã����������UserService
	@Modifying
	@Query(value = "insert into user(userName,userPwd) values(?1,?2)", nativeQuery = true)
	public void save(String userName, String userPwd);

}
