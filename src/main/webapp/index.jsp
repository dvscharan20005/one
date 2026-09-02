<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="NexusShop — a modern, easy-to-use shopping experience">
<title>NexusShop — Shop Smarter</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
    --bg: #f7f8fc;
    --surface: #ffffff;
    --surface-2: #f0f3f8;
    --text: #172033;
    --muted: #667085;

    --primary: #5b4bdb;
    --primary-dark: #4638b8;
    --accent: #ff6b35;

    --success: #16a34a;
    --danger: #e5484d;

    --border: #e7e9ef;

    --shadow: 0 10px 30px rgba(23, 32, 51, .07);
    --shadow-lg: 0 22px 60px rgba(23, 32, 51, .12);

    --radius: 18px;
    --container: 1240px;
}

* {
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    margin: 0;
    font-family: Inter, system-ui, sans-serif;
    color: var(--text);
    background: var(--bg);
    line-height: 1.5;
}

a {
    color: inherit;
    text-decoration: none;
}

button,
input {
    font: inherit;
}

button {
    cursor: pointer;
}

.container {
    width: min(100% - 40px, var(--container));
    margin: auto;
}

/* =========================
   TOP BAR
========================= */

.topbar {
    background: #161b2d;
    color: white;
    font-size: 13px;
}

.topbar-inner {
    display: flex;
    justify-content: space-between;
    gap: 20px;
    padding: 9px 0;
}

.topbar span {
    opacity: .85;
}

/* =========================
   HEADER
========================= */

header {
    position: sticky;
    top: 0;
    z-index: 50;

    background: rgba(255, 255, 255, .94);
    backdrop-filter: blur(14px);

    border-bottom: 1px solid var(--border);
}

.header-inner {
    min-height: 76px;

    display: grid;
    grid-template-columns: auto 1fr auto;

    align-items: center;
    gap: 30px;
}

.brand {
    font-family: Poppins, sans-serif;
    font-weight: 800;
    font-size: 24px;
    letter-spacing: -.04em;
}

.brand span {
    color: var(--primary);
}

.nav {
    display: flex;
    justify-content: center;
    gap: 5px;
}

.nav a {
    padding: 10px 13px;

    border-radius: 10px;

    font-size: 14px;
    font-weight: 600;

    color: #475467;
}

.nav a:hover,
.nav a.active {
    background: #f0efff;
    color: var(--primary);
}

.header-right {
    display: flex;
    align-items: center;
    gap: 8px;
}

/* Search */

.search {
    width: min(390px, 32vw);

    display: flex;
    align-items: center;

    background: var(--surface-2);

    border: 1px solid transparent;
    border-radius: 12px;

    padding: 0 12px;
}

.search:focus-within {
    background: white;
    border-color: #c9c3ff;

    box-shadow: 0 0 0 4px #eeeaff;
}

.search input {
    width: 100%;

    border: 0;
    outline: 0;

    background: transparent;

    padding: 11px 8px;

    font-size: 14px;
}

.icon-btn {
    width: 42px;
    height: 42px;

    border: 1px solid transparent;
    background: transparent;

    border-radius: 11px;

    color: #475467;

    display: grid;
    place-items: center;

    position: relative;
}

.icon-btn:hover {
    background: var(--surface-2);
    color: var(--primary);
}

.cart-count {
    position: absolute;

    right: 0;
    top: -2px;

    background: var(--accent);
    color: white;

    width: 19px;
    height: 19px;

    border-radius: 50%;

    font-size: 10px;
    font-weight: 800;

    display: grid;
    place-items: center;

    border: 2px solid white;
}

.mobile-toggle {
    display: none;
}

/* =========================
   HERO
========================= */

.hero {
    padding: 34px 0 20px;
}

.hero-card {
    min-height: 430px;

    border-radius: 26px;
    overflow: hidden;

    position: relative;

    display: flex;
    align-items: center;

    background:
        linear-gradient(
            90deg,
            rgba(16, 20, 39, .93) 0%,
            rgba(16, 20, 39, .76) 42%,
            rgba(16, 20, 39, .18) 100%
        ),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=90')
        center / cover;
}

.hero-content {
    max-width: 640px;
    padding: 64px;
}

.eyebrow {
    display: inline-flex;
    align-items: center;
    gap: 8px;

    color: #e7e3ff;

    background: rgba(91, 75, 219, .25);

    border: 1px solid rgba(255, 255, 255, .16);

    padding: 7px 11px;

    border-radius: 999px;

    font-size: 12px;
    font-weight: 700;

    text-transform: uppercase;
    letter-spacing: .08em;
}

.hero h1 {
    font-family: Poppins, sans-serif;

    color: white;

    font-size: clamp(36px, 5vw, 62px);

    line-height: 1.02;

    letter-spacing: -.05em;

    margin: 18px 0 16px;
}

.hero p {
    color: #e6e8ef;

    max-width: 560px;

    font-size: 16px;

    margin: 0 0 28px;
}

.actions {
    display: flex;
    gap: 12px;
    flex-wrap: wrap;
}

/* Buttons */

.btn {
    border: 0;

    border-radius: 12px;

    padding: 12px 18px;

    font-weight: 700;

    display: inline-flex;
    align-items: center;
    justify-content: center;

    gap: 9px;

    transition: .2s;
}

.btn-primary {
    background: var(--primary);
    color: white;

    box-shadow: 0 8px 18px rgba(91, 75, 219, .25);
}

.btn-primary:hover {
    background: var(--primary-dark);
    transform: translateY(-1px);
}

.btn-light {
    background: white;
    color: var(--text);
}

.btn-light:hover {
    background: #f2f3f7;
}

/* =========================
   TRUST CARDS
========================= */

.trust {
    display: grid;

    grid-template-columns: repeat(4, 1fr);

    gap: 14px;

    margin: 18px 0 8px;
}

.trust-card {
    background: white;

    border: 1px solid var(--border);

    border-radius: 14px;

    padding: 15px;

    display: flex;
    gap: 12px;
    align-items: center;
}

.trust-icon {
    width: 38px;
    height: 38px;

    border-radius: 10px;

    background: #f0efff;
    color: var(--primary);

    display: grid;
    place-items: center;
}

.trust strong {
    font-size: 13px;
    display: block;
}

.trust small {
    color: var(--muted);
    font-size: 11px;
}

/* =========================
   SECTIONS
========================= */

.section {
    padding: 54px 0;
}

.section-head {
    display: flex;

    justify-content: space-between;
    align-items: end;

    gap: 20px;

    margin-bottom: 22px;
}

.section-head h2 {
    font-family: Poppins, sans-serif;

    font-size: 28px;

    letter-spacing: -.035em;

    margin: 0;
}

.section-head p {
    margin: 5px 0 0;

    color: var(--muted);

    font-size: 14px;
}

.view-all {
    color: var(--primary);

    font-weight: 700;

    font-size: 14px;
}

/* =========================
   CATEGORIES
========================= */

.categories {
    display: grid;

    grid-template-columns: repeat(6, 1fr);

    gap: 14px;
}

.cat-card {
    background: white;

    border: 1px solid var(--border);

    border-radius: 16px;

    padding: 22px 12px;

    text-align: center;

    transition: .2s;

    cursor: pointer;
}

.cat-card:hover {
    transform: translateY(-4px);

    box-shadow: var(--shadow);

    border-color: #d8d3ff;
}

.cat-icon {
    width: 52px;
    height: 52px;

    margin: 0 auto 11px;

    border-radius: 15px;

    background: #f2f0ff;
    color: var(--primary);

    display: grid;
    place-items: center;

    font-size: 20px;
}

.cat-card h4 {
    margin: 0;

    font-size: 14px;
}

.cat-card p {
    margin: 5px 0 0;

    color: var(--muted);

    font-size: 11px;
}

/* =========================
   PRODUCT FILTERS
========================= */

.product-toolbar {
    display: flex;

    align-items: center;

    gap: 10px;

    margin-bottom: 20px;

    flex-wrap: wrap;
}

.chip {
    border: 1px solid var(--border);

    background: white;

    padding: 8px 13px;

    border-radius: 999px;

    color: #475467;

    font-size: 12px;

    font-weight: 600;
}

.chip.active,
.chip:hover {
    background: #f0efff;

    border-color: #d6d0ff;

    color: var(--primary);
}

/* =========================
   PRODUCTS
========================= */

.products {
    display: grid;

    grid-template-columns: repeat(4, 1fr);

    gap: 18px;
}

.product {
    background: white;

    border: 1px solid var(--border);

    border-radius: 18px;

    overflow: hidden;

    position: relative;

    transition: .22s;

    display: flex;

    flex-direction: column;
}

.product:hover {
    transform: translateY(-5px);

    box-shadow: var(--shadow-lg);
}

.product-image {
    height: 230px;

    background: #f4f5f8;

    position: relative;

    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: .3s;
}

.product:hover .product-image img {
    transform: scale(1.035);
}

.badge {
    position: absolute;

    left: 12px;
    top: 12px;

    background: white;

    color: var(--primary);

    padding: 5px 8px;

    border-radius: 7px;

    font-size: 11px;

    font-weight: 800;

    box-shadow: 0 3px 10px rgba(0,0,0,.08);

    z-index: 2;
}

.badge.sale {
    background: #fff0ed;

    color: var(--danger);
}

.wish {
    position: absolute;

    right: 12px;
    top: 12px;

    width: 36px;
    height: 36px;

    border: 0;

    border-radius: 50%;

    background: white;

    box-shadow: 0 3px 12px rgba(0,0,0,.08);

    color: #667085;

    z-index: 2;
}

.wish.active {
    color: var(--danger);
}

.product-body {
    padding: 15px 15px 8px;

    flex: 1;
}

.product-category {
    color: var(--muted);

    font-size: 11px;

    text-transform: uppercase;

    letter-spacing: .06em;

    font-weight: 700;
}

.product h3 {
    font-size: 15px;

    margin: 5px 0 9px;

    line-height: 1.3;
}

.rating {
    font-size: 12px;

    color: #f59e0b;
}

.rating span {
    color: var(--muted);

    margin-left: 4px;
}

.price-row {
    display: flex;

    align-items: center;

    gap: 8px;

    margin-top: 10px;
}

.price {
    font-size: 18px;

    font-weight: 800;
}

.old-price {
    font-size: 12px;

    color: #98a2b3;

    text-decoration: line-through;
}

.product-footer {
    padding: 10px 15px 15px;

    display: flex;

    gap: 8px;
}

.add-btn {
    flex: 1;

    border: 0;

    background: var(--text);

    color: white;

    border-radius: 10px;

    padding: 10px;

    font-weight: 700;

    font-size: 13px;
}

.add-btn:hover {
    background: var(--primary);
}

.quick-btn {
    width: 42px;

    border: 1px solid var(--border);

    background: white;

    border-radius: 10px;

    color: #475467;
}

.empty {
    grid-column: 1 / -1;

    text-align: center;

    background: white;

    border: 1px dashed #ccd1db;

    border-radius: 16px;

    padding: 45px;

    color: var(--muted);
}

/* =========================
   DEAL
========================= */

.deal {
    background: #181d31;

    border-radius: 22px;

    overflow: hidden;

    display: grid;

    grid-template-columns: 1fr 1fr;

    color: white;
}

.deal-image {
    min-height: 360px;

    background:
        url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=90')
        center / cover;
}

.deal-content {
    padding: 45px;
}

.deal-content .eyebrow {
    background: rgba(255,107,53,.16);

    color: #ffb8a0;
}

.deal h2 {
    font-family: Poppins;

    font-size: 34px;

    line-height: 1.1;

    margin: 16px 0 8px;
}

.deal p {
    color: #c8ccda;
}

.timer {
    display: flex;

    gap: 9px;

    margin: 24px 0;
}

.time-box {
    background: #262c44;

    border: 1px solid #343b55;

    border-radius: 10px;

    min-width: 68px;

    padding: 10px;

    text-align: center;
}

.time-box strong {
    font-size: 20px;

    display: block;
}

.time-box small {
    color: #aeb4c5;

    font-size: 10px;
}

.deal-price {
    font-size: 27px;

    font-weight: 800;

    margin: 16px 0;
}

.deal-price del {
    font-size: 14px;

    color: #8e95aa;

    margin-left: 8px;
}

/* =========================
   PERKS
========================= */

.perks {
    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 12px;

    margin-top: 25px;
}

.perk {
    background: white;

    border: 1px solid var(--border);

    border-radius: 14px;

    padding: 18px;

    text-align: center;
}

.perk i {
    color: var(--primary);

    font-size: 20px;
}

.perk strong {
    display: block;

    font-size: 13px;

    margin-top: 7px;
}

/* =========================
   REVIEWS
========================= */

.reviews {
    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 16px;
}

.review {
    background: white;

    border: 1px solid var(--border);

    border-radius: 16px;

    padding: 20px;
}

.review p {
    color: #475467;

    font-size: 13px;

    min-height: 70px;
}

.user {
    display: flex;

    align-items: center;

    gap: 10px;
}

.avatar {
    width: 40px;
    height: 40px;

    border-radius: 50%;

    object-fit: cover;
}

.user strong {
    font-size: 13px;

    display: block;
}

.user small {
    color: var(--muted);

    font-size: 11px;
}

/* =========================
   NEWSLETTER
========================= */

.newsletter {
    background: linear-gradient(
        135deg,
        #5b4bdb,
        #7566e8
    );

    border-radius: 22px;

    padding: 42px;

    text-align: center;

    color: white;
}

.newsletter h2 {
    font-family: Poppins;

    margin: 0;

    font-size: 30px;
}

.newsletter p {
    opacity: .9;
}

.newsletter form {
    max-width: 530px;

    margin: 20px auto 0;

    display: flex;

    background: white;

    border-radius: 12px;

    padding: 5px;
}

.newsletter input {
    flex: 1;

    border: 0;

    outline: 0;

    padding: 11px 12px;

    min-width: 0;
}

.newsletter .btn {
    border-radius: 9px;
}

#newsletterMsg {
    font-size: 13px;

    margin-top: 10px;
}

/* =========================
   FOOTER
========================= */

footer {
    background: white;

    border-top: 1px solid var(--border);

    padding: 45px 0 20px;

    margin-top: 10px;
}

.footer-grid {
    display: grid;

    grid-template-columns: 1.5fr 1fr 1fr 1fr;

    gap: 35px;
}

footer h4 {
    margin: 0 0 12px;

    font-size: 13px;
}

footer p,
footer a {
    color: var(--muted);

    font-size: 13px;
}

.footer-links {
    display: grid;

    gap: 8px;
}

.socials {
    display: flex;

    gap: 8px;

    margin-top: 15px;
}

.socials .icon-btn {
    background: var(--surface-2);
}

.copyright {
    border-top: 1px solid var(--border);

    margin-top: 30px;

    padding-top: 18px;

    text-align: center;

    color: var(--muted);

    font-size: 11px;
}

/* =========================
   TOAST
========================= */

.toast {
    position: fixed;

    right: 22px;
    bottom: 22px;

    background: #171b2b;

    color: white;

    padding: 13px 17px;

    border-radius: 12px;

    box-shadow: var(--shadow-lg);

    font-size: 13px;

    font-weight: 600;

    transform: translateY(130px);

    opacity: 0;

    transition: .25s;

    z-index: 100;
}

.toast.show {
    transform: translateY(0);

    opacity: 1;
}

/* =========================
   MOBILE MENU
========================= */

.mobile-menu {
    display: none;

    padding: 10px 0 15px;

    border-top: 1px solid var(--border);
}

.mobile-menu a {
    display: block;

    padding: 10px 0;

    font-weight: 600;

    font-size: 14px;
}

/* =========================
   RESPONSIVE
========================= */

@media(max-width:1050px) {

    .nav {
        display: none;
    }

    .mobile-toggle {
        display: grid;
    }

    .header-inner {
        grid-template-columns: auto 1fr auto;
    }

    .search {
        width: min(430px, 45vw);
    }

    .categories {
        grid-template-columns: repeat(3, 1fr);
    }

    .products {
        grid-template-columns: repeat(3, 1fr);
    }

    .trust {
        grid-template-columns: repeat(2, 1fr);
    }

    .footer-grid {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media(max-width:700px) {

    .container {
        width: min(100% - 24px, var(--container));
    }

    .topbar-inner {
        justify-content: center;
    }

    .topbar span:last-child {
        display: none;
    }

    .header-inner {
        min-height: 64px;

        gap: 8px;
    }

    .brand {
        font-size: 20px;
    }

    .header-right .search {
        position: absolute;

        left: 12px;
        right: 12px;

        top: 72px;

        width: auto;

        display: none;
    }

    header.search-open .header-right .search {
        display: flex;
    }

    .header-right {
        margin-left: auto;
    }

    .hero {
        padding-top: 15px;
    }

    .hero-card {
        min-height: 500px;
    }

    .hero-content {
        padding: 32px 24px;
    }

    .hero h1 {
        font-size: 40px;
    }

    .section {
        padding: 40px 0;
    }

    .categories,
    .products {
        grid-template-columns: repeat(2, 1fr);
    }

    .product-image {
        height: 190px;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal-image {
        min-height: 220px;
    }

    .deal-content {
        padding: 28px 22px;
    }

    .perks,
    .reviews {
        grid-template-columns: 1fr;
    }

    .trust {
        grid-template-columns: 1fr 1fr;
    }

    .newsletter {
        padding: 30px 18px;
    }

    .newsletter form {
        display: flex;
    }

    .newsletter .btn {
        padding: 11px 13px;
    }
}

@media(max-width:460px) {

    .categories,
    .products {
        grid-template-columns: repeat(2, 1fr);

        gap: 10px;
    }

    .cat-card {
        padding: 16px 8px;
    }

    .product-image {
        height: 170px;
    }

    .product-body {
        padding: 12px 11px 6px;
    }

    .product-footer {
        padding: 8px 11px 12px;
    }

    .hero h1 {
        font-size: 34px;
    }

    .hero-card {
        min-height: 470px;
    }

    .trust {
        gap: 8px;
    }

    .trust-card {
        padding: 11px 8px;
    }

    .timer {
        gap: 5px;
    }

    .time-box {
        min-width: 58px;

        padding: 8px 4px;
    }

    .time-box strong {
        font-size: 17px;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }

    .section-head {
        align-items: start;

        flex-direction: column;
    }
}
</style>
</head>

<body>

<!-- =========================
     TOP BAR
========================= -->

<div class="topbar">
    <div class="container topbar-inner">
        <span>
            <i class="fa-solid fa-truck-fast"></i>
            Free shipping on orders over $50
        </span>

        <span>
            Easy 30-day returns · Secure checkout
        </span>
    </div>
</div>

<!-- =========================
     HEADER
========================= -->

<header id="siteHeader">

    <div class="container header-inner">

        <div style="display:flex;align-items:center;gap:7px">

            <button
                class="icon-btn mobile-toggle"
                id="mobileToggle"
                aria-label="Open navigation">

                <i class="fa-solid fa-bars"></i>

            </button>

            <a class="brand" href="#">
                Nexus<span>Shop</span>
            </a>

        </div>

        <nav class="nav" aria-label="Primary navigation">

            <a class="active" href="#">
                Home
            </a>

            <a href="#categories">
                Categories
            </a>

            <a href="#products">
                Trending
            </a>

            <a href="#deals">
                Deals
            </a>

            <a href="#reviews">
                Reviews
            </a>

        </nav>

        <div class="header-right">

            <div class="search" role="search">

                <i
                    class="fa-solid fa-magnifying-glass"
                    style="color:#98a2b3">
                </i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products">

                <button
                    class="icon-btn"
                    id="searchBtn"
                    aria-label="Search"
                    style="width:30px;height:30px">

                    <i class="fa-solid fa-arrow-right"></i>

                </button>

            </div>

            <button
                class="icon-btn"
                id="mobileSearch"
                aria-label="Open search">

                <i class="fa-solid fa-magnifying-glass"></i>

            </button>

            <button
                class="icon-btn"
                aria-label="Account">

                <i class="fa-regular fa-user"></i>

            </button>

            <button
                class="icon-btn"
                aria-label="Wishlist">

                <i class="fa-regular fa-heart"></i>

            </button>

            <button
                class="icon-btn"
                id="cartBtn"
                aria-label="Shopping cart">

                <i class="fa-solid fa-bag-shopping"></i>

                <span
                    class="cart-count"
                    id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>

    <!-- Mobile menu -->

    <div
        class="mobile-menu container"
        id="mobileMenu">

        <a href="#">
            Home
        </a>

        <a href="#categories">
            Categories
        </a>

        <a href="#products">
            Trending
        </a>

        <a href="#deals">
            Deals
        </a>

        <a href="#reviews">
            Reviews
        </a>

    </div>

</header>

<main>

<!-- =========================
     HERO
========================= -->

<section class="hero">

    <div class="container">

        <div class="hero-card">

            <div class="hero-content">

                <span class="eyebrow">

                    <i class="fa-solid fa-sparkles"></i>

                    New season is here

                </span>

                <h1>
                    Find products you'll love.
                </h1>

                <p>
                    Shop hand-picked fashion, tech and everyday
                    essentials with simple browsing, clear pricing
                    and great deals.
                </p>

                <div class="actions">

                    <button
                        class="btn btn-primary"
                        id="shopNow">

                        Start shopping

                        <i class="fa-solid fa-arrow-right"></i>

                    </button>

                    <button
                        class="btn btn-light"
                        id="exploreDeals">

                        Today's deals

                    </button>

                </div>

            </div>

        </div>

        <!-- Trust cards -->

        <div class="trust">

            <div class="trust-card">

                <div class="trust-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>

                <div>
                    <strong>Fast delivery</strong>
                    <small>Reliable shipping</small>
                </div>

            </div>

            <div class="trust-card">

                <div class="trust-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>

                <div>
                    <strong>Secure payments</strong>
                    <small>Protected checkout</small>
                </div>

            </div>

            <div class="trust-card">

                <div class="trust-icon">
                    <i class="fa-solid fa-rotate-left"></i>
                </div>

                <div>
                    <strong>30-day returns</strong>
                    <small>Shop with confidence</small>
                </div>

            </div>

            <div class="trust-card">

                <div class="trust-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>

                <div>
                    <strong>Friendly support</strong>
                    <small>We're here to help</small>
                </div>

            </div>

        </div>

    </div>

</section>

<!-- =========================
     CATEGORIES
========================= -->

<section
    class="section"
    id="categories">

    <div class="container">

        <div class="section-head">

            <div>

                <h2>
                    Shop by category
                </h2>

                <p>
                    Start with what you're looking for.
                </p>

            </div>

            <a
                class="view-all"
                href="#products">

                View products

                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>

        <div
            class="categories"
            id="categoriesGrid">
        </div>

    </div>

</section>

<!-- =========================
     PRODUCTS
========================= -->

<section
    class="section"
    id="products"
    style="padding-top:10px">

    <div class="container">

        <div class="section-head">

            <div>

                <h2>
                    Trending products
                </h2>

                <p>
                    Popular picks customers are loving right now.
                </p>

            </div>

        </div>

        <div class="product-toolbar">

            <button
                class="chip active"
                data-filter="all">

                All

            </button>

            <button
                class="chip"
                data-filter="phones">

                Smartphones

            </button>

            <button
                class="chip"
                data-filter="laptops">

                Laptops

            </button>

            <button
                class="chip"
                data-filter="gadgets">

                Gadgets

            </button>

            <button
                class="chip"
                data-filter="footwear">

                Footwear

            </button>

            <button
                class="chip"
                data-filter="accessories">

                Accessories

            </button>

        </div>

        <div
            class="products"
            id="productsGrid"
            aria-live="polite">
        </div>

    </div>

</section>

<!-- =========================
     DEAL
========================= -->

<section
    class="section"
    id="deals">

    <div class="container">

        <div class="section-head">

            <div>

                <h2>
                    Deal of the day
                </h2>

                <p>
                    A limited-time price on a customer favorite.
                </p>

            </div>

        </div>

        <div class="deal">

            <div
                class="deal-image"
                role="img"
                aria-label="MacBook Air deal">
            </div>

            <div class="deal-content">

                <span class="eyebrow">

                    <i class="fa-solid fa-bolt"></i>

                    Limited time

                </span>

                <h2>
                    MacBook Air M2
                </h2>

                <p>
                    Thin, light and powerful — built for work,
                    creativity and everyday life.
                </p>

                <div class="timer">

                    <div class="time-box">

                        <strong id="dealDays">
                            0
                        </strong>

                        <small>
                            Days
                        </small>

                    </div>

                    <div class="time-box">

                        <strong id="dealHours">
                            00
                        </strong>

                        <small>
                            Hours
                        </small>

                    </div>

                    <div class="time-box">

                        <strong id="dealMinutes">
                            00
                        </strong>

                        <small>
                            Minutes
                        </small>

                    </div>

                    <div class="time-box">

                        <strong id="dealSeconds">
                            00
                        </strong>

                        <small>
                            Seconds
                        </small>

                    </div>

                </div>

                <div class="deal-price">

                    $999

                    <del>
                        $1,199
                    </del>

                </div>

                <button
                    class="btn btn-primary"
                    id="buyDeal">

                    Add deal to cart

                    <i class="fa-solid fa-bag-shopping"></i>

                </button>

            </div>

        </div>

        <div class="perks">

            <div class="perk">

                <i class="fa-solid fa-credit-card"></i>

                <strong>
                    Secure checkout
                </strong>

            </div>

            <div class="perk">

                <i class="fa-solid fa-box-open"></i>

                <strong>
                    Careful packaging
                </strong>

            </div>

            <div class="perk">

                <i class="fa-solid fa-clock"></i>

                <strong>
                    Fast dispatch
                </strong>

            </div>

        </div>

    </div>

</section>

<!-- =========================
     REVIEWS
========================= -->

<section
    class="section"
    id="reviews">

    <div class="container">

        <div class="section-head">

            <div>

                <h2>
                    What shoppers say
                </h2>

                <p>
                    Real feedback from our demo customers.
                </p>

            </div>

        </div>

        <div class="reviews">

            <article class="review">

                <div class="rating">
                    ★★★★★
                </div>

                <p>
                    "Fast shipping and excellent customer support.
                    The product exceeded my expectations!"
                </p>

                <div class="user">

                    <img
                        class="avatar"
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                        alt="Ava Martin">

                    <div>

                        <strong>
                            Ava Martin
                        </strong>

                        <small>
                            Verified buyer
                        </small>

                    </div>

                </div>

            </article>

            <article class="review">

                <div class="rating">
                    ★★★★☆
                </div>

                <p>
                    "Great selection and the checkout was smooth.
                    Will shop again."
                </p>

                <div class="user">

                    <img
                        class="avatar"
                        src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80"
                        alt="Michael Lee">

                    <div>

                        <strong>
                            Michael Lee
                        </strong>

                        <small>
                            Frequent buyer
                        </small>

                    </div>

                </div>

            </article>

            <article class="review">

                <div class="rating">
                    ★★★★★
                </div>

                <p>
                    "The product cards are clear, prices are easy
                    to compare, and finding what I wanted was simple."
                </p>

                <div class="user">

                    <img
                        class="avatar"
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Sophia Chen">

                    <div>

                        <strong>
                            Sophia Chen
                        </strong>

                        <small>
                            Verified buyer
                        </small>

                    </div>

                </div>

            </article>

        </div>

    </div>

</section>

<!-- =========================
     NEWSLETTER
========================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <h2>
                Get the good stuff first.
            </h2>

            <p>
                New arrivals, useful updates and exclusive offers —
                no clutter.
            </p>

            <form
                id="newsletterForm"
                onsubmit="return false">

                <input
                    id="newsletterEmail"
                    type="email"
                    placeholder="Your email address"
                    aria-label="Email address"
                    required>

                <button
                    class="btn btn-primary"
                    id="subscribeBtn">

                    Subscribe

                </button>

            </form>

            <div
                id="newsletterMsg"
                aria-live="polite">
            </div>

        </div>

    </div>

</section>

</main>

<!-- =========================
     FOOTER
========================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="brand">
                    Nexus<span>Shop</span>
                </div>

                <p>
                    A cleaner, friendlier e-commerce experience
                    built around easy discovery and confident shopping.
                </p>

                <div class="socials">

                    <button
                        class="icon-btn"
                        aria-label="Facebook">

                        <i class="fa-brands fa-facebook-f"></i>

                    </button>

                    <button
                        class="icon-btn"
                        aria-label="Instagram">

                        <i class="fa-brands fa-instagram"></i>

                    </button>

                    <button
                        class="icon-btn"
                        aria-label="Twitter">

                        <i class="fa-brands fa-x-twitter"></i>

                    </button>

                </div>

            </div>

            <div>

                <h4>
                    Shop
                </h4>

                <div class="footer-links">

                    <a href="#categories">
                        Categories
                    </a>

                    <a href="#products">
                        Trending
                    </a>

                    <a href="#deals">
                        Deals
                    </a>

                </div>

            </div>

            <div>

                <h4>
                    Help
                </h4>

                <div class="footer-links">

                    <a href="#">
                        Help Center
                    </a>

                    <a href="#">
                        Shipping & Returns
                    </a>

                    <a href="#">
                        Contact us
                    </a>

                </div>

            </div>

            <div>

                <h4>
                    Company
                </h4>

                <div class="footer-links">

                    <a href="#">
                        About
                    </a>

                    <a href="#">
                        Careers
                    </a>

                    <a href="#">
                        Privacy
                    </a>

                </div>

            </div>

        </div>

        <div class="copyright">

            © <span id="year"></span>
            NexusShop. All rights reserved.

        </div>

    </div>

</footer>

<div
    class="toast"
    id="toast"
    role="status">
</div>

<script>

/* =========================
   DATA
========================= */

const CATEGORIES = [
    {
        id: 'phones',
        name: 'Smartphones',
        icon: 'fa-mobile-alt'
    },
    {
        id: 'laptops',
        name: 'Laptops',
        icon: 'fa-laptop'
    },
    {
        id: 'clothing',
        name: 'Clothing',
        icon: 'fa-tshirt'
    },
    {
        id: 'gadgets',
        name: 'Gadgets',
        icon: 'fa-headphones'
    },
    {
        id: 'footwear',
        name: 'Footwear',
        icon: 'fa-shoe-prints'
    },
    {
        id: 'accessories',
        name: 'Accessories',
        icon: 'fa-watch'
    }
];

const PRODUCTS = [
    {
        id: 1,
        title: 'iPhone 14 Pro Max',
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',
        category: 'phones'
    },
    {
        id: 2,
        title: 'MacBook Pro 14"',
        price: 1999,
        rating: 4,
        reviews: 86,
        img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',
        category: 'laptops'
    },
    {
        id: 3,
        title: 'Apple Watch Series 8',
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: '-25%',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',
        category: 'accessories'
    },
    {
        id: 4,
        title: 'Nike Air Max 270',
        price: 150,
        rating: 4,
        reviews: 53,
        img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',
        category: 'footwear'
    },
    {
        id: 5,
        title: 'Sony A7 IV Camera',
        price: 2499,
        rating: 5,
        reviews: 42,
        img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',
        category: 'gadgets'
    },
    {
        id: 6,
        title: 'Chanel No. 5',
        price: 120,
        rating: 5,
        reviews: 189,
        img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',
        category: 'accessories'
    },
    {
        id: 7,
        title: 'Travel Backpack',
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',
        category: 'accessories'
    },
    {
        id: 8,
        title: 'Sony WH-1000XM5',
        price: 399,
        rating: 5,
        reviews: 156,
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',
        category: 'gadgets'
    }
];


/* =========================
   ELEMENTS
========================= */

const categoriesGrid =
    document.getElementById('categoriesGrid');

const productsGrid =
    document.getElementById('productsGrid');

const cartCountEl =
    document.getElementById('cartCount');

const searchInput =
    document.getElementById('searchInput');

const siteHeader =
    document.getElementById('siteHeader');

const mobileMenu =
    document.getElementById('mobileMenu');

const toast =
    document.getElementById('toast');

let cartCount = 0;

let activeFilter = 'all';


/* =========================
   HELPERS
========================= */

function escapeHtml(text) {

    return String(text).replace(
        /[&<>"']/g,

        s => ({
            '&': '&amp;',
            '<': '&lt;',
            '>': '&gt;',
            '"': '&quot;',
            "'": '&#39;'
        })[s]
    );
}


function showToast(message) {

    toast.textContent = message;

    toast.classList.add('show');

    clearTimeout(showToast.timer);

    showToast.timer = setTimeout(
        () => toast.classList.remove('show'),
        2200
    );
}


/* =========================
   CATEGORIES
========================= */

function renderCategories() {

    categoriesGrid.innerHTML =
        CATEGORIES.map(cat => `

            <button
                class="cat-card"
                data-category="${cat.id}"
                aria-label="Shop ${cat.name}">

                <div class="cat-icon">

                    <i class="fa-solid ${cat.icon}"></i>

                </div>

                <h4>
                    ${cat.name}
                </h4>

                <p>
                    Explore collection
                </p>

            </button>

        `).join('');
}


/* =========================
   PRODUCTS
========================= */

function renderProducts(list) {

    if (!list.length) {

        productsGrid.innerHTML = `

            <div class="empty">

                <i
                    class="fa-solid fa-magnifying-glass"
                    style="font-size:28px;margin-bottom:10px">
                </i>

                <br>

                <strong>
                    No products found
                </strong>

                <br>

                Try another search or category.

            </div>

        `;

        return;
    }


    productsGrid.innerHTML =
        list.map(p => `

            <article class="product">

                <div class="product-image">

                    ${
                        p.badge
                            ? `
                                <span
                                    class="badge ${p.badge.startsWith('-') ? 'sale' : ''}">
                                    ${p.badge}
                                </span>
                              `
                            : ''
                    }

                    <button
                        class="wish"
                        data-wish="${p.id}"
                        aria-label="Add ${escapeHtml(p.title)} to wishlist">

                        <i class="fa-regular fa-heart"></i>

                    </button>

                    <img
                        src="${p.img}"
                        alt="${escapeHtml(p.title)}"
                        loading="lazy">

                </div>


                <div class="product-body">

                    <div class="product-category">

                        ${escapeHtml(p.category)}

                    </div>

                    <h3>

                        ${escapeHtml(p.title)}

                    </h3>


                    <div class="rating">

                        ${'★'.repeat(Math.round(p.rating))}

                        <span>
                            (${p.reviews})
                        </span>

                    </div>


                    <div class="price-row">

                        <span class="price">

                            $${p.price.toLocaleString()}

                        </span>

                        ${
                            p.oldPrice
                                ? `
                                    <span class="old-price">
                                        $${p.oldPrice.toLocaleString()}
                                    </span>
                                  `
                                : ''
                        }

                    </div>

                </div>


                <div class="product-footer">

                    <button
                        class="add-btn"
                        data-id="${p.id}">

                        <i class="fa-solid fa-plus"></i>

                        Add to cart

                    </button>


                    <button
                        class="quick-btn"
                        aria-label="View ${escapeHtml(p.title)}">

                        <i class="fa-regular fa-eye"></i>

                    </button>

                </div>

            </article>

        `).join('');
}


function getFilteredProducts() {

    let list = PRODUCTS;


    if (activeFilter !== 'all') {

        list = list.filter(
            p => p.category === activeFilter
        );

    }


    const q =
        searchInput.value.trim().toLowerCase();


    if (q) {

        list = list.filter(
            p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
        );

    }


    return list;
}


function refreshProducts() {

    renderProducts(
        getFilteredProducts()
    );

}


/* =========================
   CART
========================= */

function addToCart(productId, label) {

    cartCount++;

    cartCountEl.textContent =
        cartCount;

    showToast(
        `${label || 'Product'} added to cart`
    );

}


/* =========================
   CATEGORY CLICK
========================= */

categoriesGrid.addEventListener(
    'click',

    e => {

        const card =
            e.target.closest('[data-category]');

        if (!card) return;


        activeFilter =
            card.dataset.category;


        document
            .querySelectorAll('.chip')
            .forEach(
                c =>
                    c.classList.toggle(
                        'active',
                        c.dataset.filter === activeFilter
                    )
            );


        refreshProducts();


        document
            .getElementById('products')
            .scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });

    }
);


/* =========================
   PRODUCT ACTIONS
========================= */

productsGrid.addEventListener(
    'click',

    e => {

        const add =
            e.target.closest('[data-id]');


        if (add) {

            const product =
                PRODUCTS.find(
                    p =>
                        p.id ===
                        Number(add.dataset.id)
                );


            if (product) {

                addToCart(
                    product.id,
                    product.title
                );

            }

            return;
        }


        const wish =
            e.target.closest('[data-wish]');


        if (wish) {

            wish.classList.toggle(
                'active'
            );


            wish.innerHTML =
                wish.classList.contains('active')
                    ? '<i class="fa-solid fa-heart"></i>'
                    : '<i class="fa-regular fa-heart"></i>';


            showToast(
                wish.classList.contains('active')
                    ? 'Added to wishlist'
                    : 'Removed from wishlist'
            );

        }

    }
);


/* =========================
   FILTER CHIPS
========================= */

document
    .querySelectorAll('.chip')
    .forEach(
        chip => {

            chip.addEventListener(
                'click',

                () => {

                    activeFilter =
                        chip.dataset.filter;


                    document
                        .querySelectorAll('.chip')
                        .forEach(
                            c =>
                                c.classList.toggle(
                                    'active',
                                    c === chip
                                )
                        );


                    refreshProducts();

                }
            );

        }
    );


/* =========================
   SEARCH
========================= */

document
    .getElementById('searchBtn')
    .addEventListener(
        'click',
        refreshProducts
    );


searchInput.addEventListener(
    'keydown',

    e => {

        if (e.key === 'Enter') {

            refreshProducts();

        }

    }
);


searchInput.addEventListener(
    'input',
    refreshProducts
);


/* =========================
   MOBILE MENU
========================= */

document
    .getElementById('mobileToggle')
    .addEventListener(
        'click',

        () => {

            mobileMenu.style.display =
                mobileMenu.style.display === 'block'
                    ? 'none'
                    : 'block';

        }
    );


document
    .getElementById('mobileSearch')
    .addEventListener(
        'click',

        () => {

            siteHeader.classList.toggle(
                'search-open'
            );


            if (
                siteHeader.classList.contains(
                    'search-open'
                )
            ) {

                searchInput.focus();

            }

        }
    );


/* =========================
   HERO ACTIONS
========================= */

document
    .getElementById('shopNow')
    .addEventListener(
        'click',

        () =>
            document
                .getElementById('products')
                .scrollIntoView({
                    behavior: 'smooth'
                })
    );


document
    .getElementById('exploreDeals')
    .addEventListener(
        'click',

        () =>
            document
                .getElementById('deals')
                .scrollIntoView({
                    behavior: 'smooth'
                })
    );


/* =========================
   DEAL
========================= */

document
    .getElementById('buyDeal')
    .addEventListener(
        'click',

        () =>
            addToCart(
                0,
                'MacBook Air M2'
            )
    );


document
    .getElementById('cartBtn')
    .addEventListener(
        'click',

        () => {

            showToast(

                cartCount
                    ? `${cartCount} item${cartCount === 1 ? '' : 's'} in your cart`
                    : 'Your cart is empty'

            );

        }
    );


/* =========================
   NEWSLETTER
========================= */

document
    .getElementById('newsletterForm')
    .addEventListener(
        'submit',

        e => {

            e.preventDefault();


            const input =
                document.getElementById(
                    'newsletterEmail'
                );


            const msg =
                document.getElementById(
                    'newsletterMsg'
                );


            if (
                !input.value.trim() ||
                !input.checkValidity()
            ) {

                msg.textContent =
                    'Please enter a valid email address.';

                return;

            }


            msg.textContent =
                'Thanks! You are subscribed.';


            input.value = '';

        }
    );


/* =========================
   COUNTDOWN
========================= */

(function setupDealTimer() {

    const target =
        Date.now() +
        (24 * 60 + 36) *
        60 *
        1000;


    const timer =
        setInterval(

            () => {

                const diff =
                    Math.max(
                        0,
                        target - Date.now()
                    );


                document
                    .getElementById('dealDays')
                    .textContent =
                    Math.floor(
                        diff / 86400000
                    );


                document
                    .getElementById('dealHours')
                    .textContent =
                    String(
                        Math.floor(
                            diff % 86400000 /
                            3600000
                        )
                    ).padStart(2, '0');


                document
                    .getElementById('dealMinutes')
                    .textContent =
                    String(
                        Math.floor(
                            diff % 3600000 /
                            60000
                        )
                    ).padStart(2, '0');


                document
                    .getElementById('dealSeconds')
                    .textContent =
                    String(
                        Math.floor(
                            diff % 60000 /
                            1000
                        )
                    ).padStart(2, '0');


                if (!diff) {

                    clearInterval(timer);

                }

            },

            1000

        );

})();


/* =========================
   INITIALIZATION
========================= */

document
    .getElementById('year')
    .textContent =
    new Date().getFullYear();


renderCategories();

renderProducts(PRODUCTS);

</script>

</body>
</html>
