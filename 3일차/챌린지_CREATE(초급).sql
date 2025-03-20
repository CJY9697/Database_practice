 -- 데이터베이스 생성
 CREATE DATABASE practice_db;

 -- 데이버 베이스 사용
 USE practice_db;
 
 -- employees 테이블 생성
 CREATE TABLE employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
 );
 
 -- 직원 데이터 추가 
 INSERT INTO employees (name, position, salary) VALUES ('혜린', 'PM', 90000);
 INSERT INTO employees (name, position, salary) VALUES ('은우', 'Frontend', 80000);
 INSERT INTO employees (name, position, salary) VALUES ('가을', 'Backend', 92000);
 INSERT INTO employees (name, position, salary) VALUES ('지수', 'Frontend', 78000);
 INSERT INTO employees (name, position, salary) VALUES ('민혁', 'Frontend', 96000);
 INSERT INTO employees (name, position, salary) VALUES ('하온', 'Backend', 130000);
 
 -- 모든 직원의 이름과 연봉만 조회하는 쿼리alter
 SELECT name, salary FROM employees;
 
 -- Frontend 직원 중에 연봉 90000 이하 직원의 이름과 연봉 조회
 SELECT name, salary FROM employees WHERE position = 'Frontend' AND salary <= 90000;
 
 -- UPDATE가 안 돼서 Safe Update Mode 비활성화
 SET SQL_SAFE_UPDATES = 0;
 
 -- PM 직원의 연봉 10% 인상 후 결과 
 UPDATE employees SET salary = salary * 1.1 WHERE position = 'PM';
 SELECT * FROM employees WHERE position = 'PM';
 
 -- 모든 Backend 직원 연봉 5% 인상
 UPDATE employees SET salary = salary * 1.05 WHERE position = 'Backend';
 
 -- 민혁 사원 데이터 삭제
 DELETE FROM employees WHERE name = '민혁';
 
 -- 모든 직원 position 별로 그룹화하여 각 직책의 평균 연봉 계산
 SELECT position, 
 AVG(salary) AS avg_salary FROM employees GROUP BY position;
 
 -- employees 테이블 삭제
 DROP TABLE employees;
 