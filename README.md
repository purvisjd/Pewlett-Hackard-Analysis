# Pewlett Hackard Employee Retirement Analysis
##  Overview
Over the course of this particular bootcamp module, we were placed in the role of a data analyst for the fictional company, Pewlett Hackard.  The primary project that we were tasked with was creating a database of employees for the company and then identifying those employees who are becoming eligible for retirement.  Utilizing a series of SQL query statements executed on our database, we were to isolate the appropriate employees based on their age and date of hire.  It was quickly discovered just how unwieldy this level of information could be, so further analysis of the project was determined.  The general list of employees was further divided into separate departments where we could get a better idea of the total number of employees from each department as well as the specific title/role they performed.  Once the more manageable groups of data could be determined, were then tasked to two specific assignments:  determining the number of retiring emplyees per title so as to identify what roles/titles would need replacement and also identifying those employess that would be eligible to participate in the mentorship program for developing future employees.  

## Results of analysis:
###  Determining the number of employees retiring by title
For the first deliverable of this project, a Retirement Titles table was developed that would hold all titles of current employees who were born between 1/1/1952 and 12/31/1955, thereby indicating that they were of retirement age.  The table was designed so that only the employees most recent/current title would be accounted for.  From table, the following information was obtained:
*  There are a total of 90,398 employees eligible for retirement with the following categorical breakdown:
    *  Senior Engineer:  29,414
    *  Senior Staff:  28,254
    *  Engineer:  14,222
    *  Staff:  12,243
    *  Technique Leader:  4502
    *  Assistant engineer:  1761
    *  Manager:  2
*  significant hiring/promotion consideration will be necessary to replace senior/leadership positions
*  significant hiring will be necessary to fill a large number of technical/engineering positions due to retirement
### Determining employees eligible for mentorship program
*  there are 1,549 employees eligible to participate in the mentorship program; this will be a very valuable asset with regards to the number of employees that will need to be replaced.
*  there are 748 employees that fall within technical fields eligible for the mentorship program; this would put a ratio of approximately 61 to 1 for menorting replacements for technical fields.  Since some of the positions are more senior, what each individual can mentor on will not be equitable

##  Summary of analysis:
*  Based on the numbers determined in the retiree by title table, a total of 90,398 roles will need to be filled
*  There will be a significant strain for those that are eligible for the mentorship program with the technical fields alone facing a 61 to 1 ratio for preparing the next generation of employees
*  If promotion/advancement is largely impacted by time-in-service, a query could be performed on the remaining employees to see who may be eligible for advancement into the more senior level positions.  This could potentially reduce some of the strain on the mentorship as they could focus more on the lower level positions as opposed to trying to mentor senior level replacements.
*  Part of the impact of the "silver tsunami" is going to be a financial one.  An additional query could be run to assess the financial impact on the overall budget by determining how much in salaries can be accounted for by the retirement of the identified employees.  This information could then be used to determine future staffing, particularly salary considerations
