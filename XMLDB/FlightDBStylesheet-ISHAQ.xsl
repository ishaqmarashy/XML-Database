<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Similar to indexing in SQL these statements retrieve respective indexs 
		of keys (EmployeeRef,DepartmentRef & EmployeeKey) -->
	<xsl:key name="EmployeeRef" match="//Employee"
		use="@Supervisor" />
	<xsl:key name="DepartmentRef" match="//Department" use="@Code" />
	<xsl:key name="EmployeeKey" match="//Employee" use="@ID" />
	<xsl:template match="/Airline">
		<html>
			<body>
				<h1>Employees</h1>
				<!-- Start of the table describing employees -->
				<table border="2">
					<tr bgcolor="00FFFF">
						<!-- Table column headers -->
						<th>ID</th>
						<th>Name</th>
						<th>DOB</th>
						<th>Nationality</th>
						<th>Supervisor</th>
						<th>DepartmentID</th>
						<th>Salary</th>
						<th>StartDate</th>
						<th>SSN</th>
					</tr>
					<!-- Iterates the Employee subnode of Airline -->
					<xsl:for-each select="//Employee">
						<tr>
							<td>
								<!-- retrieves the ID attribute of the employee -->
								<xsl:value-of select="@ID" />
							</td>
							<td>
								<!-- retrieves the first and last name elements of the employee and 
									concatinates them using a key(@ID from Employee) -->
								<xsl:value-of
									select="concat(key('EmployeeKey',@ID)/LastName,', ',key('EmployeeKey',@ID)/FirstName)" />
							</td>
							<td>
								<!-- retrieves the DateOfBirth element of the employee -->
								<xsl:value-of select="DateOfBirth" />
							</td>
							<td>
								<!-- retrieves the PassportNumber element of the employee -->
								<xsl:value-of select="PassportNumber" />
							</td>
							<td>
								<!-- retrieves the first and last name elements of the employees 
									supervisor and concatinates them using keys(@Supervisor and @ID from Employee) -->
								<xsl:value-of
									select="concat(key('EmployeeRef',@Supervisor)/LastName,', ',key('EmployeeRef',@Supervisor)/FirstName)" />
							</td>
							<td>
								<!-- retrieves the name elements of the employees department using 
									a key(@DepartmentID from Employee and @Code from Department) -->
								<xsl:value-of
									select="key('DepartmentRef',@DepartmentID)" />
							</td>
							<td>
								<!-- retrieves the Salary element of the employee -->
								<xsl:value-of select="Salary" />
							</td>
							<td>
								<!-- retrieves the StartDate element of the employee -->
								<xsl:value-of select="StartDate" />
							</td>
							<td>
								<!-- retrieves the SSN element of the employee -->
								<xsl:value-of select="SSN" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>


