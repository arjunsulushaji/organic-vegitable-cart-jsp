<%
    String FID=request.getParameter("ID");
    session.setAttribute("FID",FID);
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String sele="select * from vegitable where FID='"+FID+"' and STATUS='AVALIABLE' ";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    String ID = "";
    if(rs.next())  
    {
     ID=rs.getString(2);
     if(ID.equals(FID))
      {
        session.setAttribute("ID",ID);      
        response.sendRedirect("showvegitable.jsp");
      }
      else
      {
        response.sendRedirect("novegitable.jsp");
        }
        }
      else
            response.sendRedirect("novegitable.jsp");
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>