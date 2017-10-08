<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <link rel="icon" href="images/favicon.png" type="image/x-icon">
        <jsp:include page="../components/css.jsp"></jsp:include>      
        </head>


        <body>

            <!-- Navigation -->
        <jsp:include page="../components/footerpagenav.jsp"></jsp:include>   


            <!-- Bill payment -->
        <section class="col-md-12 col-lg-12 nopadding" id="home"> 
            <div class="row flex-row"  >
                <div class="col-md-4 payheader paayheaderpadding "style="background-image: url(images/faq2.png);">
                    <h1 class="h1-font"> Bill payment</h1>
                </div>
                <div class="col-md-7 col-xs-12 paayheaderpadding ">
                    <h1 class="h1-font"> Your transaction was successful. &nbsp;<img height="40" width="40"  alt="Check Image" src="images/check.png"></h1>
                </div>

            </div>             
        </section>
        <!-- Main container -->
        <div class="container-fluid nopadding"> 
            <!-- Never stop -->
            <section class="col-md-12 col-lg-12 nopadding"> 
                <div class="row flex-row" style="background-color:#fff; ">
                    <div class="col-md-4 col-xs-12 valign ">
                        <p class="payp">Payment Summary</p>
                    </div>
                    <div class="col-md-7 col-xs-12 nopadding" style=" margin:1%; padding:2% ; float:right; background-color:#0072ce; " >
                        <p class="payp">Payment Summary</p>
                        <br>

                        <p class="payp1"> Your payment of &#8377. /- was unsuccessful.</p>
                        <br>

                        <p class="payp">TRANSACTION ID</p>

                        <p class="payp1">1234</p>
                    </div>
                </div>             
            </section>


            <!-- Footer -->
        <jsp:include page="../components/footer.jsp"></jsp:include>

        <script src="js/jquery.min.js"></script>     
        <script src="js/bootstrap.min.js"></script>     
        <script src="js/jquery.singlePageNav.min.js"></script>     
        <script src="js/simple-slider.js"></script>
        <script src="js/nav.js"></script>     
    </body>
</html>