
<%
      String EMAIL=(String)session.getAttribute("EMAIL");
      String NAME="";
      String ID="";
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
               ID=rs.getString(1);
               NAME=rs.getString(2);
            }
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
                    <!--                    <p>SALE UP TO 70% OFF. USE CODE "SALE70%" . <a href="products.html">SHOP NOW</a></p>-->
                </div>
                <div class="agile-login">
                    <ul>
                        <li><a href=""> WELCOME  <%=NAME%> </a></li>
                        <li><a href="logout.jsp">LOGOUT</a></li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="logo_products">
            <div class="container">               
                <div class="w3ls_logo_products_left">
                    <h1><a href="farmer.jsp">farmer panel</a></h1>
                </div>
                <div class="w3l_search">
                    <form action="#" method="post">
                        <input type="search" name="Search" placeholder="Search for a Product..." required="">
                        <button type="submit" class="btn btn-default search" aria-label="Left Align">
                            <i class="fa fa-search" aria-hidden="true"> </i>
                        </button>
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
                    <ul class="nav navbar-nav">

                        <!-- Mega Menu -->                           
                    </ul>
                </nav>
            </div>
        </div>

        <!-- //navigation -->
        <!-- register -->
        <div class="register">
            <div class="container">
                <div class="register-home">
                    <a href="addvegitables.jsp" style="background: #fe9126;">ADD VEGITABLES</a>
                </div>
                <div class="register-home">
                    <p class="text-center">
                        <a class="" style="background: #fe9126;" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                            ADDED VEGITABLES
                        </a>
                    </p>
                    <div class="collapse mt-3" id="collapseExample">
                        <div class="card card-body">
                            <table class="table" style="margin-top: 25px;">
                                <thead class="thead-dark bg-success">
                                    <tr>
                                        <th scope="col">NAME</th>
                                        <th scope="col">PRICE</th>                                                                               
                                        <th scope="col">TIME</th>
                                        <th scope="col">DATE</th> 
                                        <th scope="col">STATUS</th> 
                                        <th scope="col">STATUS CHANGE</th>
                                        <th scope="col">DELETE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% 
                                String addVegStatus = "";
                                String vid = "";
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver");  
                              java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
                              java.sql.Statement stmt=con.createStatement();  
                             String sele="SELECT *FROM vegitable where FID='"+ID+"' ";
                               java.sql.ResultSet rs=stmt.executeQuery(sele);  
                              while(rs.next()) 
                              {
    
                                    %>
                                    <tr>
                                        <th scope="row"><%=rs.getString(6)%></th>
                                        <th scope="row">RS : <%=rs.getString(7)%>/KG</th>
                                        <th scope="row"><%=rs.getString(8)%></th>
                                        <th scope="row"><%=rs.getString(9)%></th>
                                        <th scope="row"><%=rs.getString(10)%></th>
                                            <%
                                                vid = rs.getString(1);
                                                addVegStatus = rs.getString(10);
                                                if(addVegStatus.equals("AVALIABLE"))
                                                {
                                            %>                                        
                                        <th scope="row"><a style="background: #fe9126;;" class="out-of-stock" href="changestatus.jsp?STATUS=OUTOFSTOCK&VID=<%=vid%> ">OUT OF STOCK</a></th>                                        
                                            <%
                                                } else {
                                            %>
                                        <th scope="row"><a style="background: limegreen;" class="alert-linkk" href="changestatus.jsp?STATUS=AVALIABLE&VID=<%=vid%> ">AVALIABLE</a></th>                                       
                                            <%
                                                }
                                            %>
                                        <th scope="row"><a style="background: red;" class="alert-link" href="deleteaddedveg.jsp?id=<%=vid%>">DELETE</a></th>
                                    </tr>
                                    <%
                                              }
                                        con.close();  
                                        }catch(Exception ee)
                                        {
                                        out.println("error "+ee);
                                    }                                         
                                                
                                    %>
                                </tbody>
                            </table>                           
                        </div>
                    </div>
                </div>

                <div class="register-home">
                    <p class="text-center">
                        <a class="" style="background: #fe9126;" data-toggle="collapse" href="#collapseExample1" role="button" aria-expanded="false" aria-controls="collapseExample">
                            BOOKED VEGITABLES
                        </a>
                    </p>
                    <div class="collapse mt-3" id="collapseExample1">
                        <div class="card card-body">
                            <table class="table" style="margin-top: 25px;">
                                <thead class="thead-dark bg-success">
                                    <tr>
                                        <th scope="col">BUYER NAME</th>
                                        <th scope="col">VEGITABLE</th>
                                        <th scope="col">QUANTITY</th>
                                        <th scope="col">DATE</th>
                                        <th scope="col">TIME</th>  
                                        <th scope="col">RESPONSE</th>  
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                String bookedVegStatus = "";
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver");  
                              java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
                              java.sql.Statement stmt=con.createStatement();  
                             String sele="SELECT *FROM orders where FID='"+ID+"' and ORDERSTATUS='true' ";
                               java.sql.ResultSet rs=stmt.executeQuery(sele);  
                              while(rs.next()) 
                              {
    
                                    %>
                                    <tr>
                                        <th scope="row"><%=rs.getString(8)%></th>
                                        <th scope="row"><%=rs.getString(7)%></th>
                                        <th scope="row"><%=rs.getString(9)%>kg</th>
                                        <th scope="row"><%=rs.getString(10)%></th>
                                        <th scope="row"><%=rs.getString(11)%></th>
                                            <%
                                                bookedVegStatus = rs.getString(12);
                                                if(bookedVegStatus.equals("order placed"))
                                                {
                                            %>
                                        <th scope="row"><a style="background: #fe9126;" onclick="alert('Vegitable sent successfull !')" href="farmernext.jsp?ID=<%=rs.getString(1)%>">SENT</a></th>
                                            <%
                                                } else {
                                            %>
                                        <th scope="row"><a style="background: green;" onclick="alert('Aready sent this vegetabel !')" href="">VEGETABLE SENT</a></th>
                                            <%
                                                }
                                            %>
                                    </tr>
                                    <%
                                              }
                                        con.close();  
                                        }catch(Exception ee)
                                        {
                                        out.println("error "+ee);
                                    }                                         
                                                
                                    %>
                                </tbody>
                            </table>                           
                        </div>
                    </div>
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

        <script>
            // Select all the a tags with class 'alert-link'
            const links = document.querySelectorAll('.alert-link');

            // Attach an onclick event listener to each a tag
            links.forEach(function (link) {
                link.addEventListener('click', function (event) {
                    // Show confirmation dialog and prevent the default behavior
                    const confirmation = confirm('Are you sure you want to remove vegetable ?');
                    if (!confirmation) {
                        event.preventDefault();
                        return false;
                    }
                    return true;
                });
            });
        </script>
        
        <script>
            // Select all the a tags with class 'alert-link'
            const linkss = document.querySelectorAll('.out-of-stock');

            // Attach an onclick event listener to each a tag
            linkss.forEach(function (link) {
                link.addEventListener('click', function (event) {
                    // Show confirmation dialog and prevent the default behavior
                    const confirmation = confirm('Are you sure you want to change status to out of stock ?');
                    if (!confirmation) {
                        event.preventDefault();
                        return false;
                    }
                    return true;
                });
            });
        </script>
        
        <script>
            // Select all the a tags with class 'alert-link'
            const linksss = document.querySelectorAll('.alert-linkk');

            // Attach an onclick event listener to each a tag
            linksss.forEach(function (link) {
                link.addEventListener('click', function (event) {
                    // Show confirmation dialog and prevent the default behavior
                    const confirmation = confirm('Are you sure you want to change status to avaliable ?');
                    if (!confirmation) {
                        event.preventDefault();
                        return false;
                    }
                    return true;
                });
            });
        </script>

    </body>
</html>