<%
    String district=request.getParameter("dis");
    session.setAttribute("district",district);
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String sele="select * from farmer where FDISTRICT='"+district+"' ";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    if(rs.next())  
    {    
        response.sendRedirect("findfarmer.jsp");
    }
      else
      {
        response.sendRedirect("nofarmer.jsp");
      }      
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>