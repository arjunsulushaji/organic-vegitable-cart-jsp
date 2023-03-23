<%  
    String VID = request.getParameter("vid");
    String FID = request.getParameter("fid");
    String UID = request.getParameter("uid");
    String TIME = request.getParameter("time");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    java.sql.ResultSet rs;
  
    String ss="delete from cart where VEGID='"+VID+"' and FARID='"+FID+"' and USERID='"+UID+"' and TIME='"+TIME+"' ";
    String sss="delete from orders where VID='"+VID+"' and FID='"+FID+"' and UID='"+UID+"' and TIME='"+TIME+"' ";
    stmt.executeUpdate(ss);
    stmt.executeUpdate(sss);
    response.sendRedirect("cart.jsp");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    %>
