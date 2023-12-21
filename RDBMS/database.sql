CREATE TABLE manager (
    mngr_id NUMBER(5) PRIMARY KEY,
    mngr_name VARCHAR2(250) NOT NULL
);
-- Creating Department Table
-- Creating Employees Table
CREATE TABLE employees (
    employee_id NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(250) NOT NULL,
    last_name VARCHAR2(250) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR2(210) NOT NULL,
    hire_date DATE NOT NULL,
    dept_id NUMBER(5) NOT NULL,
    job_title VARCHAR2(250) NOT NULL,
    mngr_id NUMBER(5) NOT NULL,
    salary FLOAT(10) NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id),
    FOREIGN KEY (mngr_id) REFERENCES manager(mngr_id)
    ON DELETE CASCADE
);
-- Creating Manager Table
-- Creating Leaves Table
CREATE TABLE leaves (
    leave_id NUMBER(5) PRIMARY KEY,
    employee_id NUMBER(5) NOT NULL,
    leave_start_date DATE NOT NULL,
    leave_end_date DATE NOT NULL,
    leave_type VARCHAR2(50) NOT NULL,
    leave_category VARCHAR2(50) NOT NULL,
    leave_status VARCHAR2(20) NOT NULL,
    mngr_id NUMBER(5) NOT NULL,
    applied_date TIMESTAMP NOT NULL,
    approved_date TIMESTAMP NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (mngr_id) REFERENCES manager(mngr_id)
    ON DELETE CASCADE
);
-- Creating Deductions Table
CREATE TABLE deductions (
    deduction_id NUMBER(5) PRIMARY KEY,
    employee_id NUMBER(5) NOT NULL,
    deduction_type VARCHAR2(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    deduction_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
    ON DELETE CASCADE
);

-- Creating Bonuses Table
CREATE TABLE bonuses (
    bonus_id NUMBER(5) PRIMARY KEY,
    employee_id NUMBER(5) NOT NULL,
    bonus_type VARCHAR2(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    bonus_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
    ON DELETE CASCADE
);

-- Creating Attendance Table
CREATE TABLE attendance (
    attendance_id NUMBER(5) PRIMARY KEY,
    employee_id NUMBER(5) NOT NULL,
    attendance_date DATE NOT NULL,
    entry_time TIMESTAMP NOT NULL,
    exit_time TIMESTAMP NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
    ON DELETE CASCADE
);
-- Creating SalaryComponents Table
CREATE TABLE salarycomponents (
    component_id NUMBER(5) PRIMARY KEY,
    basic_salary DECIMAL(10,2) NOT NULL,
    pf_percentage DECIMAL(5) NOT NULL,
    pt_percentage DECIMAL(5) NOT NULL,
    income_tax_percentage DECIMAL(5) NOT NULL,
    esi_percentage DECIMAL(5) NOT NULL,
    gratuity_percentage DECIMAL(5) NOT NULL
);
    

    