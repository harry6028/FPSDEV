--liquibase formatted sql

--changeset Haru:3
CREATE OR REPLACE PROCEDURE AddEmployee  
(  
    EmpId INOUT INT,  
    EmpName VARCHAR(100),  
    EmpDob DATE,  
    EmpCity VARCHAR(100),  
    EmpDesignation VARCHAR(100),  
    EmpJoiningDate DATE  
)  
LANGUAGE plpgsql AS  
$$  
BEGIN         
   INSERT INTO Employees (Name,DateOfBirth,City,Designation,JoiningDate) VALUES   
    (EmpName,  
     EmpDob,  
     EmpCity,  
     EmpDesignation,  
     EmpJoiningDate  
    ) RETURNING Id INTO EmpId;  
END  
$$;  

--rollback drop PROCEDURE AddEmployee;