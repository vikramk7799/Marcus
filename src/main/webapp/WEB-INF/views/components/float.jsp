<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

    /*Floating button*/
    #floating-button{
        width: 65px;
        height: 65px;
        border-radius: 50%;
        background: #F44336;
        position: fixed;
        top: 150px;
        right: 37px;
        cursor: pointer;
        box-shadow: 0px 2px 5px #666;
    }
    .fv{
        font-size: 10px;
        line-height: 1.2;
        color: #ffffff;
    }

    #floating-buttongray{

        width: 65px;
        height: 65px;
        border-radius: 50%;
        background: #9cafad;
        position: fixed;
        top: 150px;
        right: 37px;
        cursor: pointer;
        box-shadow: 0px 2px 5px #666;
    }
    @media (max-width : 729px) 
    {

        /*Floating button*/
        #floating-button{

            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: #F44336;
            position: fixed;
            top: 150px;
            right: 20px;
            cursor: pointer;
            box-shadow: 0px 2px 5px #666;
        }
        .fv{
            font-size: 7px;
            line-height: 1.2;
            color: #ffffff;
        }

        #floating-buttongray{

            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: #9cafad;
            position: fixed;
            top: 150px;
            right: 20px;
            cursor: pointer;
            box-shadow: 0px 2px 5px #666;
        }


    }
</style>




<div id="container-floating">
    <div id="floating-button" data-toggle="tooltip">
        <p class="plus valign" style="padding-top: 10px; ">
            <!-- <img src="images/wifi.png" height="20" width="20" /> -->
            <br>
            <a class="external fv" href="${pageContext.request.contextPath }/newconnection">
                NEW
                CONNECTION
            </a>
        </p>
    </div>
</div>