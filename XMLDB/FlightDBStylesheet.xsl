<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!-- Defining the primary keys used in this XSLT -->
<xsl:key name="PassengerKey" match = "//Passenger" use="@ID"/><!--Passenger has a primary key called ID -->
<xsl:key name="FareKey" match = "//Fare" use="@FareType"/><!--Fare has a primary key called FareType -->
<!-- End of PKs -->
<xsl:template match="/Airline"><!-- Match the root element(airline) -->
  <html>
  <body>
    <h2>Flight Tickets</h2>
      <table border="1">
      <xsl:for-each select="Flight"><!-- For each Flight in the airline Display all the tickets with additional details -->
        <tr bgcolor="#9acd32">
        <th>Flight Code</th>
        <th>Source</th>
        <th>Destination</th>
        <th>Departure Time</th>
        <th>Arrival Time</th>
        <th>SeatNumber</th>
        <th>Fare Class</th>
        <th>Passenger Name</th>
        </tr>
        <tr>
          <xsl:for-each select="Ticket"> 
         	 <tr>
         	 	<td bgcolor="green"><xsl:value-of select="../@FlightCode"/></td><!-- Tickets' parents' (aka flight) FlightCode -->
          		<td><xsl:value-of select="../Source"/></td><!-- Tickets' parents' (aka flight) Source -->
         		<td><xsl:value-of select="../Destination"/></td><!-- Tickets' parents' (aka flight) Destination -->
      		    <td><xsl:value-of select="../DepartureTime"/></td><!-- Tickets' parents' (aka flight) Departure -->
         		<td><xsl:value-of select="../ArrivalTime"/></td><!-- Tickets' parents' (aka flight) Arrival -->
           		<td><xsl:value-of select="SeatNumber"/></td><!-- Tickets assigned seat number -->
          		<td><xsl:value-of select="key('FareKey',@FareType)/FareName"/></td><!-- uses tickets reference(FK) to fare to get the fare name(class) from the fares (many to many referencing)-->
          		<td> <xsl:value-of select="concat(key('PassengerKey',@PassengerID)/LastName,', ',key('PassengerKey',@PassengerID)/FirstName)"/></td><!-- Concatenates the lastname + ', ' + firstname
          		 while retrieving them using the passenger id -->
          	 </tr>
          </xsl:for-each>
        </tr>
      </xsl:for-each>
    </table><br/>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
 
 