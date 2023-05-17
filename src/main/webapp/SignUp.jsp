<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="Head.jsp"%>
    <body>
    <%@include file="Preloader.jsp"%>

    <%@ include file= "Header.jsp" %> 
<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>

        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap br-13 bg-f">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>My Account</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="index.jsp">Home </a></li>
                        <li>My Account</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- Account Section start -->
        <section class="Login-wrap pt-100 pb-75">
            <div class="container">
                <div class="row gx-5">
                    <div class="col-lg-12">
                        <div class="login-form-wrap">
                            <div class="login-header">
                                <h3>Create A New Account</h3>
                            </div>
                            <form id="myForm" class="login-form" action="#" method="post">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input id="fname" name="fname" type="text" placeholder="Name" data-rule-required="true" data-msg-required="Please Enter Valid Name here">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input id="email" name="email" type="email" placeholder="Email" data-rule-required="true">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input id="phone" name="phone" type="text" placeholder="Phone Number" data-rule-required="true" minlength="10" maxlength="10" data-rule-number="true">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input id="pwd" name="pwd" placeholder="Password" type="password" data-rule-required="true">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input id="pwd_2" name="pwd_2" placeholder="Confirm Password" data-rule-equalto="#pwd" type="password" data-rule-required="true">
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-12 mb-20">
                                        <div class="checkbox style3">
                                            <input type="checkbox" id="test_1" data-rule-required="true" data-msg-required="Agree to our Conditions">
                                            <label for="test_1">
                                                I Agree with the <a class="link-two" href="terms-of-service.html">Terms &amp; conditions</a>
                                            </label><br/>
                                            <span style="color: red; display: none" id="sp1">Please Fill this CheckBox First</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 mt-4">
                                        <div class="form-group">
                                            <button onclick="Signup()" type="button" class="btn-two w-100 d-block"> Register Now</button>
                                        </div>
                                    </div>
                                    <div class="col-md-12 text-center">
                                        <p class="mb-0">Have an Account? <a class="link-two" href="my-account.html">Sign In</a></p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Account Section end -->

<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
        
        <script>
            function Signup()
            {
               
                if($('#myForm').valid()){
                    if ($('#test_1').is(':checked')) {
                    let formdata = new FormData();
                    formdata.append("Name", document.getElementById("fname").value);
                    formdata.append("email", document.getElementById("email").value);
                    formdata.append("phone", document.getElementById("phone").value);
                    formdata.append("pwd", document.getElementById("pwd").value);
                    fetch(`./Signup`, {method:"POST", body:formdata}).then(data=>data.text()).then(resp=>{
                        if(resp==="success"){
                            window.location.href="index.jsp";
                        }else{
                            Qual.warningd(resp);
                        }
                    });
                 }else{
                     $("#sp1").show();
                 }
                }
            }
        </script>
</html>