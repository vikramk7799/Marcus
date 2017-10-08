<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html> 
    <head> 
        <link rel="icon" href="images/favicon.png" type="image/x-icon">
        <jsp:include page="components/css.jsp"></jsp:include>      
        </head> 
        <body> 
            <!-- Navigation -->
        <jsp:include page="components/footerpagenav.jsp"></jsp:include>   
            <section class="col-md-12 col-lg-12 nopadding" id="home"> 
                <div class="row flex-row" style="background-image: url(images/faq1.png);" >
                    <div class="col-md-12 faqheader faaqheaderpadding ">
                        <h1 class="h1-font"> New Connection</h1>
                    </div>
                </div>             
            </section>
            <!-- Main container -->
            <div class="container-fluid nopadding"> 
                <!-- Never stop -->
                <section class="col-md-12 col-lg-12 nopadding" > 
                    <div class="row row-white" style="padding-bottom:3%;"> </div>
                <form:form class="row" action="newconnectionRequestPage" method="post" modelAttribute="newConnectionDetails">


                    <div class="col-md-12 ">
                        <div class="col-md-3 "></div>
                        <div class="col-md-6  " style="text-align:left;">
                            <form:input type="text" required="required" path="name" id="Name" name="name" placeholder="Name" />
                        </div>
                    </div>
                    <div class="col-md-12 ">
                        <div class="col-md-3 "></div>
                        <div class="col-md-6  " style="text-align:left;">
                            <form:input type="email" required="required" path="email_id" id="email_id" name="email_id" placeholder="Email" />
                        </div>
                    </div>
                    <div class="col-md-12 ">
                        <div class="col-md-3 "></div>
                        <div class="col-md-6  " style="text-align:left;">
                            <form:input type="text" required="required" path="mobile" id="mobile" name="mobile" placeholder="Mobile" />
                        </div>
                    </div>
                    <div class="col-md-12 ">
                        <div class="col-md-3 "></div>
                        <div class="col-md-6  " style="text-align:left;">
                            <form:input type="text" required="required" path="city" id="city" name="city" placeholder="City" />
                        </div>
                    </div>
                    <div class="col-md-12 ">
                        <div class="col-md-3 "></div>
                        <div class="col-md-6  " style="text-align:left;">
                            <form:input type="text" required="required" path="pincode" id="pincode" name="pincode" placeholder="Pincode" />
                        </div>
                    </div>
                    <div class="col-md-12  "></div>
                    <div class="row row-white" style="padding-bottom:3%;"> </div>
                    <div class="col-md-9 buttonright" align="right" style="padding-right:1.75%;">
                        <button id="newconnection" type="submit" class="btn btn-danger btn-xl buttonv">SEND NOW</button>
                        <h3 style="color:green; text-align: center;">
                            <b>
                                <c:if test="${ not empty msg2}">${msg2}</c:if>
                                </b>
                            </h3>
                        </div>

                </form:form>

            </section>

        </div>

        <jsp:include page="components/floatnew.jsp"></jsp:include>

            <!-- Main container end -->

            <!-- Footer -->
        <jsp:include page="components/footer.jsp"></jsp:include>

        <script src="js/jquery.min.js"></script>     
        <script src="js/bootstrap.min.js"></script>     
        <script src="js/jquery.singlePageNav.min.js"></script>     
        <script src="js/simple-slider.js"></script>
        <script src="js/nav.js"></script>     

    </body>
</html>