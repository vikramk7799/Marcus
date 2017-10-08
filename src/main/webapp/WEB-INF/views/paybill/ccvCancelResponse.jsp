
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
    <head>

        <link rel="icon" href="images/favicon.png" type="image/x-icon">
        <jsp:include page="../components/css.jsp"></jsp:include>      
        </head>
        <style>

            .firstRow {
                min-height: 90px;
                color: white;
            }
            .billPaymentImage
            {
                background-image: url('images/blue_small.png');
                background-repeat:no-repeat;
            }
            .mainBlock3 {
                max-width: 100%;
                color: white;
                margin-top: 5%;
                padding: 2% 4%;
                padding-bottom: 2%;
                max-height: 250px;
                margin-bottom: 3%;

            }
            .pb-30
            {
                padding-bottom: 30px;
            }
            .pb-40
            {
                padding-bottom: 40px;
            }
            .pt-20
            {
                padding-top: 20px;
            }
            .pt-40
            {
                padding-top: 40px;
            }
            .paymentImageSize
            {
                max-width: 60px;
                max-height: 70px;
            }

            /* iphone 6 plus*/
            @media ( max-width : 530px) {
                .mainBlock3 {
                    width: 88%;
                    min-height: 40%;
                    margin: 5%;
                }
                .mb-pt-30
                {
                    padding-top: 30px;
                }
            }

            /* iphone 5*/
            @media ( max-width : 320px) {
                .currentBillFontforiPhone5 {
                    font-size: 26px;
                    margin-left: 4px;
                }
                .mainBlock3 {
                    width: 88%;
                    min-height: 45%;
                    margin: 5%;
                }
            }
        </style>

        <body> 
            <!-- Navigation -->
        <jsp:include page="../components/footerpagenav.jsp"></jsp:include>   




        <%
            String workingKey = "D12ABCBE2A86FC4942B6C71B089B5F32";		//32 Bit Alphanumeric Working Key should be entered here so that data can be decrypted.
            String encResp = request.getParameter("encResp");
            AesCryptUtil aesUtil = new AesCryptUtil(workingKey);
            String decResp = aesUtil.decrypt(encResp);
            StringTokenizer tokenizer = new StringTokenizer(decResp, "&");
            Hashtable hs = new Hashtable();
            String pair = null, pname = null, pvalue = null;
            while (tokenizer.hasMoreTokens()) {
                pair = (String) tokenizer.nextToken();
                if (pair != null) {
                    StringTokenizer strTok = new StringTokenizer(pair, "=");
                    pname = "";
                    pvalue = "";
                    if (strTok.hasMoreTokens()) {
                        pname = (String) strTok.nextToken();
                        if (strTok.hasMoreTokens()) {
                            pvalue = (String) strTok.nextToken();
                        }
                        hs.put(pname, URLDecoder.decode(pvalue));
                    }
                }
            }

            HashMap<String, String> responseFromCCAvenue = new HashMap<>();

            Enumeration enumeration = hs.keys();
            while (enumeration.hasMoreElements()) {
                pname = "" + enumeration.nextElement();
                pvalue = "" + hs.get(pname);
                responseFromCCAvenue.put(pname, pvalue);
            }

        %>
        <!-- Bill payment -->
    <section class="col-md-12 col-lg-12 nopadding" id="home"> 
        <div class="row flex-row"  >
            <div class="col-md-4 payheader paayheaderpadding "style="background-image: url(images/faq2.png);">
                <h1 class="h1-font"> Bill payment</h1>
            </div>
            <div class="col-md-7 col-xs-12 paayheaderpadding ">
                <h1 class="h1-font"> Your transaction was unsuccessful. &nbsp;<img height="34" width="34"  alt="Check Image" src="images/cross1.png"></h1>
            </div>

        </div>             
    </section>
    <!-- Main container -->
    <div class="container-fluid nopadding"> 
        <!-- Never stop -->
        <section class="col-md-12 col-lg-12 nopadding"> 
            <div class="row flex-row" style="background-color:#fff; ">
                <div class="col-md-4col-xs-12 valign " ">

                </div>
                <div class="col-md-7 col-xs-12 nopadding" style=" margin:1%; padding:2% ; float:right; background-color:#0072ce; " >
                    <p class="payp">Payment Summary</p>
                    <br>

                    <p class="payp1"> Your payment of &#8377. <%=responseFromCCAvenue.get("amount")%>/- was unsuccessful.</p>
                    <br>

                    <p class="payp">REASON</p>

                    <p class="payp1"><%=responseFromCCAvenue.get("status_message")%></p>
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