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
                    <h2>ADMIN</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="AdminLogin.jsp">LOGIN</a></li>
                        <li>ADMIN</li>
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
                                <h3>Log in To Your Account</h3>
                            </div>
                            <form class="login-form" id="loginform">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input id="emailLogin" name="fname" type="email" placeholder="Email" data-rule-required="true">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input id="pwdLogin" name="pwd" placeholder="Password" type="password" data-rule-required="true">
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md col-sm-12 col-12 text-end mb-20">
                                        <a href="ChangePassword.jsp" class="link style1">Forgot Password?</a>
                                    </div>
                                    <div class="col-lg-12 mt-4">
                                        <div class="form-group">
                                            <button class="btn-two w-100 d-block" onclick="Login()" type="button">
                                                Log In</button>
                                        </div>
                                    </div>  
                                    <div class="col-md-12 text-center">
                                        <p class="mb-0">Don't have an Account? <a class="link-two" href="Signup.jsp">Create One</a></p>
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
            function Login()
            {
                if ($('#loginform').valid()) {
                    let email = document.getElementById("emailLogin").value;
                    let pass = document.getElementById("pwdLogin").value;
                    let xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function ()
                    {
                        if (this.readyState === 4 && this.status === 200)
                        {
                            let resp = this.responseText;
                            resp === "success" ? window.location.href = "adminHome.jsp" : Qual.warningd(resp);
                        }
                    };
                    xhr.open("GET", "./AdminLogin?email=" + email + "&pass=" + pass, true);
                    xhr.send();
                }
            }
        </script>
</html>