<!DOCTYPE html>
<html lang="zxx">
    <%@include file="Head.jsp"%>
    <body>
        <%@include file="Preloader.jsp"%>

        <%@ include file= "Header.jsp" %> 
        <!-- Hero Section Start -->
        <div class="hero-wrap hero-one">
            <img src="assets/img/hero/hero-shape-1.webp" alt="Image" class="hero-shape-one bounce">
            <img src="assets/img/hero/hero-shape-2.webp" alt="Image" class="hero-shape-two moveHorizontal">
            <img src="assets/img/hero/hero-shape-3.webp" alt="Image" class="hero-shape-three animationFramesTwo">
            <img src="assets/img/hero/hero-shape-4.webp" alt="Image" class="hero-shape-four moveHorizontal">
            <img src="assets/img/hero/hero-bg-shape.webp" alt="Image" class="hero-bg-shape">
            <div class="container-fluid">
                <div class="hero-slider-one owl-carousel">
                    <div class="hero-slide-item">
                        <div class="row gx-5 align-items-center">
                            <div class="col-xxl-5 col-xl-6 col-lg-6">  
                                <div class="hero-content">
                                    <span>&#8377;5000</span>
                                    <h1>Skoda Slavia</h1>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod cste dolore magnam aliquam quaerat demi text voluptatem dolore amet magna aliqua.</p>
                                    <div class="hero-btn">
                                        <a href="About.jsp" class="btn-two">About Us</a>
                                        <a href="Details.jsp?Vehicleid=9" class="btn-three">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-7 col-xl-6 col-lg-6">
                                <div class="hero-img-wrap">
                                    <img class="hero-img" src="myuploads/result.png" alt="Image">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="hero-slide-item">
                        <div class="row gx-5 align-items-center">
                            <div class="col-xxl-5 col-xl-6 col-lg-6">
                                <div class="hero-content">
                                    <span>&#8377;4600</span>
                                    <h1>Harley-Davidson</h1>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod cste dolore magnam aliquam quaerat demi text voluptatem dolore amet magna aliqua.</p>
                                    <div class="hero-btn">
                                        <a href="About.jsp" class="btn-two">About Us</a>
                                        <a href="Details.jsp?Vehicleid=13" class="btn-three">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-7 col-xl-6 col-lg-6">
                                <div class="hero-img-wrap">
                                    <img class="hero-img" src="myuploads/bikessss.png" alt="Image">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="hero-slide-item">
                        <div class="row gx-5 align-items-center">
                            <div class="col-xxl-5 col-xl-6 col-lg-6">
                                <div class="hero-content">
                                    <span>2017</span>
                                    <h1>Porsche Taycan</h1>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod cste dolore magnam aliquam quaerat demi text voluptatem dolore amet magna aliqua.</p>
                                    <div class="hero-btn">
                                        <a href="About.jsp" class="btn-two">About Us</a>
                                        <a href="Details.jsp?Vehicleid=12" class="btn-three">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xxl-7 col-xl-6 col-lg-6">
                                <div class="hero-img-wrap">
                                    <img class="hero-img" src="myuploads/Car3.png" alt="Image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="hero-slide-counter"></div> 
            </div>
        </div>
        <!-- Hero Section End -->
        <%@include file="Categories.jsp"%>
        <%@include file="Bike.jsp"%>
        <!-- Product Section Start -->
        <div class="product-wrap pt-100 pb-70">
            <div class="container">
                <div class="section-title-one text-center mb-40">
                    <span>New Arrivals</span>
                    <h2>Find The Best Vehicles For You</h2>
                </div>
                <div class="row justify-content-center" id="344">
                    <script>
                            
                          window.onload= function Loaddd()
                            {
                                let user = "<%=srr%>";
                              fetch(`Vehicless?user=`+user).then(data=>data.json()).then(resp=>{
                                    console.log(resp);
                                    
                                    let arr = resp.ans;
                                    let ans ="";
                                    for(let i =0; i<arr.length; i++)
                                    {
                                        let obj = arr[i];
                                        if(obj.supercat==="CAR")
                                        {
                                            ans+='<div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="300">';
                                        ans+='<div class="product-card-two">';
                                        ans+='<div class="product-img">';
                                        ans+='<img src="'+obj.VehiclePhoto+'" alt="Image">';
                                        ans+='<ul class="product-option list-style">';
                                        ans+='<li><a onclick="CheckLogin('+obj.Vehicleid+')"><i class="flaticon-heart" ></i></a></li>';
                                        ans+='</ul>';
                                        ans+='</div>';
                                        ans+='<div class="product-info">';
                                        ans+='<a href="listings.html" class="product-category">'+obj.Categories+'</a>';
                                        ans+='<h3><a href="Details.jsp?Vehicleid='+obj.Vehicleid+'">'+obj.VehicleName+'</a></h3>';
                                        ans+='<div class="product-price">Price: '+obj.OfferPrice+'</div>';
                                        ans+=' <ul class="product-amenity list-style">';
                                        ans+='<li>Transmission <span>'+obj.Transmission+'</span></li>';
                                        ans+='<li>Drive <span>'+obj.Drive+'</span></li>';
                                        ans+='<li>Mileage<span>'+obj.mileage+'</span></li>';
                                        ans+='</ul>';
                                        ans+='<a href="Details.jsp?Vehicleid='+obj.Vehicleid+'" class="btn-one">View Details</a>';
                                        ans+='</div>';
                                        ans+='</div>';
                                        ans+='</div>';
                                        }
                                        else
                                        {
                                            ans+='<div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="300">';
                                        ans+='<div class="product-card-two">';
                                        ans+='<div class="product-img">';
                                        ans+='<img src="'+obj.VehiclePhoto+'" alt="Image" style="width:354px; height:236px">';
                                        ans+='<ul class="product-option list-style">';
                                        ans+='<li><a onclick="CheckLogin('+obj.Vehicleid+')"><i class="flaticon-heart" ></i></a></li>';
                                        ans+='</ul>';
                                        ans+='</div>';
                                        ans+='<div class="product-info">';
                                        ans+='<a href="listings.html" class="product-category">'+obj.Categories+'</a>';
                                        ans+='<h3><a href="Details.jsp?Vehicleid='+obj.Vehicleid+'">'+obj.VehicleName+'</a></h3>';
                                        ans+='<div class="product-price">Price: '+obj.OfferPrice+'</div>';
                                        ans+=' <ul class="product-amenity list-style">';
                                        ans+='<li>TyreType <span>'+obj.TyreType+'</span></li>';
                                        ans+='<li>Engine <span>'+obj.Engine+'</span></li>';
                                        ans+='<li>Mileage<span>'+obj.mileage+'</span></li>';
                                        ans+='</ul>';
                                        ans+='<a href="Details.jsp?Vehicleid='+obj.Vehicleid+'" class="btn-one">View Details</a>';
                                        ans+='</div>';
                                        ans+='</div>';
                                        ans+='</div>';
                                        }
                                    }
                                    document.getElementById("344").innerHTML=ans;
                                });
                            };
                        </script>
                    
                    
                    
                    
                
<%String user = (String)(session.getAttribute("user"));%>
                    <script>
                        
                        
                        function CheckLogin(vid)
                        {
                              <%if(user!=null)
                              {
                              %>
                                      WishList(vid);
                                      <%
                              }
                              else
                              {
                              %>
                                      Swal.fire({
                                    title: "<h5 style='color:black !important'>Please Login First!</h5>",
                                      confirmButtonColor:`black`,confirmButtonText: 'ok'
                                });
                                      <%
                              }
                              %>
                        }
                        function WishList(vid)
                        {
                            let ser = '<%=user%>';
                            fetch(`addtowishlist?vid=` + vid+`&user=`+ser).then(data=>data.text()).then(resp=>{
                                resp==="success"?Swal.fire({position: 'top-end',icon: 'success', title: "<h5 style='color:black !important'>Added to your wishlist!</h5>",showConfirmButton: false,timer: 1500}):
                                        Swal.fire({position: 'top-end',icon: 'info', title: "<h5 style='color:black !important'>Already in your wishlist!</h5>",showConfirmButton: false,timer: 1500});
                            });
//                            let xhr = new XMLHttpRequest();
//                            xhr.onreadystatechange = function ()
//                            {
//                                if (this.readyState === 4 && this.status === 200)
//                                {
//                                    let resp = this.responseText;
//                                    alert(resp);
//                                    if (resp === "success")
//                                    {
//                                        
//                                    }
//                                }
//                            };
//                            xhr.open("GET", "./addtowishlist?vehid=" + vid+"&user="+ser, true);
//                            xhr.send();
                        }
                    </script>
                </div>
            </div>
        </div>
        <!-- Product Section End -->

        

        <!-- Call To Action Section Start -->
        <div class="cta-wrap ptb-100">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-6 offset-xxl-3 col-xl-8 offset-xl-2 col-lg-10 offset-lg-1 col-md-8 offset-md-2">
                        <div class="cta-content">
                            <a class="play-now" data-fancybox="" href="https://www.youtube.com/watch?v=BJoVxpAZb_E">
                                <ion-icon name="play"></ion-icon>
                                <span class="ripple"></span>
                            </a>
                            <div class="section-title-one text-center mb-30">
                                <h2>Buy The Best Quality Car With us</h2>
                                <p>Lorem ipsum dolor amet consectetur adipisicing elit sed do eiusmod cste dolore magnam aliquam quaerat demi text voluptatem dolore amet magna aliqua magna elit.</p>
                            </div>
                            <div class="cta-btn">
                                <a href="inventory.html" class="btn-two">View Inventory</a>
                                <a href="contact.html" class="btn-three">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call To Action Section End -->



        
        <!-- Why Choose us Section Start -->
        <div class="wy-choose-wrap bg_primary pt-100 pb-75">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-4 col-xl-5 col-lg-5">
                        <div class="wh-content">
                            <div class="content-title-one mb-40">
                                <span>Why Choose Us</span>
                                <h2>Provide High Service For Everyone</h2>
                                <p>Lorem ipsum dolor amet consectetur adipisicing elit sed do demi text voluptatem dolore amet magna aliqua.</p>
                            </div>
                            <img src="assets/img/about/wh-img.webp" alt="Image" class="wh-img" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="200">
                        </div>
                    </div>
                    <div class="col-xxl-8 col-xl-7 col-lg-7">
                        <div class="row">
                            <div class="col-xl-6 col-lg-12 col-md-6" data-aos="fade-left" data-aos-duration="1200" data-aos-delay="200">
                                <div class="wh-card">
                                    <span class="wh-count">01</span>
                                    <span class="wh-icon">
                                        <i class="flaticon-car-key"></i>
                                    </span>
                                    <h3>Wide Range Of Brands</h3>
                                    <p>Lorem ipsum dolor amet consectetur adipiscing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua enim ad minim veniamquis</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-12 col-md-6" data-aos="fade-left" data-aos-duration="1200" data-aos-delay="200">
                                <div class="wh-card">
                                    <span class="wh-count">02</span>
                                    <span class="wh-icon">
                                        <i class="flaticon-disc-brake"></i>
                                    </span>
                                    <h3>Finance Made Easy</h3>
                                    <p>Lorem ipsum dolor amet consectetur adipiscing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua enim ad minim veniamquis</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-12 col-md-6" data-aos="fade-left" data-aos-duration="1200" data-aos-delay="200">
                                <div class="wh-card">
                                    <span class="wh-count">03</span>
                                    <span class="wh-icon">
                                        <i class="flaticon-gear"></i>
                                    </span>
                                    <h3>Trusted By Thousands</h3>
                                    <p>Lorem ipsum dolor amet consectetur adipiscing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua enim ad minim veniamquis</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-12 col-md-6" data-aos="fade-left" data-aos-duration="1200" data-aos-delay="200">
                                <div class="wh-card">
                                    <span class="wh-count">04</span>
                                    <span class="wh-icon">
                                        <i class="flaticon-tire"></i>
                                    </span>
                                    <h3>Car Service & Maintenance</h3>
                                    <p>Lorem ipsum dolor amet consectetur adipiscing elit sed do eiusmod tempor incididunt labore et dolore magna aliqua enim ad minim veniamquis</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Why Choose us Section End -->
        <!-- Testimonial Section Start -->
        <div class="testimonial-wrap-one bg-f ptb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-8">
                        <div class="testimonial-slider-one owl-carousel">
                            <div class="testimonial-card-one">
                                <div class="client-info-wrap">
                                    <div class="client-img">
                                        <img src="assets/img/clients/client-1.webp" alt="Image">
                                    </div>
                                    <div class="client-info">
                                        <h3>George Brown</h3>
                                        <span>Customer Advisor</span>
                                    </div>
                                    <div class="quote-icon">
                                        <i class="flaticon-straight-quotes"></i>
                                    </div>
                                </div>
                                <p class="client-quote">?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout he point of using Lorem Ipsum is that it has a moreor less normal distribution of letters as opposed to using content here content here making it look like readable english many desktop publishing dolore.?</p>
                                <ul class="ratings list-style">
                                    <li><i class="ri-star-fill"></i></li>
                                    <li><i class="ri-star-fill"></i></li>
                                    <li><i class="ri-star-fill"></i></li>
                                    <li><i class="ri-star-fill"></i></li>
                                    <li><i class="ri-star-fill"></i></li>
                                </ul>
                            </div>
                            <div class="testimonial-card-one">
                                <div class="client-info-area">
                                    <div class="client-info-wrap">
                                        <div class="client-img">
                                            <img src="assets/img/clients/client-6.webp" alt="Image">
                                        </div>
                                        <div class="client-info">
                                            <h3>Miranda Halim</h3>
                                            <span>General Manager</span>
                                        </div>
                                        <div class="quote-icon">
                                            <i class="flaticon-straight-quotes"></i>
                                        </div>
                                    </div>
                                    <p class="client-quote">?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout he point of using Lorem Ipsum is that it has a moreor less normal distribution of letters as opposed to using content here content here making it look like readable english many desktop publishing dolore.?</p>
                                    <ul class="ratings list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="testimonial-card-one">
                                <div class="client-info-area">
                                    <div class="client-info-wrap">
                                        <div class="client-img">
                                            <img src="assets/img/clients/client-1.webp" alt="Image">
                                        </div>
                                        <div class="client-info">
                                            <h3>Kate Stewart</h3>
                                            <span>Happy Customer</span>
                                        </div>
                                        <div class="quote-icon">
                                            <i class="flaticon-straight-quotes"></i>
                                        </div>
                                    </div>
                                    <p class="client-quote">?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout he point of using Lorem Ipsum is that it has a moreor less normal distribution of letters as opposed to using content here content here making it look like readable english many desktop publishing dolore.?</p>
                                    <ul class="ratings list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="testimonial-card-one">
                                <div class="client-info-area">
                                    <div class="client-info-wrap">
                                        <div class="client-img">
                                            <img src="assets/img/clients/client-5.webp" alt="Image">
                                        </div>
                                        <div class="client-info">
                                            <h3>Kilian Anderson</h3>
                                            <span>Web Designer</span>
                                        </div>
                                        <div class="quote-icon">
                                            <i class="flaticon-straight-quotes"></i>
                                        </div>
                                    </div>
                                    <p class="client-quote">?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout he point of using Lorem Ipsum is that it has a moreor less normal distribution of letters as opposed to using content here content here making it look like readable english many desktop publishing dolore.?</p>
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
                    <div class="col-lg-6 col-md-4">
                        <div class="client-video">
                            <a class="play-now" data-fancybox="" href="https://www.youtube.com/watch?v=BJoVxpAZb_E">
                                <ion-icon name="play"></ion-icon>
                                <span class="ripple"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial Section End -->
        <%@include file="footer.jsp" %>
        <!-- Mirrored from templates.hibotheme.com/motoz/default/index.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Apr 2023 12:55:40 GMT -->
</html>