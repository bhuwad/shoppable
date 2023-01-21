<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>SHOPPABLE</title>
    <script type="text/javascript">
    function doSomething(){
        alert("Please Login First");
    }

    </script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="navvbar">
                    <div class="hamburger-menu">
                        <div class="line line-1"></div>
                        <div class="line line-2"></div>
                        <div class="line line-3"></div>
                    </div>
                    <ul class="nav-list">
                        <li class="nav-item">
                            <a href="#" class="nav-link">HOME</a>
                        </li>

                        <li class="nav-item">
                            <a href="sub_pages/service.html" class="nav-link">ABOUT</a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">FEEDBACK</a>
                        </li>

                        <li class="nav-item">
                            <a href="sub-pages/products/index1.html" class="nav-link">Shop By Category</a>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="nav-link">LOGOUT</a>
                        </li>
                    </ul>

                </div>
                <!--search box start
                <div class="box">
                  <input type="text" name="" placeholder="type...">
                  <input type="submit" name="" value="submit">
                </div>
                search box ends-->
                <nav>
                    <ul>
                       
                        <%
						//	HttpSession session = request.getSession();
                          Object username="";
                        		  username=session.getAttribute("username");
                          if (username != null && !username.toString().equals("")){
                         %>
                        <li><a href="loginform.jsp" class="cool-link"><%= username  %></a></li>
                          <li><a href="logout.jsp" class="cool-link">logout</a></li>
                        <%
                          }
                          else{
                        	  %>
                        	   <li><a href="regform.jsp" class="cool-link">REGISTER</a></li>
                        	  <li><a href="loginform.jsp" class="cool-link">LOGIN</a></li> 
                        	  <%
                          }
                        %>
                    </ul>
                </nav>
            </div>
        </div>
    </div>


    <div class="slider">
        <div class="slides">
            <!--radio buttons start-->
            <input type="radio" name="radio-btn" id="radio1">
            <input type="radio" name="radio-btn" id="radio2">
            <input type="radio" name="radio-btn" id="radio3">
            <input type="radio" name="radio-btn" id="radio4">
            <!--radio buttons end-->
            <!--slide images start-->
            <div class="slide f  irst">
                <img src="images/SUPERSALE.jpg" alt="">
            </div>
            <div class="slide">
                <img src="images/DSLR.jpg" alt="">
            </div>
            <div class="slide">
                <img src="images/mobile.jpg" alt="">
            </div>
            <div class="slide">
                <img src="images/offer.jpg" alt="">
            </div>
            <!-- navigattion manual start-->
        </div>
        <div class="navigation-manual">
            <label for="radio1" class="manual-btn"></label>
            <label for="radio2" class="manual-btn"></label>
            <label for="radio3" class="manual-btn"></label>
            <label for="radio4" class="manual-btn"></label>
        </div>
        <!-- navigattion manual end-->
    </div>
    <!--image slider end-->

    <!--auto slideshow using java-->
    <script type="text/javascript">
        var counter = 1;
        setInterval(function () {
            document.getElementById('radio' + counter).checked = true;
            counter++;
            if (counter > 4) {
                counter = 1;
            }
        }, 5000);
    </script>
    <!--auto slideshow using java-->


    <!--first row of products starts-->
    <div class="small-container">
        <h2 class="title">PETER INDIAN</h2>
        <div class="row">
            <div class="col-4">
                <img src="images/Peter england.jpg" alt="Peter england">
                <h5>Men's Blazer</h5>
                <br>
                <h4>Peter England Men's Slim fit Blazer</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/checkout_benneton_t-shirt.php" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/Peter england 2.jpg" alt="Peter england">
                <h5>Men's Blazer</h5>
                <br>
                <h4>Peter England Men's Slim fit Blazer</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/checkout_grey_shirt.php" class="btn">BUY &#8594;</a>
            </div>

            <div class="col-4">
                <img src="images/Peter england 3.jpg" alt="Peter england">
                <h5>Men's Blazer</h5>
                <br>
                <h4>Blue dark mid-risejeans</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/checkout_jeans.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/Peter england 4.jpg" alt="Peter england">
                <h5>skechers</h5>
                <br>
                <h4>white gym sports shoes</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/checkout_shoes.html" class="btn">BUY &#8594;</a>
            </div>
        </div>
        <!--first row of products ends-->


        <!--second row of products start-->
        <h2 class="title">TITAN</h2>
        <div class="row">
            <div class="col-4">
                <img src="images/titan 1.jpg" alt="">
                <h5>Titan Blue Dial Men's Watch</h5>
                <br>
                <h4>Blue, Case Shape: Round Band Color: Silver Band Material: Stainless Steel</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>Rs.34,999</p>
                <a href="loginpg/checkout_Cannon_Eos_1500D.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/titan 2.jpg" alt="">
                <h5>Titan Neo Black Dial Men's Watch</h5>
                <br>
                <h4>lack, Case Shape: Round
                    Band Color: Brown, Band Material: Leather. Case Length(6H-12H)</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.49,499</p>
                <a href="loginpg/checkout_nikon_5600_dslr.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/titan 3.jpg" alt="">
                <h5>Titan Youth Analog Pink Dial Women's Watch</h5>
                <br>
                <h4>Pink, Case Shape: Round, Dial Glass Material: Mineral
                    Band Color: Silver</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/checkout_insta_360_one.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/titan 4.jpg" alt="">
                <h5>Titan Ladies NeoIi Rose Gold Dial Women's</h5>
                <br>
                <h4> Rose Gold, Case Shape: Round, Dial Glass Material: Mineral
                    Band Color: Silver, Band Material: Metal</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.39,999</p>
                <a href="loginpg/checkout_Gopro.html" class="btn">BUY &#8594;</a>
            </div>
        </div>
        <!--second row of products ends-->


        <!--third products row start-->
        <h2 class="title">GODREJ</h2>
        <div class="row">
            <div class="col-4">
                <img src="images/godrej.jpg" alt="">
                <h5>Godrej Forte Pro 15</h5>
                <br>
                <h4>litres Digital Electronic Safe Locker for Home & Office<br>Motorized Locking Mechanism </h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>Rs.2476</p>
                <a href="loginpg/checkout_titan.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/godrej 1.jpg" alt="">
                <h5>Godrej Smart Home Security Camera</h5>
                <br>
                <h4>Godrej Security Solutions Eve Nx<br>Smart Home Security Camera </h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.4725</p>
                <a href="loginpg/checkoutform_Tommy.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/godrej 2.jpg" alt="">
                <h5>Godrej Goldilocks</h5>
                <br>
                <h4>Godrej Security Solutions Goldilocks<br>Personal Locker (White and Pink)</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.3021</p>
                <a href="loginpg/checkout_LACOSTE.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/godrej 3.jpg" alt="">
                <h5>Fastrack</h5>
                <br>
                <h4>Godrej Security Solus ST 7 Lite Lite Video Door phone Kit</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.2350</p>
                <a href="loginpg/checkoutform_FASTSTRACK.html" class="btn">BUY &#8594;</a>
            </div>
        </div>
        <!--third products row ends-->


        <!--fourth products row start-->
        <h2 class="title">BOAT</h2>
        <div class="row">
            <div class="col-4">
                <img src="images/boat headphone.jpg" alt="">
                <h5>boAt Rockerz 450</h5>
                <br>
                <h4>Bluetooth On-Ear Headphone<br>with Mic(Luscious Black)<br>45%
                    off</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>Rs.14,899</p>
                <a href="loginpg/checkoutform_fitplus_Treadmil.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/boat bluetooth.jpg" alt="">
                <h5>boAt Rockerz 255</h5>
                <br>
                <h4>boAt Rockerz 255 Sports in-Ear Bluetooth Neckband Earphone with Mic (Active Black)</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.949</p>
                <a href="loginpg/checkoutform_dumbell.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/boat airdopes.jpg" alt="">
                <h5>boAt Airdopes 441</h5>
                <br>
                <h4>TWS Ear-Buds with IWP Technology,<br>Up to 30H Total Playback</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.2699</p>
                <a href="loginpg/checkout_home_gym.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/boat.jpg" alt="">
                <h5>boAt Bassheads 242</h5>
                <br>
                <h4>boAt Bassheads 242 in Ear Wired Earphones<br>Mic(Active Black)</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/checkoutform_bands.html" class="btn">BUY &#8594;</a>
            </div>
        </div>
        <!--fourth products row ends-->


        <!--fifth products row start-->
        <h2 class="title">MICROMAX</h2>
        <div class="row">
            <div class="col-4">
                <img src="images/mobile1.jpeg" alt="">
                <h5>Micromax canvas 2 plus</h5>
                <br>
                <h4>Realme Narzo 20 PRO<br> (White Knight, 128gb)<br> (6gb RAM)</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                </div>
                <p>Rs.7595</p>
                <a href="loginpg/checkoutform_realme.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/mobile2.jpg" alt="">
                <h5>Micromax ione note</h5>
                <br>
                <h4>Motorola One Fusion+<br> (Moonlight White, 128gb)<br>(6gb RAM)</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/checkoutform_moto.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/mobile3.jpg" alt="">
                <h5>Micromax IN note 1</h5>
                <br>
                <h4>Samsung galaxy M31<br> (Space black, 128gb)<br> (8gb RAM)
                </h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/checkoutform_samsung.html" class="btn">BUY &#8594;</a>
            </div>
            <div class="col-4">
                <img src="images/mobile4.jpeg" alt="">
                <h5>Honor 9X</h5>
                <br>
                <h4>Honor 9X<br> (Midnight Black, 128gb)<br> (4gb RAM)</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>Rs.3695</p>
                <a href="loginpg/loginform.php" onclick="doSomething()" class="btn">BUY &#8594;</a>
            </div>
        </div>
        <!--fifth products row end-->

    </div>
    <!--last banner starts-->
    <div class="offer">
        <div class="small-container">
            <div class="row">
                <div class="col-2">
                    <img src="images/3d.png" alt="" class="offer-img">
                </div>
                <div class="col-2">
                    <p>Exclusively Available on SHOPPABLE</p>
                    <h1>Titan Watch Series 5</h1>
                    <small>
                        Buy latest, trendy and fashionable watches online at Titan E-Store. Choose from a wide range of
                        men, women, kids & couple watches.
                    </small>

                </div>
            </div>
        </div>
    </div>
    <!--last banner starts-->

    <div class="brands">
        <div class="samll-container">
            <div class="row">
                <div class="col-5">
                    <img src="images/skechers.png" alt="">
                </div>
                <div class="col-5">
                    <img src="images/canon.png" alt="">
                </div>
                <div class="col-5">
                    <img src="images/titan_.png" alt="">
                </div>
                <div class="col-5">
                    <img src="images/fastrack.png" alt="">
                </div>
                <div class="col-5">
                    <img src="images/honor.png" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <div class="app-logo">
                        <img src="images/playstore.png" alt="">
                        <img src="images/appstore.png" alt="">
                    </div>
                    <h3>Download our app</h3>
                    <p>Download App for Android and ios mobile phone.</p>

                </div>
                <div class="footer-col-2">
                    <img src="images/logo.jpg" alt="logo">
                    <p>Our purpose is to give the best quality products to the customer and bring them back and make
                        them happy.</p>
                </div>
                <div class="footer-col-2">
                    <h3>Useful Links</h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Post</li>
                        <li>Return Policy</li>
                        <li>Join Affiliate</li>
                    </ul>
                </div>
                <div class="footer-col-2">
                    <h3>Follow Us</h3>
                    <ul>
                        <li><img src="images/facebook.png"></li>
                        <li><img src="images/twitter.png"></li>
                        <li><img src="images/insta.png"></li>
                        <li><img src="images/youtube.png"></li>
                    </ul>
                </div>
            </div>
            <hr>
        </div>
    </div>
    <script src="script1.js"></script>
</body>

</html>