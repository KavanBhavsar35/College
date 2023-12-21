set serveroutput on;
DECLARE
   v_employee_id NUMBER := &v_employee_id; -- Replace with an actual employee ID
   v_manager_id NUMBER := &v_manager_id;    -- Replace with an actual manager ID

   -- Cursor for employee information
   CURSOR emp_info_cur IS
      SELECT e.employee_id, e.first_name, e.last_name, d.dept_name
      FROM employees e
      JOIN department d ON e.dept_id = d.dept_id
      WHERE e.employee_id = v_employee_id;

   -- Cursor for approved leaves
   CURSOR approved_leaves_cur IS
      SELECT leave_id, leave_start_date, leave_end_date, leave_type, leave_category
      FROM leaves
      WHERE employee_id = v_employee_id AND leave_status = 'Approved';

   -- Cursor for attendance details
   CURSOR attendance_cur IS
      SELECT attendance_date, entry_time, exit_time
      FROM attendance
      WHERE employee_id = v_employee_id;

BEGIN
   -- Retrieve and print employee information
   FOR emp_info_rec IN emp_info_cur
   LOOP
      DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_info_rec.employee_id);
      DBMS_OUTPUT.PUT_LINE('First Name: ' || emp_info_rec.first_name);
      DBMS_OUTPUT.PUT_LINE('Last Name: ' || emp_info_rec.last_name);
      DBMS_OUTPUT.PUT_LINE('Department: ' || emp_info_rec.dept_name);
   END LOOP;

   -- Retrieve and print approved leaves
   FOR leaves_rec IN approved_leaves_cur
   LOOP
      DBMS_OUTPUT.PUT_LINE('Leave ID: ' || leaves_rec.leave_id);
      DBMS_OUTPUT.PUT_LINE('Start Date: ' || TO_CHAR(leaves_rec.leave_start_date, 'YYYY-MM-DD'));
      DBMS_OUTPUT.PUT_LINE('End Date: ' || TO_CHAR(leaves_rec.leave_end_date, 'YYYY-MM-DD'));
      DBMS_OUTPUT.PUT_LINE('Leave Type: ' || leaves_rec.leave_type);
      DBMS_OUTPUT.PUT_LINE('Leave Category: ' || leaves_rec.leave_category);
   END LOOP;

   -- Retrieve and print attendance details
   FOR attendance_rec IN attendance_cur
   LOOP
      DBMS_OUTPUT.PUT_LINE('Attendance Date: ' || TO_CHAR(attendance_rec.attendance_date, 'YYYY-MM-DD'));
      DBMS_OUTPUT.PUT_LINE('Entry Time: ' || TO_CHAR(attendance_rec.entry_time, 'HH24:MI:SS'));
      DBMS_OUTPUT.PUT_LINE('Exit Time: ' || TO_CHAR(attendance_rec.exit_time, 'HH24:MI:SS'));
   END LOOP;
END;
/
