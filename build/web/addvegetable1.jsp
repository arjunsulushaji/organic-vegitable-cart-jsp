<%
       String ID,VEGITABLE,AMOUNT,QUANTITY;
      ID = request.getParameter("ID");
      VEGITABLE = request.getParameter("VEGITABLE");
      AMOUNT = request.getParameter("AMOUNT");
      
      session.setAttribute("ID",ID);
      session.setAttribute("VEGITABLE",VEGITABLE);
      session.setAttribute("AMOUNT",AMOUNT);
%>
<%
      String EMAIL=(String)session.getAttribute("EMAIL");
      String FID="";      
      try
      {
         Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
        java.sql.Statement stmt=con.createStatement();  
        String sele="SELECT *FROM farmer where FEMAIL='"+EMAIL+"' ";
//        out.println(sele);
        java.sql.ResultSet rs=stmt.executeQuery(sele);  
         if(rs.next()) 
            {
               FID=rs.getString(1);               
            }
        con.close();  
        }catch(Exception ee)
            {
                out.println("error "+ee);    
            }
%>
<%
    try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    
    String vname="";
    String sele="select * from vegitable where FID='"+FID+"' and VNAME='"+VEGITABLE+"' ";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    if(rs.next())  
    {
     response.sendRedirect("vegerr.jsp");
    }
      else
            response.sendRedirect("addvegitablenext.jsp");
    
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
