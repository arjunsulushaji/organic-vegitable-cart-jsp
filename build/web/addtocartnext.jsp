<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%  
Date d= new Date();
SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd-MM-yyyy");
String date=DATE_FORMAT.format(d);
%>
<%  
Date t= new Date();
SimpleDateFormat TIME_FORMAT = new SimpleDateFormat("hh:mm:ss");
String time=TIME_FORMAT.format(t);
%>

<%
      String VID=(String)session.getAttribute("ID");
      String USEREMAIL=(String)session.getAttribute("EMAIL");
      String FID=(String)session.getAttribute("FID");      

      String CARTID = request.getParameter("CARTID");
      String VNAME = request.getParameter("NAME");
      String RQUANTITY = request.getParameter("RQ");
      String AQUANTITY = request.getParameter("QUANTITY");
    
%>

<%
      String PRICE="";
      try
      {
         Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
        java.sql.Statement stmt=con.createStatement();  
        String sele="SELECT *FROM vegitable where VID='"+VID+"' ";
        java.sql.ResultSet rs=stmt.executeQuery(sele);  
         if(rs.next()) 
            {
               PRICE=rs.getString(7);               
            }
        con.close();  
        }catch(Exception ee)
            {
                out.println("error "+ee);    
            }
%>

<%
      String FARMERNAME="";
      String SHOPNAME="";
      try
      {
         Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
        java.sql.Statement stmt=con.createStatement();  
        String sele="SELECT *FROM farmer where FID='"+FID+"' ";
        java.sql.ResultSet rs=stmt.executeQuery(sele);  
         if(rs.next()) 
            {
               FARMERNAME=rs.getString(2);
               SHOPNAME=rs.getString(5);
            }
        con.close();  
        }catch(Exception ee)
            {
                out.println("error "+ee);    
            }
%>

<%      
      String USERID="";
      String USERNAME="";
      try
      {
         Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
        java.sql.Statement stmt=con.createStatement();  
        String sele="SELECT *FROM signup where EMAIL='"+USEREMAIL+"' ";
        java.sql.ResultSet rs=stmt.executeQuery(sele);  
         if(rs.next()) 
            {
               USERID=rs.getString(1);   
               USERNAME=rs.getString(2); 
            }
        con.close();  
        }catch(Exception ee)
            {
                out.println("error "+ee);    
            }
%>

<%
      int i=100;
      String OID="OID";
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String sele="select * from orders";
    java.sql.ResultSet rs=stmt.executeQuery(sele);  
    while(rs.next())  
        i++;
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
%>
<%
  long currentTime = System.currentTimeMillis();
%>


<%
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String ins="insert into cart(CARTID,VEGID,FARID,USERID,FARNAME,SHOPNAME,VEGNAME,QUANTITY,PRICE,DATE,TIME) values('"+CARTID+"','"+VID+"','"+FID+"','"+USERID+"','"+FARMERNAME+"','"+SHOPNAME+"','"+VNAME+"','"+RQUANTITY+"','"+PRICE+"','"+date+"','"+time+"')";
    String inss="insert into orders(ORDERID,FID,FNAME,SHOPNAME,VID,UID,VNAME,UNAME,QUANTITY,DATE,TIME,STATUS,ORDERSTATUS) values('"+OID+i+currentTime+"','"+FID+"','"+FARMERNAME+"','"+SHOPNAME+"','"+VID+"','"+USERID+"','"+VNAME+"','"+USERNAME+"','"+RQUANTITY+"','"+date+"','"+time+"','order placed','false')";    
    stmt.executeUpdate(ins);   
    stmt.executeUpdate(inss);
    con.close();  
    }catch(Exception ee)
    {
    out.println("error "+ee);
   }
      
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Registered :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <!-- //js -->
        <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
    </head>

    <body>
        <!-- header -->
        <div class="agileits_header">
            <div class="container">
                <div class="w3l_offers">
                   
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="logo_products">
            <div class="container">               
                <div class="w3ls_logo_products_left">
                    <h1><a href="index.html">Organic Veggies</a></h1>
                </div>
                <div class="w3l_search">
                    <form action="#" method="post">
                        <!--                        <input type="search" name="Search" placeholder="Search for a Product..." required="">-->
                        <!--                        <button type="submit" class="btn btn-default search" aria-label="Left Align">
                                                    <i class="fa fa-search" aria-hidden="true"> </i>
                                                </button>-->
                        <div class="clearfix"></div>
                    </form>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //header -->
        <!-- navigation -->
        <div class="navigation-agileits">
            <div class="container">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                </nav>
            </div>
        </div>

        <!-- //navigation -->
        <!-- register -->
        <div class="register">
            <div class="container">
                <h2 style="margin-top: 4rem; color: limegreen">cart added Successfull</h2>            
                <div class="register-home">
                    <a href="index1.jsp">HOME</a>
                </div>
            </div>
        </div>
        <!-- //register -->	
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <!-- top-header and slider -->
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- //here ends scrolling icon -->
        <script src="js/minicart.min.js"></script>
        <script>
            // Mini Cart
            paypal.minicart.render({
                action: '#'
            });

            if (~window.location.search.indexOf('reset=true')) {
                paypal.minicart.reset();
            }
        </script>
        <!-- main slider-banner -->
        <script src="js/skdslider.min.js"></script>
        <link href="css/skdslider.css" rel="stylesheet">
        <script type="text/javascript">
            jQuery(document).ready(function () {
                jQuery('#demo1').skdslider({'delay': 5000, 'animationSpeed': 2000, 'showNextPrev': true, 'showPlayButton': true, 'autoSlide': true, 'animationType': 'fading'});

                jQuery('#responsive').change(function () {
                    $('#responsive_wrapper').width(jQuery(this).val());
                });

            });
        </script>	
        <!-- //main slider-banner --> 

    </body>
</html>