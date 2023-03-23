<%
      int i=100;
      try
      {
      Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=java.sql.DriverManager.getConnection( "jdbc:mysql://localhost:3306/organic_veggies","root","");  
    //here sonoo is database name, root is username and password  
    java.sql.Statement stmt=con.createStatement();  
    String sele="select * from signup";
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

                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="logo_products">
            <div class="container">               
                <div class="w3ls_logo_products_left">
                    <h1><a href="signup.jsp">Organic Veggies</a></h1>
                </div>
                <div class="w3l_search">
                    
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
                        <li class="active"><a href="index.jsp" class="act">Home</a></li>	
                        <!-- Mega Menu -->                            
                    </ul>
                </nav>
            </div>
        </div>

        <!-- //navigation -->
        <!-- register -->
        <div class="register">
            <div class="container">
                <h2>Signup Here</h2>
                <div class="login-form-grids">
                    <h6>Signup information</h6>
                    <form action="signupnext.jsp" method="post" id="form-login">
                        <input type="text" value="UID<%=i%><%=currentTime%>" required=" " name="ID" style="display:none;">
                        <input type="text" placeholder="Name" required=" " name="NAME" >
                        <input type="email" placeholder="Email Address" required=" " name="EMAIL">
                        <input type="password" placeholder="Password" required=" " name="PASSWORD" >
                        <input type="number" placeholder="Mobilel Number" id="mobno" required="" name="MOBNO">
                        <p class="" id="error" style="color: red; display: none;">* Enter valid 10 digit mobile number only</p>
                        <input type="text" placeholder="Address" required="" name="ADDRESS">
                        <select name="DISTRICT" id="" class="mt-2" required="" style="width: 244px;
                                height: 38px;
                                font-family: monospace;
                                padding-left: 13px;" required="">
                            <option value="">DISTRICT</option>
                            <option value="KASARGOD">KASARGOD</option>
                            <option value="KANNUR">KANNUR</option>
                            <option value="KOZHIKODE">KOZHIKODE</option>
                            <option value="MALAPPURAM">MALAPPURAM</option>
                            <option value="THRISSUR">THRISSUR</option>
                            <option value="ERNAKALUM">ERNAKALUM</option>
                            <option value="KOTTAYAM">KOTTAYAM</option>
                            <option value="ALAPPUZHA">ALAPPUZHA</option>
                            <option value="KOLLAM">KOLLAM</option>
                            <option value="THRIVANANTHAPURAM">THRIVANANTHAPURAM</option>
                            <option value="WAYANAD">WAYANAD</option>
                            <option value="PALAKKAD">PALAKAD</option>
                            <option value="IDUKKI">IDUKKI</option>
                            <option value="PATHANAMTHITTA">PATHANAMTHITTA</option>
                        </select>                        
                        <input type="submit" value="Signup">
                        <div class="forgot">
                            <a href="login.jsp">Already have an account ?</a>
                        </div>
                    </form>                        
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
            $(document).ready(() => {
                $("#form-login").submit(function (e) {
                    var digit = $('#mobno').val();
                    if (digit.length != 10) {
                        $("#error").show();
                        e.preventDefault();
                    } else {
                        $("#error").hide();
                        e.currentTarget.submit();
                    }
                });
            });
        </script>

    </body>
</html>