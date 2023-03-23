<%
      String ID,NAME,EMAIL,PASSWORD,MOBNO,DISTRICT,ADDRESS;
      ID = request.getParameter("ID");
      NAME = request.getParameter("NAME");
      EMAIL = request.getParameter("EMAIL");
      PASSWORD = request.getParameter("PASSWORD");
      MOBNO = request.getParameter("MOBNO");
      DISTRICT = request.getParameter("DISTRICT");
      ADDRESS = request.getParameter("ADDRESS");
      
      session.setAttribute("ID",ID);
      session.setAttribute("NAME",NAME);
      session.setAttribute("EMAIL",EMAIL);
      session.setAttribute("PASSWORD",PASSWORD);
      session.setAttribute("MOBNO",MOBNO);
      session.setAttribute("DISTRICT",DISTRICT);
      session.setAttribute("ADDRESS",ADDRESS);
     
      String val = "";
      
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String ins="SELECT *from login";
    java.sql.ResultSet rs = stmt.executeQuery(ins);
    while(rs.next()){
    val = rs.getString(1);
    if(val.equals(EMAIL)){
        response.sendRedirect("signuperr.jsp");
    }
    }
    response.sendRedirect("signupsuccess.jsp");
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
      
%>