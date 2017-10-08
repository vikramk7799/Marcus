<%@page import="com.prodevans.marcus.pojo.PaymentDetails"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URL"%>

<%@page import="org.apache.xmlrpc.client.XmlRpcClient"%>
<%@page import="org.apache.xmlrpc.client.XmlRpcClientConfigImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
    <jsp:include page="../components/css.jsp"></jsp:include>      
    </head>

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

        PaymentDetails pd = (PaymentDetails) session.getAttribute("data");
        boolean success = false;
        if (responseFromCCAvenue.get("order_status").equals("Success")) {

            Vector<Object> params = new Vector<>();

            params.add(pd.getActno());
            params.add(pd.getTrans_amount());

            if (responseFromCCAvenue.get("payment_mode").contains("Debit Card")) {
                params.add("D");
                params.add(new Date());
                params.add(pd.getCurrency());
                params.add(9);
                params.add("Debit Card");
                params.add(pd.getTrans_descr());
                out.println("<h1>All value set to param</h1><br>");
            }
            if (responseFromCCAvenue.get("payment_mode").contains("Credit Card")) {
                params.add("C");
                params.add(new Date());
                params.add(pd.getCurrency());
                params.add(8);
                params.add("Credit Card");
                params.add(pd.getTrans_descr());
            }

            //params.add(pd.getTrans_type());
            //params.add(new Date());
            //params.add(pd.getCurrency());
            //params.add(pd.getInstrumentid());
            //params.add(pd.getInstrument_detail());
            //params.add(pd.getTrans_descr());
            String server_url = "http://52.172.205.76/unifyv3/xmlRPC.do";
            URL serverUrl = new URL(server_url);
            // Create an object to represent our server.
            XmlRpcClient server = new XmlRpcClient();
            XmlRpcClientConfigImpl conf = new XmlRpcClientConfigImpl();
            conf.setBasicUserName("oneeight");
            conf.setBasicPassword("!oneight@#");
            conf.setServerURL(serverUrl);

            server.setConfig(conf);
            Object o = (Object) server.execute("unify.addTransaction", params);
            int Transaction_id = (int) o;
            pd.setTransaction_id(Transaction_id);
            success = true;
        }

        if (success) {
    %>

    <!-- Bill payment -->
<section class="col-md-12 col-lg-12 nopadding" id="home"> 
    <div class="row flex-row"  >
        <div class="col-md-4 payheader paayheaderpadding "style="background-image: url(images/faq2.png);">
            <h1 class="h1-font"> Bill payment</h1>
        </div>
        <div class="col-md-7  paayheaderpadding ">
            <h1 class="h1-font"> Your transaction was successful. &nbsp;<img height="34" width="34"  alt="Check Image" src="images/check.png"></h1>
        </div>

    </div>             
</section>
<!-- Main container -->
<div class="container-fluid nopadding"> 
    <!-- Never stop -->
    <section class="col-md-12 col-lg-12 nopadding"> 
        <div class="row flex-row" style="background-color:#fff; ">
            <div class="col-md-4 valign ">

            </div>
            <div class="col-md-7  nopadding" style=" margin:1%; padding:2% ; float:right; background-color:#0072ce; " >
                <p class="payp">Payment Summary</p>
                <br>

                <p class="payp1"> Your payment of &#8377. <%=responseFromCCAvenue.get("amount")%>/- was successful.</p>
                <br>

                <p class="payp">TRANSACTION ID</p>

                <p class="payp1"><%=pd.getTransaction_id()%></p>
            </div>
        </div>             
    </section>


    <%
    } else {
    %>
    <!-- Bill payment -->
    <section class="col-md-12 col-lg-12 nopadding" id="home"> 
        <div class="row flex-row"  >
            <div class="col-md-4 payheader paayheaderpadding "style="background-image: url(images/faq2.png);">
                <h1 class="h1-font"> Bill payment</h1>
            </div>
            <div class="col-md-7  paayheaderpadding ">
                <h1 class="h1-font"> Your transaction was unsuccessful. &nbsp;<img height="34" width="34"  alt="Check Image" src="images/cross1.png"></h1>
            </div>

        </div>             
    </section>
    <!-- Main container -->
    <div class="container-fluid nopadding"> 
        <!-- Never stop -->
        <section class="col-md-12 col-lg-12 nopadding"> 
            <div class="row flex-row" style="background-color:#fff; ">
                <div class="col-md-4 valign ">

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


        <%
            }
        %>

        <!-- Footer -->
        <jsp:include page="../components/footer.jsp"></jsp:include>

        <script src="js/jquery.min.js"></script>     
        <script src="js/bootstrap.min.js"></script>     
        <script src="js/jquery.singlePageNav.min.js"></script>     
        <script src="js/simple-slider.js"></script>
        <script src="js/nav.js"></script>     
        </body>
        </html>