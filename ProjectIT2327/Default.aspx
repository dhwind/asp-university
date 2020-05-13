<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectIT2327._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <header class="head">
        <div class="stock">
            <p>* Only in mobile application! <strong>3</strong> PIZZAS FOR <strong>30$</strong>!</p>
        </div>
        <div class="head-panel">
            <div class="menu-btn">
                <img src="images/panel-icons/btn_menu.svg">
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
            <li class="navigation-menu__point"><img src="images/panel-icons/soup.svg" alt="soup"></li>
        </ul>
    </nav>
    <main class="main">
        <div class="content">
        </div>
    </main>
    <footer class="footer">
        <div class="footer-panel">
            <div class="footer-logo">
                <img src="images/logo/footer-logo.png" alt="footer logo">
                <p>&copy; 2019 FoodTaxi <br> All rights reserved.</p>
            </div>
            <ul class="main-info">
                <p>Main info</p>
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

</asp:Content>
