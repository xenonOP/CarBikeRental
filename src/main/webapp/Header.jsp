<!-- Theme Switcher Start -->
        <div class="switch-theme-mode">
            <label id="switch" class="switch">
                    <input type="checkbox" onchange="toggleTheme()" id="slider">
                    <span class="slider round"></span>
            </label>
        </div>
        <!-- Theme Switcher End -->
        <!-- Header Section Start -->
        <header class="header-wrap header-one">
            <div class="header-top">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-8 col-lg-9">
                            <div class="header-top-left">
                                <ul class="contact-info list-style">
                                    <li>
                                        <span>Phone:</span><a href="tel:87896744455">878-9674-4455</a>
                                    </li>
                                    
                                    <li>
                                        <span>Location:</span>23 Bakery Street, London, UK
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-3">
                            <div class="header-top-right">
                                <div class="user-menu">
<!--                                    <i class="flaticon-user-1"></i>
                                    <a href="my-account.html">Login</a>
                                    <a href="my-account.html">Register</a>-->
                                </div>
                                <div class="social-link">
<!--                                    <span>Follow Us:</span>
                                    <ul class="social-profile list-style">
                                        <li>
                                            <a href="https://facebook.com/">
                                                <i class="flaticon-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://instagram.com/">
                                                <i class="flaticon-instagram"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://twitter.com/">
                                                <i class="flaticon-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://linkedin.com/">
                                                <i class="flaticon-linkedin"></i>
                                            </a>
                                        </li>
                                    </ul>-->
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="header-bottom">
                <div class="container">
                    <nav class="navbar navbar-expand-md navbar-light">
                        <a class="navbar-brand" href="index.jsp">
                            <img class="logo-light" src="myuploads/logo.png" alt="logo" style="width: 200px; height: 50px">
                            <img class="logo-dark" src="myuploads/logo.png" alt="logo" style="width: 200px; height: 50px">
                        </a>
                        <div class="collapse navbar-collapse main-menu-wrap" id="navbarSupportedContent">
                            <div class="menu-close d-lg-none">
                                <a href="javascript:void(0)"> <i class="ri-close-line"></i></a>
                            </div>
                            <ul class="navbar-nav me-auto">
                                <li class="nav-item has-child">
                                    <a href="index.jsp" class="nav-link active">
                                        Home
                                    </a>
                                </li>
                                <li class="nav-item has-child">
                                    <a href="#" class="nav-link">
                                        Inventory
                                        <i class="flaticon-down-arrow"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="CarsShow.jsp" class="nav-link">CARS</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="BikeShow.jsp" class="nav-link">Bikes</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item has-child">
                                    <a href="#" class="nav-link">
                                        Info
                                        <i class="flaticon-down-arrow"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item">
                                            <a href="About.jsp" class="nav-link">About Us</a>
                                        </li>
                                       
                                        <li class="nav-item">
                                            <a href="#" class="nav-link">
                                                Services
                                                <i class="flaticon-down-arrow"></i>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li class="nav-item">
                                                    <a href="services.html" class="nav-link">Our Services</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="service-details.html" class="nav-link">Service Details</a>
                                                </li>
                                            </ul>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a href="team.html" class="nav-link">Our Team</a>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a href="faq.html" class="nav-link">FAQ</a>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a href="testimonials.html" class="nav-link">Testimonials</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="terms-of-service.html" class="nav-link">Terms of Service</a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="privacy-policy.html" class="nav-link">Privacy Policy</a>
                                        </li>
                                    </ul>
                                </li>
                               <%
                               String srr= (String)(session.getAttribute("user"));
                               if(srr!=null)
                               {
                               %>
                               <li class="nav-item">
                                            <a href="WishList.jsp" class="nav-link">Your Wishlist</a>
                                        </li>
                               <%
                                   try{
                                            ResultSet rtt = DBLoader.executeQuery("select * from ordertable where user='"+srr+"'");
                                            if(rtt.next())
                                            {
                                  %>
                                        <li class="nav-item">
                                            <a href="Order.jsp" class="nav-link">Your Orders</a>
                                        </li>
                                   <%
                                             }
                                   }
                                    catch(Exception e)
         {
             e.printStackTrace();
         }
}
                                        
%>
                                   
                                   
                                <li class="nav-item">
                                    <a href="contact.html" class="nav-link">Contact</a>
                                </li>
                                <li class="nav-item d-lg-none">
                                    <a href="add-listing.html" class="btn-two">Add Listing</a>
                                </li>
                            </ul>
                            <div class="other-options md-none">
                                <% String press1 = (String)(session.getAttribute("user"));
                                if(press1!=null)
                                {
                                %>
                                <div class="option-item">
                                    <a href="Login.jsp" class="compare-btn"><span class="sm-text"><%=press1%></span></a>
                                </div>
                                <div class="option-item">
                                    <a class="shopcart" href="Logout.jsp"><span class="sm-text">Logout</span><i class="flaticon-user"></i></a>
                                </div>
                                <%
                                }
                                else
                                {
                                %>
                                <div class="option-item">
                                    <a href="Login.jsp" class="compare-btn"><span class="sm-text">Login</span></a>
                                </div>
                                <div class="option-item">
                                    <a class="shopcart" href="SignUp.jsp"><span class="sm-text">Sign-Up</span><i class="flaticon-user"></i></a>
                                </div>
                                <%
                                    }
                                    %>
<!--                                <div class="option-item">
                                    <a href="add-listing.html" class="btn-two">Add Listing</a>
                                </div>-->
                                <div class="option-item">
                                    <button class="sidebar-btn"><i class="flaticon-menu"></i></button>
                                </div>
                            </div>
                        </div>
                    </nav>
                    <div class="mobile-bar-wrap">
                        <a href="compare-2.html" class="compare-btn d-lg-none"><i class="flaticon-compare"></i><span class="cart-count">10</span></a>
                        <a class="shopcart  d-lg-none" href="cart.html"><i class="flaticon-shopping-bag-1"></i><span class="cart-count">1</span></a>
                        <button class="sidebar-btn  d-lg-none"><i class="flaticon-menu"></i></button>
                        <div class="mobile-menu d-lg-none">
                            <a href="javascript:void(0)"><i class="ri-menu-line"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </header> 
        <div class="sidebar-popup">
            <div class="sidebar-popup-wrap">
                <button type="button" class="close-popup"> <i class="ri-close-fill"></i> </button>
                <div class="comp-logo">
                    <a href="index.jsp"> 
                        <img src="assets/img/logo-white.webp" alt="Image">
                    </a>
                </div>
                <p class="comp-desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.</p>
                <ul class="contact-box list-style">
                    <li>
                        <b>Address:</b>
                        <p>23 Bakery Street, London, UK</p>
                    </li>
                    <li>
                        <b>Phone:</b>
                        <a href="tel:87896744455">878-9674-4455</a>
                    </li>
                    <li>
                        <b>Email:</b>
                        <a href="https://templates.hibotheme.com/cdn-cgi/l/email-protection#c3aba6afafac83aeacb7acb9eda0acae"><span class="__cf_email__" data-cfemail="97fff2fbfbf8d7faf8e3f8edb9f4f8fa">[email&#160;protected]</span></a>
                    </li>
                </ul>
                <ul class="social-profile list-style">
                    <li>
                        <a target="_blank" href="https://facebook.com/">
                            <i class="ri-facebook-line"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://twitter.com/">
                            <i class="ri-twitter-line"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://linkedin.com/">
                            <i class="ri-linkedin-line"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://instagram.com/">
                            <i class="ri-instagram-line"></i>
                        </a>
                    </li>
                </ul>
                <div class="comp-map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8385385572983!2d144.95358331584498!3d-37.81725074201705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d4dd5a05d97%3A0x3e64f855a564844d!2s121%20King%20St%2C%20Melbourne%20VIC%203000%2C%20Australia!5e0!3m2!1sen!2sbd!4v1612419490850!5m2!1sen!2sbd"></iframe>
                </div>
            </div>
        </div>
        <!-- Header Section End -->