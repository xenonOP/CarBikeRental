<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="Head.jsp"%>
    <body onload="Loaddd()">
    <%@include file="Preloader.jsp"%>

    <%@ include file= "Header.jsp" %> 
   
<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
<!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap br-15 bg-f">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>WishList</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="index.jsp">Home</a></li>
                        <li>WishList for <%=srr%></li>
                    </ul>
                </div>  
            </div>
        </div>
        <!-- Breadcrumb End -->

      <!-- Product Section Start -->
        <div class="product-wrap pt-100 pb-70 bg_ash">
            <div class="container">
                
                <div class="row justify-content-center" id="344">
                    
                        <script>
                            
                           function Loaddd()
                            {
                                let user = "<%=srr%>";
                              fetch(`Wishlist?user=`+user).then(data=>data.json()).then(resp=>{
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
                                     
                                        ans+='</div>';
                                        ans+='<div class="product-info">';
                                        ans+='<a href="listings.html" class="product-category">'+obj.Categories+'</a>';
                                        ans+='<h3><a href="listing-details.html">'+obj.VehicleName+'</a></h3>';
                                        ans+='<div class="product-price">Price: '+obj.OfferPrice+'</div>';
                                        ans+=' <ul class="product-amenity list-style">';
                                        ans+='<li>Transmission <span>'+obj.Transmission+'</span></li>';
                                        ans+='<li>Drive <span>'+obj.Drive+'</span></li>';
                                        ans+='<li>Mileage<span>'+obj.mileage+'</span></li>';
                                        ans+='</ul>';
                                        ans+='<a href="listing-details.html" class="btn-one">View Details</a>';
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
                                     
                                        ans+='</div>';
                                        ans+='<div class="product-info">';
                                        ans+='<a href="listings.html" class="product-category">'+obj.Categories+'</a>';
                                        ans+='<h3><a href="listing-details.html">'+obj.VehicleName+'</a></h3>';
                                        ans+='<div class="product-price">Price: '+obj.OfferPrice+'</div>';
                                        ans+=' <ul class="product-amenity list-style">';
                                        ans+='<li>TyreType <span>'+obj.TyreType+'</span></li>';
                                        ans+='<li>Engine <span>'+obj.Engine+'</span></li>';
                                        ans+='<li>Mileage<span>'+obj.mileage+'</span></li>';
                                        ans+='</ul>';
                                        ans+='<a href="listing-details.html" class="btn-one">View Details</a>';
                                        ans+='</div>';
                                        ans+='</div>';
                                        ans+='</div>';
                                        }
                                    }
                                    document.getElementById("344").innerHTML=ans;
                                });
                            };
                        </script>
                </div>
            </div>
        </div>
        <!-- Product Section End -->


<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
</html>