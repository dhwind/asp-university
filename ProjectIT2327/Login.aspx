<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectIT2327.WebForm1" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Online FoodTaxi | Login</title>
    <link rel="apple-touch-icon" sizes="180x180" href="/images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/images/favicon/favicon-16x16.png">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>   
</head>

<body>
    <form runat="server">

    
    <header class="head">
        <div class="stock">
            <p>* Only in mobile application! <strong>3</strong> PIZZAS FOR <strong>30$</strong>!</p>
        </div>
        <div class="head-panel">
            <div class="menu-btn">
                <a href="Default.aspx"><i class="fas fa-arrow-left"></i>Move back</a>
            </div>
            <div class="logo navigation-menu__point">
                <a href="Default.aspx"><img src="images/logo/FoodTaxi-logo.png" alt="logo"></a>
            </div>
            <div class="location">
                <i class="fas fa-map-marker-alt"><a href="#">Sofia</a></i>
            </div>
            <div class="delivery">
                <i class="fas fa-truck-moving"><a href="#">Paying & Delivery</a></i>
            </div>
            <div class="auth">
                <asp:Button runat="server" ID="Button1" Text="Login" OnClick="log_Onclick" class="auth-btn" />
                <span>/</span>
                <asp:Button runat="server" ID="Register" Text="Registration" OnClick="reg_Onclick" class="auth-btn" />
            </div>
            <div class="cart">
                <img id="cart-modal" src="images/panel-icons/full-cart.svg" alt="cart">
            </div>
        </div>
    </header>
    <nav class="navigation">
        <ul class="navigation-menu">
            <li class="navigation-menu__point"><img src="images/panel-icons/pizza.svg" alt="pizza"></a></li>
            <li class="navigation-menu__point"><img src="images/panel-icons/sushi.svg" alt="sushi"></li>
            <li class="navigation-menu__point"><img src="images/panel-icons/burger.svg" alt="burger"></li>
        </ul>
    </nav>
    <main class="main">
        <div class="container-reg">    
            <div class="row-reg">    
            <div class="col-md-12 col-lg-12">    
            <div class="col-md-3"></div>    
            <div class="col-md-6">    
                 <h2 style="text-align:center;margin-top:10px;">User Login</h2>  
                <asp:Label ID="InCorrect" class="empty-field" runat="server"></asp:Label>
            <div class="form-group">    
                <label for="email">E-mail:</label>
                <asp:Label ID="EmEmail" class="empty-field" runat="server"></asp:Label>
                <asp:TextBox ID="Txtemail" class="form-control" placeholder="Enter email"  runat="server"></asp:TextBox>    
            </div>    
            <div class="form-group">    
                <label for="pwd">Password:</label>
                <asp:Label ID="EmPass" class="empty-field" runat="server"></asp:Label>
                <asp:TextBox ID="Txtpwd" class="form-control" TextMode="Password" placeholder="Enter password" runat="server"></asp:TextBox>    
            </div>    
             <div class="form-group" style="text-align:center">    
                 <asp:Button ID="Btnlog" runat="server" CssClass="btn btn-success" Text="Sign in" OnClick="Btnlog_Onclick"/>    
                 </div>    
            
            </div>    
            <div class="col-md-3"></div>    
    
                </div>    
            </div>    
            </div>   
    </main>
    <footer class="footer">
        <div class="footer-panel">
            <div class="footer-logo">
                <img src="images/logo/footer-logo.png" alt="footer logo">
                <p>&copy; 2019 FoodTaxi <br> All rights reserved.</p>
            </div>
            <ul class="delivery-menu">
                <p>Delivery menu</p>
                <li><a href="#">Pizza</a></li>
                <li><a href="#">Rolls</a></li>
                <li><a href="#">Sets</a></li>
                <li><a href="#">Noodles wok</a></li>
                <li><a href="#">Salats</a></li>
                <li><a href="#">Soups</a></li>
                <li><a href="#">Desserts</a></li>
                <li><a href="#">Drinks</a></li>
            </ul>
            <ul class="main-info">
                <p>Main info</p>
                <li><a href="#">Stocks</a></li>
                <li><a href="#">Paying & Delivery</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Provision of services rules</a></li>
            </ul>
            <div class="icons">
                <div class="app-icons">
                    <img src="images/badges/google-play-badge.png" alt="google play app">
                    <img src="images/badges/app-store-badge.png" alt="appstore app">
                </div>
                <div class="social-icons">
                    <img src="images/social-media-icons/vkontakte.svg" alt="vkontakte">
                    <img src="images/social-media-icons/facebook.svg" alt="facebook">
                    <img src="images/social-media-icons/instagram.svg" alt="instagram">
                </div>
            </div>
        </div>
    </footer>
    <div class="main-modal-window">
        <div class="cart-modal-window">
            <p class="cart-modal-window__empty cart-modal-window__empty__active">Your cart is empty</p>
            <span class="close-modal-window">&times;</span>
            <div class="product-field">
                
            </div>
            <p class="total-price"></p>
            <button class="checkout-btn">Checkout</button>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/ee9bbcd528.js" crossorigin="anonymous"></script>
    <script type="module" src="js/cart/cart.js"></script>
     </form>
</body>

</html>
