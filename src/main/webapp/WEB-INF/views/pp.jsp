<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

            <!-- Main container -->
            <div id="v" class="container-fluid nopadding"> 
                <!-- We are One8 -->
                <section class="col-md-12 col-lg-12 nopadding" id="home"> 
                    <div class="row flex-row" style="background-image: url(images/faq1.png);" >
                        <div class="col-md-12 faqheader faaqheaderpadding ">
                            <h1 class="h1-font"> Privacy Policy </h1>
                        </div>
                    </div>             
                </section>

                <!-- Presenting the network that never stops -->
                <section class="col-md-12 col-lg-12" id="pp"> 
                    <div class="row">
                        <div class="col-md-12">
                            
                            <div class="col-md-2"></div>
                            <div class="col-md-8">

                                <p class="faqp" >What this privacy policy covers?</p>
                                <p class="faqp1"> Technologies ("Company") treats personal information that the Company collects and receives, including information related to your past use of the Company's products and services. Personal information is information about you that is personally identifiable like your name, address, email address, or phone number etc. </p>

                                <p class="faqp" >Information Collection and Use</p>
                                <p class="faqp1"> General</p>
                                <p class="faqp1"> The company has the right to combine information about you that it has, with information from partner business and has the right to pass on the same to business associates, franchisees without referring the same to the user. 
                                    <br><br> We store personal information that you give us, for a specific purpose. This includes details such as your name, address, telephone, VC number, account number and/ or e-mail address. This Privacy Policy is applicable all the personal information that you give us ("User Information") via this website.</p>
                                <p class="faqp1"> We make use of User Information for the following: </p>
                                <p class="faqp1">  Market research, including statistical analysis of user behaviour which we may disclose to third parties in aggregated form. <br/>
                                    <br>In compliance with any requirement of law.<br/> 
                                    <br>Send you periodic communications about our features, products, services, events and special offers.</p>

                                <p class="faqp" >Information Sharing and Disclosure</p>
                                <p class="faqp1">ONE8<sup>TM</sup> and its authorized third parties will collect information pertaining to your identity, demographics, and related evidentiary documentation.  </br>
                                    <br> ONE8<sup>TM</sup> may at its discretion employ, contract or include third external to itself for strategic, tactical and operational purposes. Such agencies though external to ONE8<sup>TM</sup>, will always be entities which are covered by non-disclosure agreements.  </br>
                                    <br> We may also share your personal information with Government agencies or other authorized law enforcement agencies (LEAs) mandated under law to obtain such information for the purpose of verification of identity or for prevention, detection, investigation including but not limited to cyber incidents, prosecution, and punishment of offences.</p>

                                <p class="faqp" >Changes to this Privacy Policy</p>
                                <p class="faqp1">The Company may update this policy and display the same in their website without notice to you and such posting will be deemed to have been read by you. </p>
                            </div>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                   
                     <jsp:include page="components/floatf.jsp"></jsp:include>
            </section>
        </div>  
        <!-- Main container end -->   

        <!-- Footer -->
        <jsp:include page="components/footerf.jsp"></jsp:include>

        <script src="js/jquery.min.js"></script>     
        <script src="js/bootstrap.min.js"></script>     
        <script src="js/jquery.singlePageNav.min.js"></script>     
        <script src="js/simple-slider.js"></script>
        <script src="js/nav.js"></script>     

    </body>
</html>