<%
      String ID = request.getParameter("ID");
      session.setAttribute("ID",ID);
      String val="";
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String ins="SELECT *from cart";
    java.sql.ResultSet rs = stmt.executeQuery(ins);
    while(rs.next()){
    val = rs.getString(4);
    if(val.equals(ID)){
        response.sendRedirect("cart.jsp");
    }
    }
    response.sendRedirect("carterr.jsp");
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
      
%>