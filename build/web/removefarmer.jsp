<%  
    String ID = request.getParameter("id");
    String EMAIL = request.getParameter("email");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    java.sql.ResultSet rs;
    
    String s="delete  from farmer where FID='"+ID+"' ";
    String ss="delete  from login where EMAIL='"+EMAIL+"' ";
    String sss="delete  from cart where FARID='"+ID+"' ";
    String ssss="delete  from orders where FID='"+ID+"' ";
    String sssss="delete  from vegitable where FID='"+ID+"' ";
    stmt.executeUpdate(s);
    stmt.executeUpdate(ss);
    stmt.executeUpdate(sss);
    stmt.executeUpdate(ssss);
    stmt.executeUpdate(sssss);
    response.sendRedirect("admin.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    %>
