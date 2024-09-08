<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>ABC Restaurant - Index </title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Quicksand:400,700%7CCabin:400%7CDancing+Script" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Owl Carousel -->
		<link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
		<link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
<body>



<!-- Header -->
<header id="header">

    <!-- Top nav -->
    <div id="top-nav">
        <div class="container">

            <!-- logo -->
            <div class="logo">
                <a href="index.jsp"><img src="./img/logo1.png" alt="logo"></a>
            </div>
            <!-- logo -->

            <!-- social links -->
            <ul class="social-nav">
                <li><a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="https://www.twitter.com" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="https://plus.google.com" target="_blank"><i class="fa fa-google-plus"></i></a></li>
            </ul>
            <!-- /social links -->

            <!-- Mobile toggle -->
            <button class="navbar-toggle">
                <span></span>
            </button>
            <!-- Mobile toggle -->

            <!-- contact nav -->
            <ul class="contact-nav nav navbar-nav">
                <li><a href="tel:011-12345-67"><i class="fa fa-phone"></i> 011-12345-67</a></li>
                <li><a href="#"><i class="fa fa-map-marker"></i> DS Senanayake Veediya, Kandy</a></li>
            </ul>
            <!-- /contact nav -->

        </div>
    </div>
    <!-- /Top nav -->

    <!-- Bottom nav -->
    <div id="bottom-nav">
        <div class="container">
            <nav id="nav">

                <!-- nav -->
                <ul class="main-nav nav navbar-nav">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="index.jsp#about">About</a></li>
                    <li><a href="index.jsp#menu">Menu</a></li>
                    <li><a href="index.jsp#book-a-table">Book A Table</a></li>
                    <li><a href="index.jsp#offers">Offers</a></li>
                    <li><a href="index.jsp#events">Events & Services</a></li>
                    <li><a href="index.jsp#contact">Contact</a></li>
                </ul>
                <!-- /nav -->

                <!-- button nav -->
                <ul class="cta-nav">
                 <li><a href="reservation?action=add" class="main-button">Reservation</a></li>
                 
                    <!-- Display user's name if logged in -->
                    <c:if test="${sessionScope.customer != null}">
                        <li><a href="#"><i class="fa fa-user"></i> Welcome, ${sessionScope.customer.name}!</a></li>
                    </c:if>
                    <!-- Login/Logout Button -->
                    <c:choose>
                        <c:when test="${sessionScope.customer != null}">
                            <li><a href="customer?action=logout" class="main-button">Logout</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="customer?action=login" class="main-button">Login</a></li>
                        </c:otherwise>
                    </c:choose>
                    
                </ul>
                <!-- /button nav -->

            </nav>
        </div>
    </div>
    <!-- /Bottom nav -->

</header>
<!-- /Header -->

	
		

		<!-- Home -->
		<div id="home" class="banner-area">

			<!-- Backgound Image -->
			<div class="bg-image bg-parallax overlay" style="background-image:url(./img/background02.jpg)"></div>
			<!-- /Backgound Image -->

			<div class="home-wrapper">

				<div class="col-md-10 col-md-offset-1 text-center">
					<div class="home-content">
						<h1 class="white-text">Welcome To ABC Restaurant</h1>
						<h4 class="white-text lead">Experience exceptional dining with a blend of tradition and innovation at ABC Restaurant.</h4>
						<a href="index.jsp#menu"><button class="main-button">Discover Menu</button></a>
					</div>
				</div>

			</div>

		</div>
		<!-- /Home -->
		
		

		<!-- About -->
		<div id="about" class="section">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<!-- section header -->
					<div class="section-header text-center">
						<h4 class="sub-title">About Us</h4>
						<h2 class="title">The ABC Restaurant</h2>
					</div>
					<!-- /section header -->

					<!-- about content -->
					<div class="col-md-5">
						<h4 class="lead">Welcome to ABC Restaurant. Since 2024, Offering Traditional Dishes of the highest quality.</h4>
					</div>
					<!-- /about content -->

					<!-- about content -->
					<div class="col-md-7">
						<p>At ABC Restaurant, we craft each dish with passion and precision, blending authentic flavors with modern culinary techniques. Join us for a memorable dining experience where tradition meets innovation.</p>
					</div>
					<!-- /about content -->

					<!-- Gallery Slider -->
				
					<div class="col-md-12">
						<div id="Gallery" class="owl-carousel owl-theme">
						   

							<!-- single column -->
							<div class="Gallery-item">

								<!-- single image -->
								<div class="Gallery-img" style="background-image:url(./img/image01.jpg)"></div>
								<!-- /single image -->

							</div>
							<!-- single column -->

							<!-- single column -->
							<div class="Gallery-item">

								<!-- single image -->
								<div class="Gallery-img" style="background-image:url(./img/image02.jpg)"></div>
								<!-- /single image -->

								<!-- single image -->
								<div class="Gallery-img" style="background-image:url(./img/image03.jpg)"></div>
								<!-- /single image -->

							</div>
							<!-- single column -->

							<!-- single column -->
							<div class="Gallery-item">

								<div class="item-column">
									<!-- single image -->
									<div class="Gallery-img" style="background-image:url(./img/image04.jpg)"></div>
									<!-- /single image -->

									<!-- single image -->
									<div class="Gallery-img" style="background-image:url(./img/image05.jpg)"></div>
									<!-- /single image -->
								</div>

								<div class="item-column">
									<!-- single image -->
									<div class="Gallery-img" style="background-image:url(./img/image06.jpg)"></div>
									<!-- /single image -->

									<!-- single image -->
									<div class="Gallery-img" style="background-image:url(./img/image07.jpg)"></div>
									<!-- /single image -->
								</div>

							</div>
							<!-- /single column -->

						</div>
					</div>
					<!-- /Gallery Slider -->


				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</div>
		<!-- /About -->



<!-- ------------------- -->


<!-- Menu -->
<div id="menu" class="section">
  
  <!-- Background Image -->
  <div class="bg-image bg-parallax overlay" style="background-image:url(./img/background01.jpg)"></div>
  <!-- /Background Image -->

  <!-- container -->
  <div class="container" data-aos="fade-up">

    <!-- row -->
    <div class="row">

      <!-- header and subtitle -->
      <div class="section-header text-center">
        <h4 class="sub-title">Discover</h4>
        <h2 class="title white-text">Our Menu</h2>
      </div>

      <!-- menu nav -->
      <div class="row" data-aos="fade-up" data-aos-delay="100">
        <div class="col-lg-12 d-flex justify-content-center">
          <ul id="menu-filters">
            <li data-filter="*" class="filter-active">All</li>
            <li data-filter=".filter-Breakfast">Breakfast</li>
            <li data-filter=".filter-Lunch">Lunch</li>
            <li data-filter=".filter-Dinner">Dinner</li>
            <li data-filter=".filter-Dessert">Desserts</li>
            <li data-filter=".filter-Beverages">Beverages</li>
          </ul>
        </div>
      </div>
      <!-- /menu nav -->

      <!-- menu content -->
    <div class="row menu-container" data-aos="fade-up" data-aos-delay="200">
      <c:forEach var="product" items="${products}">
        <div class="col-lg-6 menu-item filter-${product.category}">
          <img src="${product.imagePath}" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">${product.name}</a><span>Rs ${product.price}</span>
          </div>
          <div class="menu-ingredients">
            ${product.description}
          </div>
        </div>
      </c:forEach>
    </div>
      <!-- /menu content -->

    </div>
    <!-- /row -->

  </div>
  <!-- /container -->

</div>
<!-- /Menu -->

		
<!-- /------------------- -->



		<!-- Reservation -->
		<div id="book-a-table" class="section">

			<!-- Backgound Image -->
			<div class="bg-image" style="background-image:url(./img/background03.jpg)"></div>
			<!-- /Backgound Image -->

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">
				
				
<!-- reservation form -->
<div class="col-md-6 col-md-offset-1 col-sm-10 col-sm-offset-1">
    <form action="reservation?action=add" method="post" role="form" class="reserve-form row" data-aos="fade-up" data-aos-delay="100">
        <div class="section-header text-center">
            <h4 class="sub-title">Reservation</h4>
            <h2 class="title white-text">Book Your Table</h2>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="name" class="white-text">Name:</label>
                <input class="input form-control text-white" type="text" placeholder="Name" id="name" name="name" style="color: white;" required>
            </div>
            <div class="form-group">
                <label for="phone" class="white-text">Phone:</label>
                <input class="input form-control text-white" type="tel" placeholder="Phone" id="phone" name="phone" style="color: white;" required>
            </div>
            <div class="form-group">
                <label for="date" class="white-text">Date:</label>
                <input class="input form-control text-white" type="date" id="date" name="date" style="color: white;" required>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="email" class="white-text">Email:</label>
                <input class="input form-control text-white" type="email" placeholder="Email" id="email" name="email" style="color: white;" required>
            </div>
            <div class="form-group mt-3">
                <label for="people" class="white-text">Number of People</label>
                <input class="input form-control text-white" type="number" name="people" id="people" placeholder="Number of people" style="color: white;" required>
            </div>
            <div class="form-group">
                <label for="time" class="white-text">Time:</label>
                <input class="input form-control text-white" type="time" id="time" name="time" style="color: white;" required>
            </div>
        </div>
        
            <div class="form-group">
                <label for="message" class="white-text" >Message</label>
                <textarea name="message" class="input form-control text-white" id="message" placeholder="Enter your message" style="color: white;"required></textarea>
            </div>

        <div class="col-md-12 text-center">
            <button type="submit" class="main-button">Book Now</button>
            <!-- Success Message -->
            <div id="success-message" class="mt-3" style="display: none;">
                <p class="text-white">Your booking request has been sent!</p>
            </div>
        </div>
    </form>
</div>
<!-- /reservation form -->

<script>
    document.querySelector('form').addEventListener('submit', function(event) {
        // Prevent the default submission temporarily to show the success message
        event.preventDefault();

        // Show the success message
        const successMessage = document.getElementById('success-message');
        successMessage.style.display = 'block';

        // Hide the success message after 2 seconds and then submit the form
        setTimeout(function() {
            successMessage.style.display = 'none';
            
            // Now submit the form to send data to the server
            event.target.submit();
        }, 2000); // 2000 milliseconds = 2 seconds
    });
</script>






					<!-- opening time -->
					<div class="col-md-4 col-md-offset-0 col-sm-10 col-sm-offset-1">
						<div class="opening-time row">
							<div class="section-header text-center">
								<h2 class="title white-text">Opening Time</h2>
							</div>
							<ul>
								<li>
									<h4 class="day">Sunday</h4>
									<h4 class="hours">8:00 am – 11:00 pm</h4>
								</li>
								<li>
									<h4 class="day">Monday</h4>
									<h4 class="hours">8:00 am – 11:00 pm</h4>
								</li>
								<li>
									<h4 class="day">Tuesday</h4>
									<h4 class="hours">8:00 am – 11:00 pm</h4>
								</li>
								<li>
									<h4 class="day">Wednesday</h4>
									<h4 class="hours">8:00 am – 11:00 pm</h4>
								</li>
								<li>
									<h4 class="day">Thursday</h4>
									<h4 class="hours">8:00 am – 11:00 pm</h4>
								</li>
								<li>
									<h4 class="day">Friday</h4>
									<h4 class="hours">Closed</h4>
								</li>
								<li>
									<h4 class="day">Saturday</h4>
									<h4 class="hours">Closed</h4>
								</li>
							</ul>
						</div>
					</div>
					<!-- /opening time -->

				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</div>
		<!-- /Reservation -->




		<!-- Offers-->
		<div id="offers" class="section">

			<!-- container -->
			<div class="container" data-aos="fade-up">

				<!-- row -->
				<div class="row">

					<!-- section header -->
					<div class="section-header text-center">
						<h4 class="sub-title">Offers</h4>
						<h2 class="title">Check Our Special Offers</h2>
					</div>
					<!-- /section header -->

    <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="100">
      <div class="col-lg-9 mt-4 mt-lg-0">
        <div class="swiper-container">
          <div class="swiper-wrapper">

            <c:forEach var="offer" items="${offers}">
    <div class="swiper-slide">
        <div class="row">
            <div class="col-lg-8 details order-2 order-lg-1">
                <h3>${offer.name}</h3>
                <p>${offer.description}</p>
            </div>
            <div class="col-lg-4 text-center order-1 order-lg-2">
                <img src="${offer.image}" alt="Offer Image" class="img-fluid">
            </div>
        </div>
    </div>
</c:forEach>
            

          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</div>
		<!-- /Offers-->




		<!-- Events & Services-->
		<div id="events" class="section">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<!-- section header -->
					<div class="section-header text-center">
						<h4 class="sub-title">Special Events & Services</h4>
						<h2 class="title">Upcoming Events & Services</h2>
					</div>
					<!-- /section header -->

        <div class="events-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <c:forEach var="service" items="${services}">
    <div class="swiper-slide">
        <div class="row event-item">
            <div class="col-lg-6">
                <img src="${service.image}" class="img-fluid" alt="${service.serviceName} Image">
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0 content">
                <h3>${service.serviceName}</h3>
                
                <p class="fst-italic text-justify">
                    ${service.description}
                </p>
            </div>
        </div>
    </div>
</c:forEach><!-- End testimonial item -->
     </div>
          <div class="swiper-pagination"></div>
        </div>

				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</div>
		<!-- /Event Service-->



    
		<!-- Contact -->
		<div id="contact" class="section">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<div class="col-md-5 col-md-offset-7">
						<div class="section-header">
							<h4 class="sub-title">Contact Us</h4>
							<h2 class="title">Get In Touch</h2>
						</div>
						<div class="contact-content">
							<p>We'd love to hear from you! Whether you have questions about our menu, need assistance with a reservation, or just want to give us feedback, our team is here to help. Feel free to reach out using any of the methods below.</p>
							<h3>Tel: <a href="#">011-12345-67</a></h3>
							<p>Address: 258/4/1, DS Senanayake Veediya, Kandy 20000</p>
							<p>Email: <a href="#">abcrestoo1@email.com</a></p>
							<ul class="list-inline" style="list-style: none; padding: 0; margin: 0;">
								<li style="display: inline-block; margin: 0 5px;"><p>Follow Us:</p></li>
								<li style="display: inline-block; margin: 0 5px;"><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li style="display: inline-block; margin: 0 5px;"><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li style="display: inline-block; margin: 0 5px;"><a href="#"><i class="fa fa-google-plus"></i></a></li>
							  </ul>
						</div>
					</div>

				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

			<!-- map -->
			<div id="map"></div>
			<!-- /map -->

		</div>
		<!-- Contact -->




		<!-- Footer -->
		<footer id="footer">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<!-- copyright -->
					<div class="col-md-6">
						<span class="copyright"> © Copyright ABC Restaurant 2024 | All rights reserved </span>
					</div>
					<!-- /copyright -->

					<!-- footer nav -->
					<div class="col-md-6">
						<nav class="footer-nav">
							<a href="index.jsp">Home</a>
							<a href="index.jsp#about">About</a>
                            <a href="index.jsp#menu">Menu</a>
                            <a href="index.jsp#book-a-table">Book A Table</a>
                            <a href="index.jsp#offers">Offers</a>
                            <a href="index.jsp#events">Events & Services</a>
							
						</nav>
					</div>
					<!-- /footer nav -->

				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</footer>
		<!-- /Footer -->




		<!-- Preloader -->
		<div id="preloader">
			<div class="preloader">
				<span></span>
				<span></span>
				<span></span>
			</div>
		</div>
		<!-- /Preloader -->


		<!-- jQuery Plugins -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/owl.carousel.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
		<script type="text/javascript" src="js/google-map.js"></script>
		<script type="text/javascript" src="js/main.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
