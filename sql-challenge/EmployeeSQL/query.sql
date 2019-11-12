select * from  "Departments"
select * from  "Dept_Emp"
select * from  "Dept_Manager"
select * from  "Employees"
--where "Employee_No" = '499942'
select * from  "Salaries"
--where "Employee_No" = '499942'
select * from  "Titles"

-- List the following details of each employee: employee number, last name, first name, gender, and salary.
select e."Employee_No", e."Last_Name", e."First_Name", e."Gender", s."Salary"
from "Employees" as e
join "Salaries" as s on e."Employee_No" = s."Employee_No"

-- List employees who were hired in 1986.
select * from "Employees" 
where "Hire_Date" >= '1986-01-01' and "Hire_Date" <= '1986-12-31'
-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select m."Department_No", d."Department_Name", m."Employee_No", e."Last_Name", e."First_Name", m."From_Date", m."To_Date"
from "Dept_Manager" as m
join "Departments" as d on m."Department_No" = d."Department_No"
join "Employees" as e on m."Employee_No" = e."Employee_No"

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select de."Employee_No", e."Last_Name", e."First_Name", d."Department_Name"
from "Dept_Emp" as de
join "Departments" as d on de."Department_No" = d."Department_No"
join "Employees" as e on de."Employee_No" = e."Employee_No"

-- List all employees whose first name is "Hercules" and last names begin with "B."
select * from  "Employees"
where "First_Name" = 'Hercules' and "Last_Name" like 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select de."Employee_No", e."Last_Name", e."First_Name", d."Department_Name"
from "Dept_Emp" as de
join "Departments" as d on de."Department_No" = d."Department_No"
join "Employees" as e on de."Employee_No" = e."Employee_No"
where d."Department_Name" = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de."Employee_No", e."Last_Name", e."First_Name", d."Department_Name"
from "Dept_Emp" as de
join "Departments" as d on de."Department_No" = d."Department_No"
join "Employees" as e on de."Employee_No" = e."Employee_No"
where d."Department_Name" = 'Sales' or d."Department_Name" = 'Development' 
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select "Last_Name", count("First_Name") as "Count of Same Last Name" from "Employees"
group by "Last_Name"
order by "Count of Same Last Name" desc