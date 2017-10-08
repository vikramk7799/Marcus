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
                            <a href="${pageContext.request.contextPath }/#home">HOME</a>
                        </li>                     
                        <li>
                            <a class="external" href="${pageContext.request.contextPath }/about">ABOUT US</a>
                        </li>                     
                        <li>
                            <a href="${pageContext.request.contextPath }/#plans">PLANS</a>
                        </li>                     
                        <li>
                            <a id="pay" class="external" href="${pageContext.request.contextPath }/payBill">PAY BILL</a>
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
        <div class="container-fluid nopadding"> 
            <!-- Never stop -->
            <section class="col-md-12 col-lg-12 nopadding" id="home"> 
                <div class="row flex-row" style="background-color:#ffcc00; ">
                    <div class="col-md-4 valign ">
                        <div >
                            <h1 style="text-align:center;">Never Stop</h1> 
                            <p style="text-align:center; padding: 0px 20px 0px 20px;">
                                In a world that’s always on, can you afford not to be? 
                                We’ve set out to deliver the most intelligent, intuitive 
                                and transparent internet experience ever. And, we’re never going to stop making it better. <br><br>
                                Welcome to the network that never stops.</p>
                            <div class="row">
                                <div class="col-md-12 buttoncenter">
                                    <a class="external"  href="${pageContext.request.contextPath }/newconnection"><button type="button" class="btn btn-danger btn-xl buttonv">SIGN ME UP</button></a>  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 nopadding" style="float:right;">
                        <img id="heroImage" src="images/v1080x600.jpg" class="img-responsive img-height" />
                    </div>
                </div>             
            </section>

            <!-- Never run out -->
            <section class="col-md-12 col-lg-12" id="plans"> 
                <div class="row" style="padding-bottom:0px;">
                    <h1 class="h1-font font-black text-align-center">Never run out</h1>
                    <div class="row" style="padding-bottom:20px;">
                        <p class="p-font font-black text-align-center">Three simple data plans. Easy top ups. Instant credits. So you never miss a beat.</p>
                    </div>
                    <p class="p-font font-black text-align-center styled-select slate">
                        <select class="selectpicker" data-style="btn-warning" id="city" style="background-image:url(images/varrow2.png); background-size: 29px 29px; background-repeat: no-repeat; background-position: right top; width:195px; -moz-appearance: none; -webkit-appearance: none; border-bottom: 2px solid red; ">
                            <option class="vselect" value="vic">CHOOSE YOUR CITY  </option> 
                            <option class="vselect" value="Bengaluru">Bengaluru</option>
                            <option class="vselect" value="Hyderabad">Hyderabad</option>
                        </select>
                    </p>
                </div>

                <!--vikram mobile-->
                <!-- desktop & chrome-->
                <div id="is-desktop" class="show">
                    <!--  <div class="container"> -->
                    <div class="row sec2row sec2blk_eq_ht">
                        <div class="col-md-1"> </div>
                        <div class="col-md-6 sec2block " style="padding-top:10px; padding-bottom:10px;">
                            <h2 class="sec5hd2 text-align-center">PLANS</h2>
                            <div style="padding-bottom:2em;">
                            <div class="col-xs-4 vcenter" >
                                        <h4 class="sec2hd22"><span id="dbasic">STARTER </span></h4>
                                    </div>
                                    <div class="col-xs-4 vcenter" align="center">
                                        <h4 class="sec2hd2"><span id="dstandard">POWER</span></h4>
                                    </div>
                                    <div class="col-xs-3 vcenter">
                                        <h4 class="sec2hd222"><span id="dpremium">PRO</span></h4>
                                    </div>
                            </div>
                            
                            <!--<h4 class="text-align-center" ><span id="dbasic">STARTER</span>&nbsp;&nbsp;<span id="dstandard">POWER</span>&nbsp;&nbsp;<span id="dpremium">PRO</span></h4>-->

                            <div id="slider-text" align="center">
                                <input type="text" data-slider="true" data-slider-values="0,100,200" data-slider-equal-steps="true" data-slider-snap="true">
                            </div>
                            <p class="sec2blkpara">Slide to explore plans</p>
                            <!-- <p class="sec2blktxt">Already a Customer? </p>
                             <p class="sec2blktxt"> <a class="external" href="${pageContext.request.contextPath }/zeno">Log in to</a> check usage.</p>
                            -->
                        </div>
                        <!--  </div> top row -->
                        <!-- </div> -->
                        <!--  <div class="container-fluid"> -->
                        <!-- <div class="row sec2row sec2blk_eq_ht"> -->
                        <div class="col-md-4 ">
                            <h3 class="plan_rs  text-align-center"><div id="slidertextprice"/></h3> 
                            <p class="data-font-size text-align-center"> &bull; <span id="slidertextdata" /></p>
                            <p class="fup-font-size text-align-center"> &bull; <span id="slidertextspeed" /></p> 
                            <p class="sec2blkpara text-align-center"> &bull; Exclusive of GST</p>
                            <div class="col-md-12 text-center sec2btnpadding">
                                <a class="external"  href="${pageContext.request.contextPath }/newconnection"><button type="button" class="btn btn-danger btn-xl buttonv">SIGN ME UP</button></a>                          
                            </div>
                        </div>
                        <div class="col-md-1"> </div>
                        <!-- bottom row -->
                    </div>
                    <!--  </div>  container -->
                </div>

                <!--vikram desktop-->
                <!-- mobile & firefox-->
                <div id="is-mobile" class="show" style="padding-bottom:10px; padding-top: 10px;">
                    <div class="container-fluid">
                        <div class="row sec2row sec2blk_eq_ht col3">
                            <div class="col-md-2 col2" style=" margin-left:-20px;">    </div>
                            <!-- plan silder -->                                            
                            <div class="col-md-4 sec2block vplans valign col1">
                                <div> 
                                    <h3 class="sec2hd2" style="padding-top: 15px; padding-bottom:10px;">PLANS</h3>
                                    <div class="col-md-0 vcenter" ></div>
                                    <div class="col-md-12" > <p class="sec2blktxt vplans" style="margin-bottom: 3%;"> </p></div>
                                    <div class="col-md-4 vcenter" >
                                        <h4 class="sec2hd22"><span id="basic">STARTER </span></h4>
                                    </div>
                                    <div class="col-md-4 vcenter" align="center">
                                        <h4 class="sec2hd2"><span id="standard">POWER</span></h4>
                                    </div>
                                    <div class="col-md-3 vcenter">
                                        <h4 class="sec2hd222"><span id="premium">PRO</span></h4>
                                    </div>

                                    <div id="slider-text" class="col-md-11 vco hidden-xs" align="center" padding-right="5px"; padding-left="5px";>
                                        <input type="text" data-slider="true" data-slider-values="0,100,200" data-slider-equal-steps="true" data-slider-snap="true">
                                    </div>

                                    <div class="col-md-12" > <p class="sec2blktxt vplans" style="margin-bottom: 3%;"> </p></div>


                                    <!--<div class="col-md-12" > <p class="sec2blktxt vplans" style="margin-bottom: 3px;">Already a Customer? </p></div>
                                    <div class="col-md-12" ><p class="sec2blktxt vplans"> <a class="external" href="${pageContext.request.contextPath }/zeno">Log in to</a> change plans or check usage.</p></div>-->
                                    <div class="col-md-12" ><p class="sec2slidetotext vplans" style="padding-bottom:8px;">Slide to explore plans</p></div>
                                </div>
                            </div>

                            <!-- price display -->

                            <div class="col-md-4 sec2block vplan valign col2">
                                <div> 
                                    <h3 class="plan_rs separating_line"><div id="dslidertextprice"/></h3> 

                                    <p class="sec2blktxt vplans" style=" padding-top:5px;"> &bull; &nbsp;<span id="dslidertextdata"> </span>
                                      &bull;&nbsp;<span id="dslidertextspeed"></span></p>
                                    <p class="sec2slidetotext vplans" > &bull; &nbsp; Exclusive of GST</p>
                                    <div class="col-md-12 text-center sec2btnpadding" style="padding-top:10%;">
                                        <a class="external"  href="${pageContext.request.contextPath }/newconnection"><button type="button" class="btn btn-danger btn-xl buttonv">SIGN ME UP</button></a>                            
                                    </div>
                                </div>
                            </div>   
                            <div class="col-md-2 col1" style=" margin-right: -20px;">    </div>
                        </div> <!-- row div -->
                    </div>
                </div> <!-- mobile and firefox -->

                
            </section>

            <!-- Never Slow DOwn -->
            <section class="col-md-12 col-lg-12 nopadding" id="neverslowdown"> 
                <div class="row flex-row" style="background-color:#0066cc;">
                    <div class="col-md-8 nopadding row-grey">
                        <img id="section3" src="images/infographic1250x580.png" alt="never slow down" class="img-responsive img-height" /> 
                    </div>
                    <div class="col-md-4 valign">
                        <div>
                            <h1 style="text-align:center; color:white;"> Never slow down</h1> 
                            <p style="text-align:center; color:white; padding: 0px 20px 0px 20px;">Stream, download, post or game lag-free any time of the day — our 
                                thinking network prioritises 
                                bandwidth across users and apps 
                                dynamically. <br><br>
                                Watching GoT? It steps on the gas. 
                                Sending an email? A lower gear will do. 
                                A network that thinks, so you never 
                                stop!    </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Never doubt -->
            <section class="col-md-12 col-lg-12 nopadding" id="neverdoubt">
                <div class="row" style="padding-top:20px; padding-bottom:20px;">
                    <h1 class="h1-font font-black text-align-center">Never doubt</h1>
                </div>
                <div class="row row-white" style="padding-bottom:25px;">
                    <div class="col-md-1"> </div>
                    <div class="col-md-10">
                        <div align="center" style="padding-bottom:20px;">
                            <img style="height: 70px; widows: 150px" id="money" src="images/no_hidden_cost2.PNG" class="img-responsive " /> 
                        </div>
                        <p style="text-align:center;"><strong>NO HIDDEN COSTS</strong></p> 

                        <p style="text-align:center;">What you see is what you get. Our plans are transparent and so are our bills.</p> 

                        <div class="col-md-12 buttoncenter">
                            <a class="external"  href="${pageContext.request.contextPath }/newconnection"><button type="button" class="btn btn-danger btn-xl buttonv">SIGN ME UP</button></a>
                        </div>
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
                <div class="row row-white" style="padding-bottom:10px;"> </div>
            </section>

            <!-- Get the ONE8 cube -->
            <section class="col-md-12 col-lg-12 nopadding" id="one8cube"> 
                <div class="row sec7row flex-row">
                    <div class="col-md-4 valign cube-col-padding" style="background-color:#c4c4c4;">
                        <div>  
                            <div class="row sec7row" style="background-color:#c4c4c4;">
                                <div id="text-carousel" class="carousel slide" data-ride="carousel">
                                    <!-- slides -->
                                    <div class="row">
                                        <!--  <div class="col-xs-offset-3 col-xs-6"> -->
                                        <div class="col-md-12 " style="padding-left:25px; padding-right:25;"> 
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <div class="carousel-content">
                                                        <div>
                                                            <img id="section3" src="images/cpe_img1.png" class="img-responsive img-contain" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="carousel-content">
                                                        <div>
                                                            <img id="section3" src="images/cpe_img2.png" class="img-responsive img-contain" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="carousel-content">
                                                        <div> 
                                                            <img id="section3" src="images/cpe_img3.png" class="img-responsive img-contain" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="carousel-content">
                                                        <div>
                                                            <img id="section3" src="images/cpe_img4.png" class="img-responsive img-contain" />
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <!-- Controls -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 valign cube-col-height vsvs">
                        <div >
                            <div class="row">
                                <h1 style="text-align:center;">Get the One8 Cube,<br>The nerve centre of your experience</h1>
                            </div>
                            <p style="text-align:center;">The out-of-the-box internet experience that fits neatly in one</p>
                            <div class="row" style="padding-top:10px; padding-bottom:10px;">
                                <div class="col-md-12 buttoncenter">
                                    <a class="external"  href="${pageContext.request.contextPath }/newconnection"><button type="button" class="btn btn-danger btn-xl buttonv">SIGN ME UP</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- support -->
            <section class="col-md-12 col-lg-12" style=" padding: 20px 0px;" id="one8cube"> 
                <div class="row" style="padding-top:0px; padding-bottom:20px;">
                    <div class="col-md-12">
                        <h1 style="text-align:center;">24/7 Support</h1> 
                        <p style="text-align:center;">Call +91 90196 02602, and we’ll make sure your network never stops. </p> 
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 buttoncenter">
                        <a class="external"  href="${pageContext.request.contextPath }/contactus"><button type="button" class="btn btn-danger btn-xl buttonv">NEED HELP?</button></a>
                    </div>
                </div>
            </section>
            <jsp:include page="components/float.jsp"></jsp:include>
            </div>  
            <!-- Main container end -->   


            <!-- Footer -->
        <jsp:include page="components/footer.jsp"></jsp:include>

        <script src="js/jquery.min.js"></script>     
        <script src="js/bootstrap.min.js"></script>     
        <script src="js/jquery.singlePageNav.min.js"></script>     
        <script src="js/simple-slider.js"></script>
        <script src="js/jquery.session.js"></script>
        <script src="js/nav.js"></script>    
        <script src="js/city.js"></script>
        <script>
            $(window).ready(function () {
                $('.col1').css('min-height', $('.col3').height() + 'px');
                $('.col2').css('min-height', $('.col1').height() + 'px');
            });
        </script>
    </body>
</html>