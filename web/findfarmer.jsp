<%
      String EMAIL=(String)session.getAttribute("EMAIL");
      String NAME="";
      String ID="";
      try
      {
         Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
        java.sql.Statement stmt=con.createStatement();  
        String sele="SELECT *FROM signup where EMAIL='"+EMAIL+"' ";
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
        <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
                    <p>SALE UP TO 70% OFF. USE CODE "SALE70%" . <a href="products.html">SHOP NOW</a></p>
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
                    <h1><a href="index.html">ORGANIC VEGGIES</a></h1>
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
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div> 
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="index1.jsp" class="act">Home</a></li>
                            <li><a href="cart1.jsp?ID=<%=ID%>">Cart</a></li>
                            <li><a href="orders.jsp?ID=<%=ID%>">Orders</a></li>                            
                            <!-- Mega Menu -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">District<b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="multi-gd-img">
                                            <ul class="multi-column-dropdown">                                               
                                                <li><a href="searchdistrict.jsp?dis=KASARGOD ">KASARGOD</a></li>
                                                <li><a href="searchdistrict.jsp?dis=KANNUR">KANNUR</a></li>
                                                <li><a href="searchdistrict.jsp?dis=KOZHIKODE">KOZHIKODE</a></li>
                                                <li><a href="searchdistrict.jsp?dis=MALAPPURAM">MALAPPURAM</a></li>
                                                <li><a href="searchdistrict.jsp?dis=THRISSURE"> THRISSURE </a></li>
                                                <li><a href="searchdistrict.jsp?dis=ERNAKALUAM">ERNAKALUAM</a></li>
                                                <li><a href="searchdistrict.jsp?dis=KOTTAYAM">KOTTAYAM</a></li>
                                                <li><a href="searchdistrict.jsp?dis=ALAPPUZHA">ALAPPUZHA</a></li>
                                                <li><a href="searchdistrict.jsp?dis=KOLLAM">KOLLAM</a></li>
                                                <li><a href="searchdistrict.jsp?dis=THRIVANANTHAPURAM">THRIVANANTHAPURAM</a></li>
                                                <li><a href="searchdistrict.jsp?dis=WAYANAD"> WAYANAD </a></li>
                                                <li><a href="searchdistrict.jsp?dis=PALAKAD">PALAKAD</a></li>
                                                <li><a href="searchdistrict.jsp?dis=IDUKKI"> IDUKKI </a></li>
                                                <li><a href="searchdistrict.jsp?dis=PATHANAMTHITTA">PATHANAMTHITTA</a></li>
                                            </ul>
                                        </div>	

                                    </div>
                                </ul>
                            </li>                                                       
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

        <!-- //navigation -->
        <!-- //top-header and slider -->
        <!-- top-brands -->
        <div class="top-brands">
            <div class="container">
                <h2>Top selling shops</h2>
                <div class="grid_3 grid_5">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab"> 

                                <div class="agile_top_brands_grids">
                                    <%
                                String district=(String)session.getAttribute("district");
                                try
                                {
                                Class.forName("com.mysql.jdbc.Driver");  
                              java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
                              java.sql.Statement stmt=con.createStatement();  
                             String sele="SELECT *FROM farmer where FDISTRICT='"+district+"'  ";
                               java.sql.ResultSet rs=stmt.executeQuery(sele);  
                              while(rs.next()) 
                              {
    
                                    %>
                                    <div class="col-md-4 top_brand_left">
                                        <div class="hover14 column">
                                            <div class="agile_top_brand_left_grid">                                                
                                                <div class="agile_top_brand_left_grid1">
                                                    <figure>
                                                        <div class="snipcart-item block" >
                                                            <div class="snipcart-thumb">
                                                                <a href="products.html"><img title=" " alt=" " src="images/shop.png" /></a>		
                                                                <p><%=rs.getString(5)%></p>
                                                                <div class="stars">
                                                                    <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                                                    <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                                                    <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                                                    <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                                                    <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                                                </div>
                                                                <p>location : <span><%=rs.getString(6)%></span></p>
                                                            </div>
                                                            <div class="snipcart-details top_brand_home_details">
                                                                <div class="register-home">
                                                                    <a href="shopnow.jsp?ID=<%=rs.getString(1)%>" style="background: #fe9126;">SHOP NOW</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>         
                                    <%
                                            }
                                      con.close();  
                                      }catch(Exception ee)
                                      {
                                      out.println("error "+ee);
                                  }                                         
                                                
                                    %>
                                    <div class="clearfix"> </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //top-brands -->
        <!-- Carousel
           ================================================== -->
        <!-- //footer -->
        <div class="footer">
            <div class="footer-copy">
                <div class="container">
                    <p>© 2017 Super Market. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
                </div>
            </div>

        </div>	

        <!-- //footer -->	
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