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
        <div class="breadcrumb-wrap bg-f br-1">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>About Us</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="index.jsp">Home </a></li>
                        <li>About Us</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- About Section Start -->
        <section class="about-wrap ptb-100 bg_ash">
            <div class="container">
                <div class="row align-items-center gx-5">
                    <div class="col-lg-6">
                        <div class="about-img-wrap">
                            <img src="assets/img/about/about-shape-1.webp" alt="Image" class="about-shape-one bounce">
                            <img src="assets/img/about/about-img-1.webp" alt="Image" class="about-img-one">
                            <img src="assets/img/about/about-img-2.webp" alt="Image" class="about-img-two">
                            <div class="about-promo-box">
                                <img src="assets/img/icon/about-icon.svg" alt="Image">
                                <h2><span>30+</span>Years Experience</h2>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-content">
                            <div class="content-title-two">
                                <span>About Motoz</span>
                                <h2>We Inspire You To Buy Your New Car With Motoz!</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, do eiusmod tempo incididunt ut labore et dolore magna aliqua quis ipsum suspendisse ultrice risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                            </div>
                            <div class="progressbar-wrap">
                                <div class="progress-bar" data-percentage="85%">
                                    <h4 class="progress-title-holder clearfix">
                                        <span class="progress-title">Highly Secured</span>
                                        <span class="progress-number-wrapper">
                                            <span class="progress-number-mark">
                                                <span class="percent"></span>
                                            </span>
                                        </span>
                                    </h4>
                                    <div class="progress-content-outter">
                                        <div class="progress-content"></div>
                                    </div>
                                </div>
                                <div class="progress-bar" data-percentage="72%">
                                    <h4 class="progress-title-holder clearfix">
                                        <span class="progress-title">Trusted Agents</span>
                                        <span class="progress-number-wrapper">
                                            <span class="progress-number-mark">
                                                <span class="percent"></span>
                                            </span>
                                        </span>
                                    </h4>
                                    <div class="progress-content-outter">
                                        <div class="progress-content"></div>
                                    </div>
                                </div>
                                <div class="progress-bar" data-percentage="80%">
                                    <h4 class="progress-title-holder clearfix">
                                        <span class="progress-title">Free Support</span>
                                        <span class="progress-number-wrapper">
                                            <span class="progress-number-mark">
                                                <span class="percent"></span>
                                            </span>
                                        </span>
                                    </h4>
                                    <div class="progress-content-outter">
                                        <div class="progress-content"></div>
                                    </div>
                                </div>
                            </div>
                            <a href="About.jsp" class="btn-two">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About Section End -->

       

         <!-- Counter Section Start -->
         <div class="counter-wrap bg-f">
            <div class="container pt-100 pb-75">
                <div class="counter-card-wrap">
                    <div class="counter-card">
                        <div class="counter-icon">
                            <i class="flaticon-car"></i>
                        </div>
                        <div class="counter-info">
                            <h2 class="counter-num">
                                <span class="odometer" data-count="150"></span><span class="target">+</span>
                            </h2>
                            <p>Team Workers</p>
                        </div>
                    </div>
                    <div class="counter-card">
                        <div class="counter-icon">
                            <i class="flaticon-review"></i>
                        </div>
                        <div class="counter-info">
                            <h2 class="counter-num">
                                <span class="odometer" data-count="600"></span><span class="target">+</span>
                            </h2>
                            <p>Trusted Clients</p>
                        </div>
                    </div>
                    <div class="counter-card">
                        <div class="counter-icon">
                            <i class="flaticon-hand-gesture"></i>
                        </div>
                        <div class="counter-info">
                            <h2 class="counter-num">
                                <span class="odometer" data-count="150"></span><span class="target">+</span>
                            </h2>
                            <p>Offices In Countries</p>
                        </div>
                    </div>
                    <div class="counter-card">
                        <div class="counter-icon">
                            <i class="flaticon-drive-thru"></i>
                        </div>
                        <div class="counter-info">
                            <h2 class="counter-num">
                                <span class="odometer" data-count="480"></span><span class="target">+</span>
                            </h2>
                            <p>Company Awards</p>
                        </div>
                    </div>
                </div>
            </div>
         </div>
        <!-- Counter Section End -->

        <!-- Testimonial Section Start -->
        <div class="testimonial-wrap ptb-100 bg_ash">
        <div class="container">
            <div class="section-title-two text-center mb-30">
                <span>Testimonials</span>
                <h2>What Our Customer Say</h2>
            </div>
            <div class="testimonial-slider-three owl-carousel">
                <div class="testimonial-card-three">
                    <div class="client-info-wrap">
                        <div class="client-img">
                            <img src="assets/img/clients/client-4.webp" alt="Image">
                        </div>
                        <div class="client-info">
                            <h3>Rosaline Willium</h3>
                            <span>CEO & Director</span>
                        </div>
                    </div>
                    <p class="client-quote">“It is a long established fact that a reader will be distracted by readle content page when looking at its layout he point of using Lorem Ipsum is that it has moreor less normal distribution of letters as.”</p>
                    <ul class="ratings list-style">
                        <li><i class="ri-star-fill"></i></li>
                        <li><i class="ri-star-fill"></i></li>
                        <li><i class="ri-star-fill"></i></li>
                        <li><i class="ri-star-fill"></i></li>
                        <li><i class="ri-star-fill"></i></li>
                    </ul>
                </div>
                <div class="testimonial-card-three">
                    <div class="client-info-area">
                        <div class="client-info-wrap">
                            <div class="client-img">
                                <img src="assets/img/clients/client-6.webp" alt="Image">
                            </div>
                            <div class="client-info">
                                <h3>Miranda Halim</h3>
                                <span>General Manager</span>
                            </div>
                        </div>
                        <p class="client-quote">“It is a long established fact that a reader will be distracted by readle content page when looking at its layout he point of using Lorem Ipsum is that it has moreor less normal distribution of letters as.”</p>
                        <ul class="ratings list-style">
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="testimonial-card-three">
                    <div class="client-info-area">
                        <div class="client-info-wrap">
                            <div class="client-img">
                                <img src="assets/img/clients/client-1.webp" alt="Image">
                            </div>
                            <div class="client-info">
                                <h3>Kate Stewart</h3>
                                <span>Happy Customer</span>
                            </div>
                        </div>
                        <p class="client-quote">“It is a long established fact that a reader will be distracted by readle content page when looking at its layout he point of using Lorem Ipsum is that it has moreor less normal distribution of letters as.”</p>
                        <ul class="ratings list-style">
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="testimonial-card-three">
                    <div class="client-info-area">
                        <div class="client-info-wrap">
                            <div class="client-img">
                                <img src="assets/img/clients/client-5.webp" alt="Image">
                            </div>
                            <div class="client-info">
                                <h3>Kilian Anderson</h3>
                                <span>Web Designer</span>
                            </div>
                        </div>
                        <p class="client-quote">“It is a long established fact that a reader will be distracted by readle content page when looking at its layout he point of using Lorem Ipsum is that it has moreor less normal distribution of letters as.”</p>
                        <ul class="ratings list-style">
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="testimonial-card-three">
                    <div class="client-info-area">
                        <div class="client-info-wrap">
                            <div class="client-img">
                                <img src="assets/img/clients/client-3.webp" alt="Image">
                            </div>
                            <div class="client-info">
                                <h3>Damble Browni</h3>
                                <span>Happy Customer</span>
                            </div>
                        </div>
                        <p class="client-quote">“It is a long established fact that a reader will be distracted by readle content page when looking at its layout he point of using Lorem Ipsum is that it has moreor less normal distribution of letters as.”</p>
                        <ul class="ratings list-style">
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="testimonial-card-three">
                    <div class="client-info-area">
                        <div class="client-info-wrap">
                            <div class="client-img">
                                <img src="assets/img/clients/client-2.webp" alt="Image">
                            </div>
                            <div class="client-info">
                                <h3>Dunald Zilani</h3>
                                <span>Accounts Manager</span>
                            </div>
                        </div>
                        <p class="client-quote">“It is a long established fact that a reader will be distracted by readle content page when looking at its layout he point of using Lorem Ipsum is that it has moreor less normal distribution of letters as.”</p>
                        <ul class="ratings list-style">
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                            <li><i class="ri-star-fill"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-- Testimonial Section End -->
        
        <!-- FAQ Section start -->
        <section class="faq-wrap ptb-100">
            <img src="assets/img/faq-shape-1.webp" alt="Image" class="faq-shape-one bounce">
            <img src="assets/img/faq-shape-2.webp" alt="Image" class="faq-shape-two animationFramesTwo">
            <div class="container">
                <div class="row align-items-center gx-5">
                    <div class="col-lg-6">
                        <div class="faq-img-wrap">
                            <img src="assets/img/city/faq-img-1.webp" alt="Image" class="faq-img-one">
                            <img src="assets/img/city/faq-img-2.webp" alt="Image" class="faq-img-two">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="faq-content">
                            <div class="content-title-two mb-30">
                                <span>FAQ</span>
                                <h2>Need To Ask Some Questions Or Check Questions</h2>
                            </div>
                            <div class="accordion" id="accordionExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingOne">
                                        <button class="accordion-button" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                            aria-expanded="true" aria-controls="collapseOne">
                                            <span>
                                                <ion-icon name="add-circle-outline" class="plus"></ion-icon>
                                                <ion-icon name="remove-circle-outline" class="minus"></ion-icon>
                                            </span>
                                            Do You Offer Any Sort Of Warranty?
                                        </button>
                                    </h2>
                                    <div id="collapseOne" class="accordion-collapse collapse show"
                                        aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <div class="single-product-text">
                                                <p>Lorem ipsum dolor sit amet consec tetur adipisicing elit. Quisquam sit laborum est aliquam. Dicta fuga soluta eius exercitationem porro modi. Exercitationem eveniet aliquam repudiandae non, sequi mollitia at iusto</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingTwo">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                            aria-expanded="false" aria-controls="collapseTwo">
                                            <span>
                                                <ion-icon name="add-circle-outline" class="plus"></ion-icon>
                                                <ion-icon name="remove-circle-outline" class="minus"></ion-icon>
                                            </span>
                                            When Should I Get My Oil Changed?
                                        </button>
                                    </h2>
                                    <div id="collapseTwo" class="accordion-collapse collapse "
                                        aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <p>Lorem ipsum dolor sit amet consec tetur adipisicing elit. Quisquam sit laborum est aliquam. Dicta fuga soluta eius exercitationem porro modi. Exercitationem eveniet aliquam repudiandae non, sequi mollitia at iusto</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                            aria-expanded="false" aria-controls="collapseThree">
                                            <span>
                                                <ion-icon name="add-circle-outline" class="plus"></ion-icon>
                                                <ion-icon name="remove-circle-outline" class="minus"></ion-icon>
                                            </span>
                                            We Know How To Handle A Wide Range Of Car Services.
                                        </button>
                                    </h2>
                                    <div id="collapseThree" class="accordion-collapse collapse"
                                        aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <p>Lorem ipsum dolor sit amet consec tetur adipisicing elit. Quisquam sit laborum est aliquam. Dicta fuga soluta eius exercitationem porro modi. Exercitationem eveniet aliquam repudiandae non, sequi mollitia at iusto</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="headingfour">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapsefour"
                                            aria-expanded="true" aria-controls="collapsefour">
                                            <span>
                                                <ion-icon name="add-circle-outline" class="plus"></ion-icon>
                                                <ion-icon name="remove-circle-outline" class="minus"></ion-icon>
                                            </span>
                                            Maintain Your Car To Stay Safe On The Road
                                        </button>
                                    </h2>
                                    <div id="collapsefour" class="accordion-collapse collapse "
                                        aria-labelledby="headingfour" data-bs-parent="#accordionExample">
                                        <div class="accordion-body">
                                            <div class="single-product-text">
                                                <p>Lorem ipsum dolor sit amet consec tetur adipisicing elit. Quisquam sit laborum est aliquam. Dicta fuga soluta eius exercitationem porro modi. Exercitationem eveniet aliquam repudiandae non, sequi mollitia at iusto</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- FAQ Section End -->

<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
</html>