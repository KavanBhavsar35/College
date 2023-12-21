-- TRUNCATE TABLE manager;
-- TRUNCATE TABLE department;
-- TRUNCATE TABLE deductions;
-- TRUNCATE TABLE bonuses;
-- TRUNCATE TABLE attendance;
-- TRUNCATE TABLE salarycomponents;
-- TRUNCATE TABLE employees;

-- -- manager data - works 
INSERT INTO manager (mngr_id, mngr_name) VALUES (1, 'John Doe');
INSERT INTO manager (mngr_id, mngr_name) VALUES (2, 'Jane Smith');
INSERT INTO manager (mngr_id, mngr_name) VALUES (3, 'Alice Johnson');
INSERT INTO manager (mngr_id, mngr_name) VALUES (4, 'Bob Williams');
INSERT INTO manager (mngr_id, mngr_name) VALUES (5, 'Eva Davis');
INSERT INTO manager (mngr_id, mngr_name) VALUES (6, 'Michael Brown');
INSERT INTO manager (mngr_id, mngr_name) VALUES (7, 'Sophie Miller');


-- -- departments data - work 
INSERT INTO department (dept_id, dept_name, mngr_id) VALUES (101, 'HR Department', 1);
INSERT INTO department (dept_id, dept_name, mngr_id) VALUES (102, 'IT Department', 2);
INSERT INTO department (dept_id, dept_name, mngr_id) VALUES (103, 'Finance Department', 3);
INSERT INTO department (dept_id, dept_name, mngr_id) VALUES (104, 'Marketing Department', 4);
INSERT INTO department (dept_id, dept_name, mngr_id) VALUES (105, 'Operations Department', 5);
INSERT INTO department (dept_id, dept_name, mngr_id) VALUES (106, 'Research and Development', 6);
INSERT INTO department (dept_id, dept_name, mngr_id) VALUES (107, 'Customer Service', 7);

-- employee - works
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1001, 'John', 'Doe', TO_DATE('1980-05-15', 'YYYY-MM-DD'), 'Male', TO_DATE('2020-01-10', 'YYYY-MM-DD'), 101, 'HR Manager', 1, 60000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1002, 'Jane', 'Smith', TO_DATE('1985-08-22', 'YYYY-MM-DD'), 'Female', TO_DATE('2019-03-18', 'YYYY-MM-DD'), 102, 'Software Engineer', 2, 75000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1003, 'Alice', 'Johnson', TO_DATE('1990-01-30', 'YYYY-MM-DD'), 'Female', TO_DATE('2021-02-05', 'YYYY-MM-DD'), 103, 'Financial Analyst', 3, 80000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1004, 'Bob', 'Williams', TO_DATE('1982-11-10', 'YYYY-MM-DD'), 'Male', TO_DATE('2020-07-12', 'YYYY-MM-DD'), 104, 'Marketing Specialist', 4, 70000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1005, 'Eva', 'Davis', TO_DATE('1987-04-25', 'YYYY-MM-DD'), 'Female', TO_DATE('2018-09-03', 'YYYY-MM-DD'), 105, 'Operations Manager', 5, 90000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1006, 'Michael', 'Brown', TO_DATE('1988-07-18', 'YYYY-MM-DD'), 'Male', TO_DATE('2020-11-28', 'YYYY-MM-DD'), 106, 'Research Scientist', 6, 85000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1007, 'Sophie', 'Miller', TO_DATE('1995-03-05', 'YYYY-MM-DD'), 'Female', TO_DATE('2019-06-15', 'YYYY-MM-DD'), 107, 'Customer Service Representative', 7, 65000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1008, 'Rajesh', 'Kumar', TO_DATE('1984-09-12', 'YYYY-MM-DD'), 'Male', TO_DATE('2017-12-20', 'YYYY-MM-DD'), 101, 'HR Specialist', 1, 55000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1009, 'Anjali', 'Sharma', TO_DATE('1989-06-08', 'YYYY-MM-DD'), 'Female', TO_DATE('2019-08-14', 'YYYY-MM-DD'), 102, 'Software Developer', 2, 80000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1010, 'Vikram', 'Singh', TO_DATE('1992-02-18', 'YYYY-MM-DD'), 'Male', TO_DATE('2021-01-25', 'YYYY-MM-DD'), 103, 'Senior Accountant', 3, 75000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1011, 'Aishwarya', 'Patel', TO_DATE('1986-12-04', 'YYYY-MM-DD'), 'Female', TO_DATE('2020-05-08', 'YYYY-MM-DD'), 104, 'Marketing Manager', 4, 90000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1012, 'Rahul', 'Sharma', TO_DATE('1983-10-20', 'YYYY-MM-DD'), 'Male', TO_DATE('2018-11-15', 'YYYY-MM-DD'), 105, 'Operations Analyst', 5, 70000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1013, 'Priya', 'Verma', TO_DATE('1991-07-28', 'YYYY-MM-DD'), 'Female', TO_DATE('2019-04-02', 'YYYY-MM-DD'), 106, 'Research Assistant', 6, 60000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1014, 'Arjun', 'Rao', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 'Male', TO_DATE('2020-02-12', 'YYYY-MM-DD'), 107, 'Customer Support Specialist', 7, 65000);
INSERT INTO employees (employee_id, first_name, last_name, date_of_birth, gender, hire_date, dept_id, job_title, mngr_id, salary) VALUES(1015, 'Neha', 'Gupta', TO_DATE('1987-11-30', 'YYYY-MM-DD'), 'Female', TO_DATE('2018-07-22', 'YYYY-MM-DD'), 101, 'HR Coordinator', 1, 50000);


-- -- Leaves table 

INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2001, 1001, TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-01-18', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Approved',1,TO_DATE('2022-12-28', 'YYYY-MM-DD'), TO_DATE('2023-01-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2002, 1002, TO_DATE('2023-02-10', 'YYYY-MM-DD'), TO_DATE('2023-02-15', 'YYYY-MM-DD'),'Sick Leave', 'Medical', 'Pending',2,TO_DATE('2023-01-25', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2003, 1003, TO_DATE('2023-03-05', 'YYYY-MM-DD'), TO_DATE('2023-03-10', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Approved',3,TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-02-28', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2004, 1004, TO_DATE('2023-04-12', 'YYYY-MM-DD'), TO_DATE('2023-04-15', 'YYYY-MM-DD'),'Maternity Leave', 'Family', 'Pending',4,TO_DATE('2023-03-28', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2005, 1005, TO_DATE('2023-05-20', 'YYYY-MM-DD'), TO_DATE('2023-05-25', 'YYYY-MM-DD'),'Business Trip', 'Work-related', 'Approved',5,TO_DATE('2023-04-28', 'YYYY-MM-DD'), TO_DATE('2023-05-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2006, 1006, TO_DATE('2023-06-08', 'YYYY-MM-DD'), TO_DATE('2023-06-12', 'YYYY-MM-DD'),'Sick Leave', 'Medical', 'Rejected',6,TO_DATE('2023-05-25', 'YYYY-MM-DD'), TO_DATE('2023-06-01', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2007, 1007, TO_DATE('2023-07-15', 'YYYY-MM-DD'), TO_DATE('2023-07-20', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Pending',7,TO_DATE('2023-06-28', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2008, 1008, TO_DATE('2023-08-02', 'YYYY-MM-DD'), TO_DATE('2023-08-05', 'YYYY-MM-DD'),'Maternity Leave', 'Family', 'Approved',1,TO_DATE('2023-07-20', 'YYYY-MM-DD'), TO_DATE('2023-07-28', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2009, 1009, TO_DATE('2023-09-10', 'YYYY-MM-DD'), TO_DATE('2023-09-15', 'YYYY-MM-DD'),'Business Trip', 'Work-related', 'Pending',2,TO_DATE('2023-08-28', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2010, 1010, TO_DATE('2023-10-18', 'YYYY-MM-DD'), TO_DATE('2023-10-22', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Approved',3,TO_DATE('2023-09-28', 'YYYY-MM-DD'), TO_DATE('2023-10-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2011, 1011, TO_DATE('2023-11-25', 'YYYY-MM-DD'), TO_DATE('2023-11-30', 'YYYY-MM-DD'),'Sick Leave', 'Medical', 'Pending',4,TO_DATE('2023-11-10', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2012, 1012, TO_DATE('2023-12-05', 'YYYY-MM-DD'), TO_DATE('2023-12-08', 'YYYY-MM-DD'),'Business Trip', 'Work-related', 'Approved',5,TO_DATE('2023-11-20', 'YYYY-MM-DD'), TO_DATE('2023-11-28', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2013, 1013, TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-01-18', 'YYYY-MM-DD'),'Maternity Leave', 'Family', 'Rejected',6,TO_DATE('2023-12-28', 'YYYY-MM-DD'), TO_DATE('2024-01-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2014, 1014, TO_DATE('2024-02-10', 'YYYY-MM-DD'), TO_DATE('2024-02-15', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Pending',7,TO_DATE('2024-01-25', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2015, 1015, TO_DATE('2024-03-05', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'),'Business Trip', 'Work-related', 'Approved',1,TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-02-28', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2016, 1001, TO_DATE('2024-04-12', 'YYYY-MM-DD'), TO_DATE('2024-04-15', 'YYYY-MM-DD'),'Sick Leave', 'Medical', 'Pending',2,TO_DATE('2024-03-28', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2017, 1002, TO_DATE('2024-05-20', 'YYYY-MM-DD'), TO_DATE('2024-05-25', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Rejected',3,TO_DATE('2024-04-28', 'YYYY-MM-DD'), TO_DATE('2024-05-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2018, 1003, TO_DATE('2024-06-08', 'YYYY-MM-DD'), TO_DATE('2024-06-12', 'YYYY-MM-DD'),'Business Trip', 'Work-related', 'Approved',4,TO_DATE('2024-05-25', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2019, 1004, TO_DATE('2024-07-15', 'YYYY-MM-DD'), TO_DATE('2024-07-20', 'YYYY-MM-DD'),'Maternity Leave', 'Family', 'Pending',5,TO_DATE('2024-06-28', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2020, 1005, TO_DATE('2024-08-02', 'YYYY-MM-DD'), TO_DATE('2024-08-05', 'YYYY-MM-DD'),'Sick Leave', 'Medical', 'Approved',6,TO_DATE('2024-07-20', 'YYYY-MM-DD'), TO_DATE('2024-07-28', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2021, 1006, TO_DATE('2024-09-10', 'YYYY-MM-DD'), TO_DATE('2024-09-15', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Pending',7,TO_DATE('2024-08-28', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2022, 1007, TO_DATE('2024-10-18', 'YYYY-MM-DD'), TO_DATE('2024-10-22', 'YYYY-MM-DD'),'Business Trip', 'Work-related', 'Rejected',1,TO_DATE('2024-09-28', 'YYYY-MM-DD'), TO_DATE('2024-10-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2023, 1008, TO_DATE('2024-11-25', 'YYYY-MM-DD'), TO_DATE('2024-11-30', 'YYYY-MM-DD'),'Maternity Leave', 'Family', 'Approved',2,TO_DATE('2024-11-10', 'YYYY-MM-DD'), TO_DATE('2024-11-18', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2024, 1009, TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_DATE('2024-12-08', 'YYYY-MM-DD'),'Sick Leave', 'Medical', 'Pending',3,TO_DATE('2024-11-20', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2025, 1010, TO_DATE('2025-01-15', 'YYYY-MM-DD'), TO_DATE('2025-01-18', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Approved',4,TO_DATE('2024-12-28', 'YYYY-MM-DD'), TO_DATE('2025-01-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2026, 1011, TO_DATE('2025-02-10', 'YYYY-MM-DD'), TO_DATE('2025-02-15', 'YYYY-MM-DD'),'Business Trip', 'Work-related', 'Pending',5,TO_DATE('2025-01-25', 'YYYY-MM-DD'), NULL);
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2027, 1012, TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2025-03-10', 'YYYY-MM-DD'),'Maternity Leave', 'Family', 'Approved',6,TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2025-02-28', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2028, 1013, TO_DATE('2025-04-12', 'YYYY-MM-DD'), TO_DATE('2025-04-15', 'YYYY-MM-DD'),'Vacation', 'Personal', 'Rejected',7,TO_DATE('2025-03-28', 'YYYY-MM-DD'), TO_DATE('2025-04-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2029, 1014, TO_DATE('2025-05-20', 'YYYY-MM-DD'), TO_DATE('2025-05-25', 'YYYY-MM-DD'),'Sick Leave', 'Medical', 'Approved',1,TO_DATE('2025-04-28', 'YYYY-MM-DD'), TO_DATE('2025-05-05', 'YYYY-MM-DD'));
INSERT INTO leaves (leave_id, employee_id, leave_start_date, leave_end_date, leave_type, leave_category, leave_status, mngr_id, applied_date, approved_date) VALUES(2030, 1015, TO_DATE('2025-06-08', 'YYYY-MM-DD'), TO_DATE('2025-06-12', 'YYYY-MM-DD'),'Business Trip', 'Work-related', 'Pending',2,TO_DATE('2025-05-25', 'YYYY-MM-DD'), NULL);

-- -- Inserting data into the deductions table
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (201, 1001, 'Health Insurance', 150.00, TO_DATE('2023-01-15', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (202, 1001, '401(k) Contribution', 200.50, TO_DATE('2023-02-20', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (203, 1005, 'Tax Withholding', 300.75, TO_DATE('2023-03-10', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (204, 1003, 'Union Dues', 50.00, TO_DATE('2023-04-05', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (205, 1006, 'Pension Contribution', 180.25, TO_DATE('2023-05-12', 'YYYY-MM-DD'));
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (206, 1007, 'Education Expenses', 120.00, TO_DATE('2023-06-22', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (207, 1008, 'Garnishments', 75.50, TO_DATE('2023-07-18', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (208, 1010, 'Health Savings Account', 250.75, TO_DATE('2023-08-30', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (209, 1011, 'Charitable Contributions', 30.00, TO_DATE('2023-09-12', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (210, 1012, 'Child Support', 100.25, TO_DATE('2023-10-05', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (211, 1011, 'Employee Stock Purchase Plan', 180.00, TO_DATE('2023-11-08', 'YYYY-MM-DD'));e
INSERT INTO deductions (deduction_id, employee_id, deduction_type, amount, deduction_date) VALUES (212, 1012, 'Dependent Care FSA', 90.50, TO_DATE('2023-12-20', 'YYYY-MM-DD'));


-- -- Inserting data into the bonuses table
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (301, 1001, 'Performance Bonus', 500.00, TO_DATE('2023-01-15', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (302, 1002, 'Holiday Bonus', 300.50, TO_DATE('2023-02-22', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (303, 1003, 'Sales Incentive', 750.00, TO_DATE('2023-03-10', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (304, 1004, 'Year-End Bonus', 600.25, TO_DATE('2023-04-18', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (305, 1005, 'Spot Award', 200.00, TO_DATE('2023-05-05', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (306, 1006, 'Project Completion Bonus', 450.75, TO_DATE('2023-06-12', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (307, 1007, 'Employee of the Month', 350.00, TO_DATE('2023-07-25', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (308, 1008, 'Innovation Bonus', 800.50, TO_DATE('2023-08-30', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES 309, 1009, 'Training Completion Bonus', 150.00, TO_DATE('2023-09-15', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (310, 1010, 'Team Collaboration Bonus', 400.25, TO_DATE('2023-10-22', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (311, 1011, 'Special Achievement Bonus', 700.00, TO_DATE('2023-11-08', 'YYYY-MM-DD'));e
INSERT INTO bonuses (bonus_id, employee_id, bonus_type, amount, bonus_date) VALUES (312, 1012, 'Leadership Bonus', 550.50, TO_DATE('2023-12-20', 'YYYY-MM-DD'));



INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (401, 1001, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (402, 1002, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-01-01 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-01 17:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (403, 1001, TO_DATE('2023-01-02', 'YYYY-MM-DD'), TO_DATE('2023-01-02 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-02 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (404, 1003, TO_DATE('2023-01-02', 'YYYY-MM-DD'), TO_DATE('2023-01-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-02 17:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (405, 1002, TO_DATE('2023-01-03', 'YYYY-MM-DD'), TO_DATE('2023-01-03 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-03 17:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (406, 1003, TO_DATE('2023-01-04', 'YYYY-MM-DD'), TO_DATE('2023-01-04 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-04 18:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (407, 1004, TO_DATE('2023-01-04', 'YYYY-MM-DD'), TO_DATE('2023-01-04 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-04 17:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (408, 1005, TO_DATE('2023-01-04', 'YYYY-MM-DD'), TO_DATE('2023-01-04 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-04 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (409, 1012, TO_DATE('2023-01-04', 'YYYY-MM-DD'), TO_DATE('2023-01-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-04 17:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (410, 1001, TO_DATE('2023-01-04', 'YYYY-MM-DD'), TO_DATE('2023-01-04 09:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-04 17:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (411, 1004, TO_DATE('2023-01-05', 'YYYY-MM-DD'), TO_DATE('2023-01-05 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-05 18:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (412, 1005, TO_DATE('2023-01-05', 'YYYY-MM-DD'), TO_DATE('2023-01-05 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-05 17:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (413, 1006, TO_DATE('2023-01-05', 'YYYY-MM-DD'), TO_DATE('2023-01-05 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-05 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO attendance (attendance_id, employee_id, attendance_date, entry_time, exit_time) VALUES (414, 1007, TO_DATE('2023-01-05', 'YYYY-MM-DD'), TO_DATE('2023-01-05 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2023-01-05 17:45:00', 'YYYY-MM-DD HH24:MI:SS'));


-- -- Inserting data into the salarycomponents table
INSERT INTO salarycomponents (component_id, basic_salary, pf_percentage, pt_percentage, income_tax_percentage, esi_percentage, gratuity_percentage)
VALUES (1, 50000.00, 12.5, 1.5, 10.0, 3.0, 8.0);
