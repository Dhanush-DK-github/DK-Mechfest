package com.acgcetmechfest.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.acgcetmechfest.entity.Registration;
import com.acgcetmechfest.entity.Student;

@Repository
@Transactional
public interface RegistrationRepository extends JpaRepository<Registration, Integer>{
	
//	@Query(value="ALTER TABLE registration AUTO_INCREMENT = 2024000", nativeQuery=true)
	@Modifying
	@Query(value="ALTER TABLE registration ALTER COLUMN registration_id  RESTART WITH 2024000", nativeQuery=true)
	void alterRegistrationIdValues();
	
//	@Query(value="ALTER TABLE student_details AUTO_INCREMENT = 100", nativeQuery=true)
	@Modifying
	@Query(value="ALTER TABLE student_details ALTER COLUMN student_detail_id  RESTART WITH 100", nativeQuery=true)
	void alterStudentDetailsIdValues();
	
	@Query("select s from Registration r join r.students s where r.type= :type and r.name = :name and s.emailId = :emailId and s.mobileNo = :mobileNo")
	Student findStudentByEmailAndMobileNo(@Param("type")String type, @Param("name")String name, @Param("emailId")String emailId, @Param("mobileNo")String mobileNo);

	@Query("select s from Registration r join r.students s where r.type= :type and r.name = :name and s.emailId = :emailId")
	Student findStudentByEmail(@Param("type")String type, @Param("name")String name, @Param("emailId")String emailId);

	@Query("select s from Registration r join r.students s where r.type= :type and r.name = :name and s.mobileNo = :mobileNo")
	Student findStudentByMobileNo(@Param("type")String type, @Param("name")String name, @Param("mobileNo")String mobileNo);
	
}
