<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html> 
    <head> 
        <link rel="icon" href="images/favicon.png" type="image/x-icon">
        <jsp:include page="components/css.jsp"></jsp:include>      
        </head> 
        <body> 
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
                            <a href="${pageContext.request.contextPath }/#home">ABOUT US</a>
                        </li>                     
                        <li>
                            <a class="external" href="${pageContext.request.contextPath }/#plans">PLANS</a>
                        </li>                     
                        <li>
                            <a class="external" href="${pageContext.request.contextPath }/payBill">PAY BILL</a>
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
        <div id="v" class="container-fluid nopadding"> 
            <!-- We are One8 -->
            <section class="col-md-12 col-lg-12 nopadding" id="home"> 
                <div class="row flex-row" style="background-color:#0066cc; ">
                    <div class="col-md-4 valign ">
                        <div>
                            <h1 style="color:white; text-align: center;">We are One8</h1> 
                            <p style="color:white; text-align: center; padding: 0px 20px 0px 20px;">
                            We are a next-generation hyper-convergence technology company and we’re here to  enable the most intelligent, intuitive and transparent broadband network. That's geek speak for an internet experience which gives you lag-free access to the best the world Wide Web offers at the highest quality possible on your devices. </p>
                        </div>
                    </div>
                    <div class="col-md-8 nopadding" style="float:right;">
                        <img id="heroImage" src="images/we_are_one8.jpg" class="img-responsive img-height" />
                    </div>
                </div>             
            </section>

            <!-- Presenting the network that never stops -->
            
             <section class="col-md-12 col-lg-12 nopadding" id="neverstops">
                <div class="row" style="padding-top:30px; padding-bottom:20px;">
                    <h1 class="h1-font font-black text-align-center">Presenting the network that never stops</h1>
                </div>
                <div class="row row-white" style="padding-bottom:25px;">
                    <div class="col-md-1"> </div>
                    <div class="col-md-10">
                        <div align="center" style="padding-bottom:10px;">
                            <img class="center-block" src="images/arrow_image.png" /> 
                        </div>
                        <div class="col-md-2 nopadding"></div> 
                        <div class="col-md-8 nopadding">
                            <p style=" text-align: center; padding-top:20px; padding-bottom:20px;">
                                Build a path breaking cloud platform, connect with experienced infrastructure partners, 
                        enable telco-grade networks — that’s how we did it.
                        We're a technology-led team and nothing excites us more than the next big invention. 
                        With deep experience in the traditionally business-led telco industry, 
                        we started One8 to change the paradigm. </div>
                        <div class="col-md-2 nopadding" ></div> 
                    </div>
                   
                    <div class="col-md-1"> </div>
                </div> 
            </section>

            <!-- We’re driven by analtyics -->
            <section class="col-md-12 col-lg-12 nopadding" id="analtyics"> 
                <div class="row flex-row" style="background-color:#ffcc00;">
                    <div class="col-md-8 nopadding row-grey">
                        <img id="section3" src="images/driven_by_analtyics.jpg" alt="never slow down" class="img-responsive img-height" /> 
                    </div>
                    <div class="col-md-4 valign">
                        <div>
                            <h1 style="text-align:center; color:white;"> We’re driven <br> by analytics</h1> 
                            <p style="text-align:center; color:white; padding: 0px 20px 0px 20px;">That's what makes all the difference. 
                                Our advanced cloud-based analytics 
                                technology continuously monitors 
                                usage. This means that not only can 
                                we ensure that every user gets the 
                                right speed for the best experience, 
                                but that we can predict a breakdown 
                                well in advance and fix it before you 
                                feel it. When it comes to network, 
                                fast and steady wins the race. </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- We believe you deserve to know -->
            <section class="col-md-12 col-lg-12 nopadding" id="webelieve">
                <div class="row" style="padding-top:30px; padding-bottom:20px;">
                    <h1 class="h1-font font-black text-align-center">We believe you deserve to know</h1>
                </div>
                <div class="row row-white" style="padding-bottom:25px;">
                    <div class="col-md-1"> </div>
                    <div class="col-md-10">
                        <div align="center" style="padding-bottom:20px;">
                            <img class="center-block" src="images/cube_image.png" /> 
                        </div>
                        <div class="col-md-2 nopadding"></div> 
                        <div class="col-md-8 nopadding">
                            <p style=" text-align: center; padding-top:20px; padding-bottom:20px;">To know what you’re paying for. To know where your data goes. 
                                That’s the reason why our data plans are exactly about that - data. Choose any plan, rest assured of an unparalleled streaming, surfing or downloading experience. 
                                No unnecessary speed caps (other than FUP) and no inaccurate speed tests. 
                                Starting with simple plans and transparent billing, we're geared to move towards India's first pay-as-you-go model. </p>
                        </div>
                        <div class="col-md-2 nopadding" ></div> 
                    </div>
                    <!-- <div class="col-md-5">
                         <div align="center">
                             <img style="height: 70px; widows: 150px" src="images/surf_safe.png" class="img-responsive" /> 
                         </div>
                         <h3 style="text-align:center;">SURF SAFE</h3> 
                         <p style="text-align:center;">Use our advanced filters to block 
                             content on your home or business 
                             network. Set time locks, child locks 
                             and more. </p> 
                         <div class="col-md-12 buttoncenter">
                             <button type="button" class="btn btn-danger sec5button btn-xl buttonv" align="right">FIND OUT MORE</button>
                         </div>
                     </div>-->
                    <div class="col-md-1"> </div>
                </div>
            </section>

            <!--We put users first -->
            <section class="col-md-12 col-lg-12 nopadding" id="usersfirst"> 
                <div class="row flex-row" style="background-color:#ff3333; ">
                    <div class="col-md-4 valign ">
                        <div>
                            <h1 style="color:white; text-align: center;">We put users first</h1> 
                            <p style="color:white; text-align: center; padding: 0px 20px 0px 20px;">And we’ll never stop doing that. This is just the beginning.</p>
                        </div>
                    </div>
                    <div class="col-md-8 nopadding" style="float:right;">
                        <img id="heroImage" src="images/users_first.jpg" class="img-responsive img-height" />
                    </div>
                </div>             
            </section>
            <!--End We put users first -->    
             <jsp:include page="components/float.jsp"></jsp:include>
        </div>  
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