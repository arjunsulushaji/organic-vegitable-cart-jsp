<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
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

                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="logo_products">
            <div class="container">
                <div class="w3ls_logo_products_left">
                    <h1><a href="index.html">super Market</a></h1>
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
                        <li class="active"><a href="index1.jsp" class="act">Home</a></li>	
                        <!-- Mega Menu -->                            
                    </ul>
                </nav>
            </div>
        </div>

        <!-- //navigation -->

        <!-- login -->
        <div class="login">
            <div class="container">
                <h2>user cart</h2>
                <table class="table" style="margin-top: 25px;">
                    <thead class="thead-dark bg-success">
                        <tr>
                            <th scope="col">SHOP NAME</th>
                            <th scope="col">VEGITABEL</th>
                            <th scope="col">QUANTITY</th>
                            <th scope="col">PRICE/KG</th>
                            <th scope="col">TOTAL</th> 
                            <th scope="col">REMOVE ITEM</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                    String ID=(String)session.getAttribute("ID");
                    int fulltotal = 0;
                    try
                    {
                    Class.forName("com.mysql.jdbc.Driver");  
                  java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
                  java.sql.Statement stmt=con.createStatement();  
                 String sele="SELECT *FROM cart where USERID='"+ID+"' ";
                   java.sql.ResultSet rs=stmt.executeQuery(sele);  
                  while(rs.next()) 
                  {
    
                        %>
                        <tr>
                            <th scope="row"><%=rs.getString(6)%></th>
                            <th scope="row"><%=rs.getString(7)%></th>
                            <th scope="row"><%=rs.getString(8)%>kg</th>
                            <th scope="row">Rs: <%=rs.getString(9)%>/kg</th>
                                <%                                   
                                    String quantityy =rs.getString(8);
                                    String pricee = rs.getString(9);
                                    int Q = Integer.parseInt(quantityy.trim());
                                    int P = Integer.parseInt(pricee.trim());
                                    int total = Q*P;
                                    fulltotal = fulltotal + total;
                                %>
                            <th scope="row">Rs : <%=total%></th> 
                            <th scope="row"><a href="removecartitem.jsp?vid=<%=rs.getString(2)%>&fid=<%=rs.getString(3)%>&uid=<%=rs.getString(4)%>&time=<%=rs.getString(11)%>" class="alert-link" style="color: #fe9126;">REMOVE FROM CART</a></th>
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
                </table><hr>
                <div>
                    <h3 class="text-center">Total : Rs <%=fulltotal%></h3>
                    <div class="register-home text-right">
                        <a href="cartpayment.jsp?USERID=<%=ID%>" style="background: #fe9126;">BUY NOW</a>
                    </div>
                </div>
            </div>
        </div>
    </script>         
    <!-- //login -->
    <!-- //footer -->

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
             easingType: 'linear'               };
             */

            $().UItoTop({easingType: 'easeOutQuart'});
        });
    </script>
    <!-- //here ends scrolling icon -->
    <script src="js/minicart.min.js"></script>
    <script>
        // Mini Ca
        rt
        paypal.minicart.render({
            action: '#'
        });

        if (~window.location.search.indexOf('reset=true'))
        {
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
                const confirmation = confirm('Are you sure you want to remove item from cart ?');
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