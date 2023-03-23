
<%
    String EMAIL=request.getParameter("EMAIL");
    String PASSWORD=request.getParameter("PASSWORD");
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String usertype="";
    String sele="select * from login where email='"+EMAIL+"' and password='"+PASSWORD+"'";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    if(rs.next())  
    {
     usertype=rs.getString("USERTYPE");
     if(usertype.equals("user"))
     {
        session.setAttribute("EMAIL",EMAIL);      
        response.sendRedirect("index1.jsp");
      }
      else
         if(usertype.equals("admin"))
         {
        session.setAttribute("EMAIL",EMAIL);
        response.sendRedirect("admin.jsp");
         }
      else
        if(usertype.equals("farmer"))
        {
        session.setAttribute("EMAIL",EMAIL);
        response.sendRedirect("farmer.jsp");
        }
    }
      else
            response.sendRedirect("loginerr.jsp");
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>