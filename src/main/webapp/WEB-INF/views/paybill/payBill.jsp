<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html> 
    <head> 
        <link rel="icon" href="images/favicon.png" type="image/x-icon">
        <jsp:include page="../components/css.jsp"></jsp:include>      
        </head> 

        <body> 
            <!-- Navigation -->
            <div class="fixed-header"> 
                <div class="container-fluid"> 
                    <div class="navbar-header"> 
                        <button type="button" class="navbar-toggle"> 
                            <span class="icon-bar"></span> 
                            <span class="icon-bar"></span> 
                            <span class="icon-bar"></span> 
                        </button>                 

                        <a class="external navbar-brand pull-left vlogo" rel="home" href="${pageContext.request.contextPath }/"> 

                        <img class="logo-size" src="images/newlogo.png">
                    </a>
                </div>             
                <nav class="main-menu vpadding"> 
                    <ul> 
                        <li>
                            <a class="external" href="${pageContext.request.contextPath }/index">HOME</a>
                        </li>                     
                        <li>
                            <a class="external" href="${pageContext.request.contextPath }/about">ABOUT US</a>
                        </li>                     
                        <li>
                            <a class="external" href="${pageContext.request.contextPath }/#plans">PLANS</a>
                        </li>                     
                        <li>
                            <a href="${pageContext.request.contextPath }/#home">PAY BILL</a>
                        </li>                     
                        <li>
                            <a class="external" href="${pageContext.request.contextPath }/zeno" target="_blank">MY ONE8</a>
                        </li>  
                        <!-- <li>
                            <a href="#"><span class="glyphicon glyphicon-search"></span></a>
                        </li>-->

                    </ul>                 
                </nav>             
            </div>         
        </div> 


        <!-- Main container -->
        <div class="container-fluid nopadding" > 
            <section class="col-md-12 col-lg-12 nopadding" id="home"> 
                <div class="row flex-row"  >
                    <div class="col-md-4 payheader paayheaderpadding "style="background-image: url(images/faq2.png);">
                        <h1 class="h1-font">Pay bill</h1>
                    </div>
                    <div class="col-md-8  paayheaderpadding " style="background-color: #e2e2e2"> </div>
                </div>             
            </section>

            <section class="col-md-12 col-lg-12 nopadding"> 
                <div class="row flex-row" style="background-color:#fff; margin: 2%; padding-top: 3%; padding-bottom: 3%; ">
                    <div class="col-md-4 valign "> </div>
                    <div class="col-md-7 col-xs-12  nopadding" style=" float:right; box-shadow: 0px 2px 5px #BDBDBD;" >
                        <form:form role="form" action="payBillRequest" method="post" modelAttribute="payBillDetails" >
                            <div class="col-md-12">
                                <div class="col-md-1"></div>
                                <div class="col-md-10" style="text-align:left;">
                                    <form:input path="account_id" type="text" id="account_id" placeholder="One8 ID " required="required"/>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-1"></div>
                                <div class="col-md-10" style="text-align:left;">
                                    <form:input path="email_id" type="text" id="email_id" placeholder="Email ID " required="required"/>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="col-md-1"></div>
                                <div class="col-md-10" style="text-align:left;">
                                    <form:input path="amount" type="text" id="amount" placeholder="Amount"  required="required"/>
                                </div>
                            </div>
                            <div class="row row-white" style="padding-bottom:3%;"> </div>
                            <div class="col-md-8">
                                <h5 style="color:red; text-align: center;">
                                    <b>
                                        <c:if test="${ not empty mailIDMessage}">${mailIDMessage}</c:if>
                                        <c:if test="${ not empty amountMessage}">${amountMessage}</c:if>
                                        </b>
                                    </h5>
                                </div>
                                <div class="col-md-3" align="right" style="padding-right:3.75%;">
                                    <button type="submit" class="btn btn-danger btn-xl buttonv"> PAY BILL </button>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="row row-white" style="padding-bottom:2%;"> </div>
                        </form:form>
                    </div>
                    <div class="col-md-1"></div>
                </div>             
            </section>
        </div>
        <jsp:include page="../components/float.jsp"></jsp:include>

            <!-- Main container end -->

            <!-- Footer -->
        <jsp:include page="../components/footer.jsp"></jsp:include>

        <script src="js/jquery.min.js"></script>     
        <script src="js/bootstrap.min.js"></script>     
        <script src="js/jquery.singlePageNav.min.js"></script>     
        <script src="js/simple-slider.js"></script>
        <script src="js/nav.js"></script>     

    </body>
</html>