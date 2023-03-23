<%  
    String ID = request.getParameter("id");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    java.sql.ResultSet rs;
    
    String s="delete  from vegitable where VID='"+ID+"' ";
    String ss="delete  from cart where VEGID='"+ID+"' ";
    String sss="delete  from orders where VID='"+ID+"' ";
    stmt.executeUpdate(s);
    stmt.executeUpdate(ss);
    stmt.executeUpdate(sss);
    response.sendRedirect("farmer.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    %>
