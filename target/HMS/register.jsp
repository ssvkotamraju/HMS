<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
</head>
<body>
    <h2>Library Registration Form</h2>
    <form action="register.jsp" method="post">
    	<label>Email:</label>
        <input type="email" name="email" required><br><br> 
           
        <label>Name:</label>
        <input type="text" name="name" required><br><br>       

        <label>Password:</label>
        <input type="password" name="password" required><br><br>

        <label>Doctor Name</label>
        <input type="text" name="Doctor Name"><br><br>
        
        <label>Appointment Time</label>
        <input type="text" name="Appointment Time"><br><br>

        <input type="submit" value="Register">
    </form>

    <%-- Simple JSP to display submitted values --%>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String DoctorName = request.getParameter("Doctor Name");
        String AppointmentTime= request.getParameter("Appointment Time");
        if (name != null && email != null) {
    %>
        <h3>Registration Successful!</h3>
        <p><b>Name:</b> <%= name %></p>
        <p><b>Email:</b> <%= email %></p>
        <p><b>DoctorName</b> <%= DoctorName %></p>
        <p><b>AppointmentTime</b> <%= AppointmentTime %></p>
    <%
        }
    %>
</body>
</html>
