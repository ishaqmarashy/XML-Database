<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/Airline">
		<html>
			<body>
				<h1>Persons</h1>
				<table border="2">
					<tr bgcolor="00FFFF">
						<th>ID</th>
						<th>Name</th>
						<th>DOB</th>
						<th>Nationality</th>
						<th>Supervisor</th>
						<th>DepartmentID</th>
						<th>Salary</th>
						<th>StartDate</th>
						<th>SSN</th>
						<th>CertificateNumber</th>
						<th>DateOfIssue</th>
					</tr>
					<xsl:for-each select="Passenger">
						<tr>
							<td>
								<xsl:value-of select="@ID" />
							</td>
							<td>
								<xsl:value-of select="FirstName" />
								,
								<xsl:value-of select="LastName" />
							</td>
							<td>
								<xsl:value-of select="DateOfBirth" />
							</td>
							<td>
								<xsl:value-of select="PassportNumber" />
							</td>
						</tr>

					</xsl:for-each>
					<tr bgcolor="00FFFF">
						<th> Employees  </th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<xsl:for-each select="Employee">
						<tr>
							<td>
								<xsl:value-of select="@ID" />
							</td>
							<td>
								<xsl:value-of select="FirstName" />
								,
								<xsl:value-of select="LastName" />
							</td>
							<td>
								<xsl:value-of select="DateOfBirth" />
							</td>
							<td>
								<xsl:value-of select="PassportNumber" />
							</td>
							<td>
								<xsl:value-of select="@Supervisor" />
							</td>
							<td>
								<xsl:value-of select="@DepartmentID" />
							</td>
							<td>
								<xsl:value-of select="Salary" />
							</td>
							<td>
								<xsl:value-of select="StartDate" />
							</td>
							<td>
								<xsl:value-of select="SSN" />
							</td>
						</tr>
					</xsl:for-each>
					<tr bgcolor="00FFFF">
						<th> Pilots  </th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<xsl:for-each select="Pilot">
						<tr>
							<td>
								<xsl:value-of select="@ID" />
							</td>
							<td>
								<xsl:value-of select="FirstName" />
								<xsl:value-of select="LastName" />
							</td>
							<td>
								<xsl:value-of select="DateOfBirth" />
							</td>
							<td>
								<xsl:value-of select="PassportNumber" />
							</td>
							<td>
								<xsl:value-of select="@Supervisor" />
							</td>
							<td>
								<xsl:value-of select="@DepartmentID" />
							</td>
							<td>
								<xsl:value-of select="Salary" />
							</td>
							<td>
								<xsl:value-of select="StartDate" />
							</td>
							<td>
								<xsl:value-of select="SSN" />
							</td>
							<td>
								<xsl:value-of select="@CertificateNumber" />
							</td>
							<td>
								<xsl:value-of select="DateOfIssue" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h1>Department</h1>
				<table border="2">
					<tr bgcolor="00FFFF">
						<th>Manager</th>
						<th>Code</th>
						<th>Name</th>
					</tr>
					<xsl:for-each select="Department">
						<tr>
							<td>
								<xsl:value-of select="@Manager" />
							</td>
							<td>
								<xsl:value-of select="@Code" />
							</td>
							<td>
								<xsl:value-of select="Name" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h1>Fare</h1>
				<table border="2">
					<tr bgcolor="00FFFF">
						<th>FareType</th>
						<th>Fare</th>
						<th>FareName</th>
					</tr>
					<xsl:for-each select="Fare">
						<tr>
							<td>
								<xsl:value-of select="@FareType" />
							</td>
							<td>
								<xsl:value-of select="Fare" />
							</td>
							<td>
								<xsl:value-of select="FareName" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<h1>Flight</h1>
				<table border="2">
					<tr bgcolor="00FFFF">
						<th>FlightCode</th>
						<th>Pilot</th>
						<th>Crew</th>
						<th>DepartureTime</th>
						<th>ArrivalTime</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Tickets</th>
					</tr>
					<xsl:for-each select="Flight">
						<tr>
							<td>
								<xsl:value-of select="@FlightCode" />
							</td>
							<td>
								<xsl:value-of select="Pilot" />
							</td>
							<td>
								<xsl:value-of select="Crew" />
							</td>
							<td>
								<xsl:value-of select="DepartureTime" />
							</td>
							<td>
								<xsl:value-of select="ArrivalTime" />
							</td>
							<td>
								<xsl:value-of select="Source" />
							</td>
							<td>
								<xsl:value-of select="Destination" />
							</td>
							<td>
								<table border="1">
									<tr bgcolor="00FFFF">
										<th>PassengerID</th>
										<th>FareType</th>
										<th>SeatNumber</th>
									</tr>
									<xsl:for-each select="Ticket">
										<tr>
											<td>
												<xsl:value-of select="@PassengerID" />
											</td>
											<td>
												<xsl:value-of select="@FareType" />
											</td>
											<td>
												<xsl:value-of select="SeatNumber" />
											</td>
										</tr>
									</xsl:for-each>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>


