<%  
    String STATUS=request.getParameter("STATUS");
    String VID=request.getParameter("VID");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    java.sql.ResultSet rs;
    
    String ss="update vegitable set STATUS='"+STATUS+"' where VID='"+VID+"' ";
    stmt.executeUpdate(ss);
    response.sendRedirect("farmer.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
%>
