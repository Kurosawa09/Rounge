
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css2?family=Caveat+Brush&family=Poppins:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="/resources/style.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/swiper.css" type="text/css" />

	<link rel="stylesheet" href="/resources/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="/resources/css/custom.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/calendar.css" type="text/css" />

	<!-- NonProfit Demo Specific Stylesheet -->
	<link rel="stylesheet" href="/resources/css/colors.php?color=C6C09C" type="text/css" /> <!-- Theme Color -->
	<link rel="stylesheet" href="/resources/demos/nonprofit/css/fonts.css" type="text/css" />
	<link rel="stylesheet" href="/resources/demos/nonprofit/nonprofit.css" type="text/css" />
	<!-- / -->

	<meta name='viewport' content='initial-scale=1, viewport-fit=cover'>

	<!-- Document Title
	============================================= -->
	<title>Causes - NonProfit Demo | Canvas</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="header-size-sm border-bottom-0" data-sticky-shrink="false">
			<div id="header-wrap">
				<div class="container">
					<div class="header-row justify-content-lg-between">

						<!-- Logo
						============================================= -->
						<div id="logo" class="me-lg-5">
							<a href="/" class="standard-logo" data-dark-logo="demos/business/images/logo-dark.png"><img src="/resources/demos/business/images/logo.png" alt="Canvas Logo"></a>
							<a href="/" class="retina-logo" data-dark-logo="demos/business/images/logo-dark@2x.png"><img src="/resources/demos/business/images/logo@2x.png" alt="Canvas Logo"></a>
						</div><!-- #logo end -->

						<div class="header-misc">
							<a href="demo-nonprofit-causes-single.html" class="button button-rounded button-light"><div>Donate</div></a>
						</div>

						<div id="primary-menu-trigger">
							<svg class="svg-trigger" viewBox="0 0 100 100"><path d="m 30,33 h 40 c 3.722839,0 7.5,3.126468 7.5,8.578427 0,5.451959 -2.727029,8.421573 -7.5,8.421573 h -20"></path><path d="m 30,50 h 40"></path><path d="m 70,67 h -40 c 0,0 -7.5,-0.802118 -7.5,-8.365747 0,-7.563629 7.5,-8.634253 7.5,-8.634253 h 20"></path></svg>
						</div>

						<!-- Primary Navigation
						============================================= -->
						<nav class="primary-menu with-arrows me-lg-auto">

							<ul class="menu-container align-self-start">
								<li class="menu-item"><span class="menu-bg col-auto align-self-start d-flex"></span></li>
								<li class="menu-item"><a class="menu-link" href="/"><div>Home</div></a></li>
								<li class="menu-item current"><a class="menu-link" href="/test/about"><div>About</div></a></li>
								<li class="menu-item"><a class="menu-link" href="/test/causes"><div>Causes</div></a>
									<ul class="sub-menu-container">
										<li class="menu-item"><a class="menu-link" href="/test/causesSingle"><div>Single Page</div></a></li>
									</ul>
								</li>
								<li class="menu-item"><a class="menu-link" href="/test/event"><div>Events</div></a></li>
								<li class="menu-item"><a class="menu-link btn-contact" href="#"><div>Contact</div></a></li>
							</ul>

						</nav><!-- #primary-menu end -->

					</div>
				</div>
			</div>
			<div class="header-wrap-clone"></div>
		</header><!-- #header end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap py-0">

				<div class="section m-0 p-0 row align-items-stretch clearfix" style="background-color: rgba(198,192,156, 0.15);">
					<div class="col-lg-4 dark d-flex flex-column align-items-center center justify-content-center" style="background: linear-gradient(rgba(0,0,0,.3), rgba(0,0,0,.5)), url('/resources/demos/nonprofit/images/others/event.jpg') center center repeat; background-size: cover; min-height: 300px;">
						<h2 class="display-4 px-4 fw-bold mb-4 d-block">Events Overview</h2>
					</div>
					<div class="col-lg-8 col-padding">
						<div class="events-calendar">
							<div class="events-calendar-header clearfix">
								<div class="calendar-month-year d-flex text-start justify-content-between align-items-center w-100">
									<div>
										<span id="calendar-month" class="calendar-month text-dark"></span>
										<span id="calendar-year" class="calendar-year text-dark"></span>
									</div>
									<nav>
										<span id="calendar-prev" class="calendar-prev bg-color"><i class="icon-chevron-left text-dark"></i></span>
										<span id="calendar-next" class="calendar-next bg-color"><i class="icon-chevron-right text-dark"></i></span>
										<span id="calendar-current" class="calendar-current bg-color" title="Got to current date"><i class="icon-reload text-dark"></i></span>
									</nav>
								</div>
							</div>
							<div id="calendar" class="fc-calendar-container"></div>
						</div>

					</div>
				</div>

			</div>
		</section><!-- #content end -->

		<!-- Footer
		============================================= -->
		<footer id="footer" style="background-color: #002D40;">

			<div class="container">

				<!-- Footer Widgets
				============================================= -->
				<div class="footer-widgets-wrap dark clearfix" style="background: radial-gradient(rgba(0,45,64,.5), rgba(0,45,64,.1), rgba(0,45,64,.5)), url('/resources/demos/nonprofit/images/others/footer.jpg') repeat center center / cover;  padding: 150px 0">
					<div class="mx-auto center" style="max-width: 700px;">
						<h2 class="display-2 fw-bold text-white mb-0 ls1 font-secondary mb-4"><i class="icon-heart d-block mb-3"></i>Help the Homeless &amp; Hungry People.</h2>
						<a href="demo-nonprofit-causes-single.html" class="button button-rounded button-xlarge button-white bg-white button-light text-dark shadow nott ls0 ms-0 mt-5">Donate Now</a>
					</div>
				</div>

			</div>

			<!-- Copyrights
			============================================= -->
			<div id="copyrights" class="bg-color">

				<div class="container clearfix">

					<div class="row justify-content-between align-items-center">
						<div class="col-md-6">
							Copyrights &copy; 2020 All Rights Reserved by Canvas Inc.<br>
							<div class="copyright-links"><a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a></div>
						</div>

						<div class="col-md-6 d-md-flex flex-md-column align-items-md-end mt-4 mt-md-0">
							<div class="copyrights-menu copyright-links clearfix">
								<a href="#">About</a>/<a href="#">Features</a>/<a href="#">FAQs</a>/<a href="#">Contact</a>
							</div>
						</div>
					</div>

				</div>

			</div><!-- #copyrights end -->

		</footer><!-- #footer end -->

		<!-- Floating Contact
		============================================= -->
		<div class="floating-contact-wrap">
			<div class="floating-contact-btn shadow">
				<i class="floating-contact-icon btn-unactive icon-envelope21"></i>
				<i class="floating-contact-icon btn-active icon-line-plus"></i>
			</div>
			<div class="floating-contact-box">
				<div id="q-contact" class="widget quick-contact-widget clearfix">
					<div class="floating-contact-heading bg-color p-4 rounded-top">
						<h3 class="mb-0 font-secondary h2 ls0">Quick Contact 👋</h3>
						<p class="mb-0">Get in Touch with Us</p>
					</div>
					<div class="form-widget bg-white" data-alert-type="false">
						<div class="form-result"></div>
						<div class="floating-contact-loader css3-spinner" style="position: absolute;">
							<div class="css3-spinner-bounce1"></div>
							<div class="css3-spinner-bounce2"></div>
							<div class="css3-spinner-bounce3"></div>
						</div>
						<div id="floating-contact-submitted" class="p-5 center">
							<i class="icon-line-mail h1 color"></i>
							<h4 class="fw-normal mb-0 font-body">Thank You for Contact Us! Our Team will contact you asap on your email Address.</h4>
						</div>
						<form class="mb-0" id="floating-contact" action="include/form.php" method="post" enctype="multipart/form-data">
							<div class="input-group mb-3">
								<span class="input-group-text bg-transparent"><i class="icon-user-alt"></i></span>
								<input type="text" name="floating-contact-name" id="floating-contact-name" class="form-control required" value="" placeholder="Enter your Full Name">
							</div>
							<div class="input-group mb-3">
								<span class="input-group-text bg-transparent"><i class="icon-at"></i></span>
								<input type="email" name="floating-contact-email" id="floating-contact-email" class="form-control required" value="" placeholder="Enter your Email Address">
							</div>
							<div class="input-group mb-3">
								<span class="input-group-text bg-transparent"><i class="icon-comment21"></i></span>
								<textarea name="floating-contact-message" id="floating-contact-message" class="form-control required" cols="30" rows="4"></textarea>
							</div>
							<input type="hidden" id="floating-contact-botcheck" name="floating-contact-botcheck" value="" />
							<button type="submit" name="floating-contact-submit" class="btn btn-dark w-100 py-2">Send Message</button>
							<input type="hidden" name="prefix" value="floating-contact-">
							<input type="hidden" name="subject" value="Messgae From Floating Contact">
							<input type="hidden" name="html_title" value="Floating Contact Message">
						</form>
					</div>
				</div>
			</div>
		</div>

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- JavaScripts
	============================================= -->
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/plugins.min.js"></script>
	<script src="/resources/js/jquery.calendario.js"></script>
	<script src="/resources/demos/nonprofit/js/events.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/js/functions.js"></script>

	<script>
		jQuery(document).ready( function($){
			var elementParent = $('.floating-contact-wrap');
			$('.floating-contact-btn, .btn-contact').off( 'click' ).on( 'click', function(e) {
				elementParent.toggleClass('active', );
				e.preventDefault(e);
			});
		});

		var cal = $( '#calendar' ).calendario( {
			onDayClick : function( $el, $contentEl, dateProperties ) {

				for( var key in dateProperties ) {
					console.log( key + ' = ' + dateProperties[ key ] );
				}

			},
			caldata : canvasEvents
		}),
		$month = $( '#calendar-month' ).html( cal.getMonthName() ),
		$year = $( '#calendar-year' ).html( cal.getYear() );

		$( '#calendar-next' ).on( 'click', function() {
			cal.gotoNextMonth( updateMonthYear );
		} );
		$( '#calendar-prev' ).on( 'click', function() {
			cal.gotoPreviousMonth( updateMonthYear );
		} );
		$( '#calendar-current' ).on( 'click', function() {
			cal.gotoNow( updateMonthYear );
		} );

		function updateMonthYear() {
			$month.html( cal.getMonthName() );
			$year.html( cal.getYear() );
		};
	</script>


</body>
</html>