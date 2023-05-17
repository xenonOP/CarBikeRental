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
        <div class="breadcrumb-wrap br-9 bg-f">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>Checkout</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="index.jsp">Home </a></li>
                        <li><a href="cart.html">cart</a></li>
                        <li>Checkout</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- Checkout section start -->
        <div class="checkout-wrap pt-100 pb-75">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-8 col-xl-7 col-lg-7">
                        <form action="#" class="checkout-form" id="checkform">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h3 class="checkout-box-title">Billing Details</h3>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="text" name="fname" id="fname" placeholder="First Name" data-rule-required="true" data-msg-required="Enter your name Properly">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="text" name="lname" id="lname" placeholder="Last Name" data-rule-required="true" data-msg-required="Enter Your Name Properly">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="email" name="email" id="email" placeholder="Email" data-rule-required="true" data-msg-required="Enter a proper email">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="number" name="phone" id="phone"  placeholder="Phone Number" data-rule-required="true" data-msg-required="Enter Proper number" data-rule-number="true" minlength="10" maxlength="10">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="company_name"></label>
                                        <input type="text" name="company_name" id="company_name" placeholder="Company Name">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="text" name="adhar" id="adhar" placeholder="Adhaar Card" data-rule-required="true" data-msg-required="Enter adhar Card Number Properly" data-rule-number="true" minlength="12" maxlength="12">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="text" name="State" id="State" placeholder="State" data-rule-required="true" data-msg-required="Enter your state">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="text" name="City" id="City" placeholder="City" data-rule-required="Enter your city">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="text" name="street" id="street" placeholder="Street" data-rule-required="true">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="text" name="zip" id="zip" placeholder="ZIP Code" data-rule-required="true" data-rule-number="true">
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <textarea name="msg" id="msg" cols="30" rows="10" placeholder="Order Note"
                                                  ></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="checkbox style2">
                                        <input type="checkbox" id="test_10" data-rule-required="true">
                                        <label for="test_10">I have read And Accept the <a class="link style1" href="terms-of-service.html"> Terms &amp; Conditions</a></label>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                    <%String ser = (String)(session.getAttribute("user"));
                    %>
                    <script>
                        let rakam = 0;
                        window.onload = function chek()
                        {
                            let ser = "<%=ser%>";
                            fetch(`ChekBill?ser=` + ser).then(data => data.json()).then(resp => {
                                let arr = resp.ans;
                                let ans = '<h3 class="cart-box-title">Checkout Summary</h3>';
                                for (let i = 0; i < arr.length; i++)
                                {
                                    let obj = arr[i];
                                    ans += '<div class="cart-total-wrap">';
                                    ans += '<div class="cart-total-item">';
                                    ans += '<p>Vehicle</p>';
                                    ans += '<span>' + obj.vehiclename + '</span>';
                                    ans += '</div>';
                                    ans += '<div class="cart-total-item">';
                                    ans += '<p>Rent per Day</p>';
                                    ans += '<span>&#8377;' + parseInt(obj.offerprice).toLocaleString("en-IN") + '</span>';
                                    ans += '</div>';
                                    ans += '<div class="cart-total-item">';
                                    ans += '<p>Start Date</p>';
                                    ans += '<span>' + obj.StartDate + '</span>';
                                    ans += '</div>';
                                    ans += '<div class="cart-total-item">';
                                    ans += '<p>End Date</p>';
                                    ans += '<span>' + obj.EndDate + '</span>';
                                    ans += '</div>';
                                    ans += '<div class="cart-total-item">';
                                    ans += '<p>Days</p>';
                                    ans += '<span>' + obj.DinBtw + ' Days</span>';
                                    ans += '</div>';
                                    ans += '<div class="cart-total-item">';
                                    ans += '<p>Rate</p>';
                                    ans += '<span>&#8377;' + parseInt(obj.Rate).toLocaleString("en-IN") + '</span>';
                                    ans += '</div>';
                                    ans += '<div class="cart-total-item">';
                                    ans += '<p>Taxes</p>';
                                    ans += '<span>&#8377;' + parseInt(obj.tax).toLocaleString("en-IN") + '</span>';
                                    ans += '</div>';
                                    ans += '<div class="cart-total-item">';
                                    ans += '<p><b>Total</b></p>';
                                    ans += '<span><b>&#8377;' + parseInt(obj.Total).toLocaleString("en-IN") + '</b></span>';
                                    ans += '</div></div>';
                                    rakam = parseInt(obj.Total);
                                }
                                document.getElementById("chls").innerHTML = ans;
                            });
                        };
                    </script>
                    <div class="col-xxl-4 col-xl-5 col-lg-5">
                        <div class="cart-total cart-box-two" id="chls">

                        </div>
                        <div class="checkout-details">
                            <h3 class="cart-box-title">Payment Method</h3>
                            <div class="bill-details">
                                <div class="select-payment-method mt-20">

                                    <div>
                                        <input type="radio" id="test3" value="ONLINE" name="paymeth" onclick="paymeth()">
                                        <label for="test3">Online Payment</label>
                                    </div>
                                    <div>
                                        <input type="radio" id="test2" value="COD" name="paymeth" onclick="paymeth()">
                                        <label for="test2">Cash On Delivery</label>
                                    </div>
                                </div>
                                <div class="form-check checkbox style2">
                                    <input class="form-check-input" type="checkbox" id="test_2">

                                </div>
                                <div class="checkout-footer mt-4">
                                    <button type="button" class="btn-two d-block w-100 mt-10" onclick="chck()">Place Order</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Checkout section end -->

        <!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <script src="assets/js/Razorpay.js" type="text/javascript"></script>
        <script>
                                        function chck() {

                                            var options = {
                                                "key": "rzp_test_96HeaVmgRvbrfT", // Enter the Key ID generated from the Dashboard
                                                "amount": rakam + "00", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise or INR 500.
                                                "currency": "INR",
                                                "name": "zyth",
                                                "description": "Zyth Online Payment",
                                                "image": "upload/shop-bra-1-600x600.jpg",
                                                "handler": function (response) {
                                                    if (response.razorpay_payment_id === "" || response.razorpay_payment_id === undefined) {

                                                        location.reload();
                                                        alert("Payment Failed");
                                                    } else
                                                    {
                                                        let ser = "<%=ser%>";

                                                        if ($('#checkform').valid())
                                                        {
                                                            var controls = document.getElementById('checkform').elements;
                                                            var formdata = new FormData;
                                                            for (var i = 0; i < controls.length; i++)
                                                            {
                                                                if (controls[i].type === 'file') {
                                                                    formdata.append(controls[i].name, controls[i].files[0]);
                                                                } else {
                                                                    formdata.append(controls[i].name, controls[i].value);
                                                                 }
                                                             }

                                                            const selectedRadioButton = document.querySelector('input[name="paymeth"]:checked');

                                                            if (selectedRadioButton) {
                                                                // Append the selected radio button value to the FormData object
                                                                formdata.append('paymeth', selectedRadioButton.value);
                                                            }
                                                            formdata.append("user", ser);
                                                            fetch(`checkout`, {method: "POST", body: formdata}).then(data => data.text()).then(resp => {
                                                                resp === "success" ? alert("ok") : alert("not k");
                                                            });
                                                        }
                                                    }
                                                },
                                                "prefill":
                                                        {
                                                            "name": "Enter Name", "email": "Zyth@gmail.com",
                                                            "contact": ""
                                                        },
                                                "notes": {
                                                    "address": ""
                                                },
                                                "theme": {
                                                    "color": "#050505"
                                                },
                                                "modal": {
                                                    "ondismiss": function () {
                                                        $("#statusmodal").modal("show");
                                                        document.getElementById("status").innerHTML = "Payment failed ! Try again";
                                                    }
                                                }
                                            };
                                            var rzp1 = new Razorpay(options);
                                            rzp1.on('payment.failed', function (response) {
                                                console.log(response.error.code);
                                                alert("Payment Failed");
                                            });
                                            rzp1.open();
                                        }
        </script>
</html>