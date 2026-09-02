<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Premium Shopping Experience</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@500;600;700;800&display=swap"
        rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    >

    <style>

        :root {
            --bg: #f7f8fc;
            --white: #ffffff;
            --dark: #111827;
            --dark2: #1f2937;
            --muted: #6b7280;

            --primary: #635bff;
            --primary-dark: #4f46e5;
            --secondary: #8b5cf6;
            --cyan: #06b6d4;
            --pink: #ec4899;

            --success: #10b981;
            --danger: #ef4444;

            --radius: 22px;

            --shadow:
                0 20px 60px rgba(31, 41, 55, .10);

            --container: 1240px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            background: var(--bg);
            color: var(--dark);
            overflow-x: hidden;
        }

        img {
            max-width: 100%;
            display: block;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input {
            font-family: inherit;
        }

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin: auto;
        }


        /* =====================================================
           HEADER
        ===================================================== */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background: rgba(255,255,255,.86);
            backdrop-filter: blur(18px);

            border-bottom: 1px solid rgba(0,0,0,.06);
        }

        .header-inner {
            height: 76px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 30px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;

            font-family: Poppins;
            font-weight: 800;
            font-size: 24px;
        }

        .logo-icon {
            width: 42px;
            height: 42px;

            border-radius: 14px;

            display: grid;
            place-items: center;

            color: white;

            background:
                linear-gradient(135deg,
                    var(--primary),
                    var(--secondary));

            box-shadow:
                0 10px 25px rgba(99,91,255,.35);

            transform: rotate(-8deg);
        }

        .logo span {
            color: var(--primary);
        }

        nav ul {
            list-style: none;

            display: flex;
            align-items: center;
            gap: 28px;
        }

        nav a {
            font-size: 14px;
            font-weight: 600;

            color: #4b5563;

            transition: .25s;
        }

        nav a:hover {
            color: var(--primary);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;

            border-radius: 13px;

            border: 1px solid #e5e7eb;

            background: white;

            display: grid;
            place-items: center;

            cursor: pointer;

            transition: .25s;
        }

        .icon-btn:hover {
            transform: translateY(-3px);
            color: var(--primary);

            box-shadow: 0 8px 20px rgba(0,0,0,.08);
        }

        .cart-btn {
            position: relative;
        }

        .cart-count {
            position: absolute;

            top: -5px;
            right: -5px;

            min-width: 20px;
            height: 20px;

            border-radius: 50%;

            display: grid;
            place-items: center;

            font-size: 10px;
            font-weight: 800;

            color: white;

            background: var(--danger);

            border: 2px solid white;
        }

        .mobile-menu-btn {
            display: none;
        }


        /* =====================================================
           HERO
        ===================================================== */

        .hero {
            position: relative;

            min-height: 620px;

            display: flex;
            align-items: center;

            overflow: hidden;

            background:
                radial-gradient(circle at 80% 20%,
                    rgba(99,91,255,.28),
                    transparent 30%),

                radial-gradient(circle at 10% 80%,
                    rgba(6,182,212,.20),
                    transparent 30%),

                linear-gradient(135deg,
                    #0f172a,
                    #1e1b4b 55%,
                    #312e81);

            color: white;
        }

        .hero-grid {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            align-items: center;

            gap: 50px;
        }

        .hero-content {
            position: relative;
            z-index: 3;
        }

        .eyebrow {
            display: inline-flex;

            align-items: center;
            gap: 8px;

            padding: 8px 14px;

            border-radius: 999px;

            background: rgba(255,255,255,.10);

            border: 1px solid rgba(255,255,255,.15);

            font-size: 12px;
            font-weight: 700;

            margin-bottom: 22px;
        }

        .eyebrow i {
            color: #fbbf24;
        }

        .hero h1 {
            font-family: Poppins;

            font-size: clamp(42px, 5vw, 72px);

            line-height: 1.03;

            letter-spacing: -3px;

            margin-bottom: 22px;
        }

        .gradient-text {
            background:
                linear-gradient(
                    90deg,
                    #a78bfa,
                    #22d3ee,
                    #f0abfc
                );

            -webkit-background-clip: text;
            background-clip: text;

            color: transparent;
        }

        .hero-description {
            max-width: 560px;

            color: #cbd5e1;

            font-size: 17px;
            line-height: 1.7;

            margin-bottom: 32px;
        }

        .hero-buttons {
            display: flex;
            gap: 14px;

            flex-wrap: wrap;
        }

        .btn {
            border: none;

            padding: 14px 22px;

            border-radius: 14px;

            font-size: 14px;
            font-weight: 700;

            cursor: pointer;

            display: inline-flex;
            align-items: center;
            gap: 9px;

            transition: .3s;
        }

        .btn-primary {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    var(--secondary)
                );

            box-shadow:
                0 15px 35px rgba(99,91,255,.35);
        }

        .btn-primary:hover {
            transform: translateY(-4px);

            box-shadow:
                0 20px 45px rgba(99,91,255,.5);
        }

        .btn-outline {
            color: white;

            background: rgba(255,255,255,.08);

            border: 1px solid rgba(255,255,255,.20);
        }

        .btn-outline:hover {
            background: rgba(255,255,255,.15);
        }


        /* =====================================================
           3D PRODUCT SHOWCASE
        ===================================================== */

        .hero-showcase {
            position: relative;

            height: 500px;

            perspective: 1200px;
        }

        .glow {
            position: absolute;

            width: 360px;
            height: 360px;

            border-radius: 50%;

            background:
                radial-gradient(
                    circle,
                    rgba(139,92,246,.55),
                    transparent 70%
                );

            filter: blur(10px);

            left: 50%;
            top: 50%;

            transform:
                translate(-50%,-50%);
        }

        .product-3d {
            position: absolute;

            width: 310px;

            left: 50%;
            top: 50%;

            transform:
                translate(-50%,-50%)
                rotateY(-14deg)
                rotateX(8deg)
                rotateZ(-3deg);

            transition:
                transform .7s cubic-bezier(.2,.8,.2,1);

            animation: floating 5s ease-in-out infinite;

            filter:
                drop-shadow(
                    0 35px 35px
                    rgba(0,0,0,.35)
                );
        }

        .product-3d img {
            width: 100%;

            border-radius: 30px;

            object-fit: cover;

            box-shadow:
                0 25px 60px rgba(0,0,0,.35);
        }

        .product-3d:hover {
            transform:
                translate(-50%,-50%)
                rotateY(-28deg)
                rotateX(12deg)
                rotateZ(-5deg)
                scale(1.06);
        }

        @keyframes floating {

            0%,
            100% {
                margin-top: 0;
            }

            50% {
                margin-top: -20px;
            }
        }

        .floating-card {
            position: absolute;

            padding: 14px 17px;

            border-radius: 17px;

            background: rgba(255,255,255,.12);

            border:
                1px solid
                rgba(255,255,255,.20);

            backdrop-filter: blur(18px);

            box-shadow:
                0 20px 40px rgba(0,0,0,.20);

            color: white;

            z-index: 5;
        }

        .floating-card small {
            display: block;

            color: #cbd5e1;

            font-size: 10px;

            margin-bottom: 5px;
        }

        .floating-card strong {
            font-size: 18px;
        }

        .floating-card.one {
            top: 90px;
            left: 15px;

            animation: floatOne 4s infinite ease-in-out;
        }

        .floating-card.two {
            right: 10px;
            bottom: 90px;

            animation: floatTwo 4.5s infinite ease-in-out;
        }

        @keyframes floatOne {

            0%,100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-15px);
            }
        }

        @keyframes floatTwo {

            0%,100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(12px);
            }
        }

        .orb {
            position: absolute;

            width: 70px;
            height: 70px;

            border-radius: 50%;

            background:
                linear-gradient(
                    135deg,
                    #22d3ee,
                    #6366f1
                );

            box-shadow:
                inset -12px -12px 25px rgba(0,0,0,.25),
                0 20px 40px rgba(0,0,0,.25);

            animation: orbFloat 6s infinite ease-in-out;
        }

        .orb.one {
            top: 20px;
            right: 80px;
        }

        .orb.two {
            bottom: 40px;
            left: 40px;

            width: 45px;
            height: 45px;

            background:
                linear-gradient(
                    135deg,
                    #f472b6,
                    #8b5cf6
                );
        }

        @keyframes orbFloat {

            0%,100% {
                transform: translateY(0) rotate(0);
            }

            50% {
                transform: translateY(-25px) rotate(180deg);
            }
        }


        /* =====================================================
           TRUST BAR
        ===================================================== */

        .trust-bar {
            margin-top: -35px;

            position: relative;
            z-index: 10;
        }

        .trust-grid {
            background: white;

            border-radius: 22px;

            box-shadow: var(--shadow);

            padding: 22px 30px;

            display: grid;

            grid-template-columns:
                repeat(4,1fr);

            gap: 20px;
        }

        .trust-item {
            display: flex;

            align-items: center;

            gap: 14px;
        }

        .trust-icon {
            width: 45px;
            height: 45px;

            border-radius: 14px;

            display: grid;
            place-items: center;

            color: var(--primary);

            background: #eef2ff;
        }

        .trust-item strong {
            font-size: 14px;
        }

        .trust-item small {
            display: block;

            color: var(--muted);

            margin-top: 3px;
        }


        /* =====================================================
           SECTIONS
        ===================================================== */

        .section {
            padding: 90px 0;
        }

        .section-heading {
            display: flex;

            align-items: end;

            justify-content: space-between;

            margin-bottom: 35px;
        }

        .section-heading h2 {
            font-family: Poppins;

            font-size: 34px;

            letter-spacing: -1px;
        }

        .section-heading p {
            color: var(--muted);

            margin-top: 7px;
        }

        .view-all {
            color: var(--primary);

            font-weight: 700;

            font-size: 14px;
        }


        /* =====================================================
           CATEGORIES
        ===================================================== */

        .categories {
            display: grid;

            grid-template-columns:
                repeat(6,1fr);

            gap: 18px;
        }

        .category-card {
            position: relative;

            padding: 25px 15px;

            background: white;

            border-radius: 20px;

            text-align: center;

            border: 1px solid #edf0f5;

            cursor: pointer;

            transition: .35s;

            overflow: hidden;
        }

        .category-card::after {
            content: "";

            position: absolute;

            width: 100px;
            height: 100px;

            background:
                radial-gradient(
                    circle,
                    rgba(99,91,255,.12),
                    transparent 70%
                );

            right: -30px;
            bottom: -30px;
        }

        .category-card:hover {
            transform:
                translateY(-9px)
                rotateX(4deg);

            box-shadow:
                0 20px 45px rgba(31,41,55,.12);

            border-color:
                rgba(99,91,255,.20);
        }

        .category-icon {
            width: 64px;
            height: 64px;

            margin: auto auto 15px;

            border-radius: 20px;

            display: grid;
            place-items: center;

            font-size: 25px;

            color: var(--primary);

            background:
                linear-gradient(
                    135deg,
                    #eef2ff,
                    #f5f3ff
                );

            transition: .35s;
        }

        .category-card:hover .category-icon {
            transform:
                rotateY(180deg)
                scale(1.1);
        }

        .category-card h4 {
            font-size: 14px;
        }

        .category-card p {
            color: var(--muted);

            font-size: 12px;

            margin-top: 5px;
        }


        /* =====================================================
           FILTERS
        ===================================================== */

        .filters {
            display: flex;

            gap: 10px;

            flex-wrap: wrap;

            margin-bottom: 30px;
        }

        .filter {
            border: 1px solid #e5e7eb;

            background: white;

            padding: 9px 16px;

            border-radius: 999px;

            cursor: pointer;

            font-size: 13px;

            font-weight: 600;

            color: #6b7280;

            transition: .25s;
        }

        .filter.active,
        .filter:hover {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    var(--secondary)
                );

            border-color: transparent;
        }


        /* =====================================================
           PRODUCTS
        ===================================================== */

        .products {
            display: grid;

            grid-template-columns:
                repeat(4,1fr);

            gap: 22px;
        }

        .product-card {
            position: relative;

            background: white;

            border-radius: 24px;

            overflow: hidden;

            border: 1px solid #edf0f5;

            transition:
                transform .4s,
                box-shadow .4s;

            transform-style: preserve-3d;
        }

        .product-card:hover {
            transform:
                translateY(-10px)
                rotateX(2deg);

            box-shadow:
                0 25px 55px rgba(31,41,55,.14);
        }

        .product-image {
            position: relative;

            height: 250px;

            background:
                linear-gradient(
                    135deg,
                    #f3f4f6,
                    #eef2ff
                );

            display: grid;

            place-items: center;

            overflow: hidden;
        }

        .product-image::before {
            content: "";

            position: absolute;

            width: 180px;
            height: 180px;

            border-radius: 50%;

            background:
                radial-gradient(
                    circle,
                    rgba(99,91,255,.18),
                    transparent 70%
                );
        }

        .product-image img {
            width: 78%;
            height: 85%;

            object-fit: contain;

            position: relative;

            z-index: 2;

            transition: .5s;

            filter:
                drop-shadow(
                    0 20px 20px
                    rgba(0,0,0,.16)
                );
        }

        .product-card:hover
        .product-image img {
            transform:
                scale(1.1)
                translateY(-5px)
                rotate(-2deg);
        }

        .badge {
            position: absolute;

            left: 14px;
            top: 14px;

            z-index: 4;

            padding: 6px 10px;

            border-radius: 999px;

            font-size: 10px;

            font-weight: 800;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    var(--secondary)
                );
        }

        .wishlist {
            position: absolute;

            right: 14px;
            top: 14px;

            z-index: 5;

            width: 38px;
            height: 38px;

            border-radius: 50%;

            border: none;

            background:
                rgba(255,255,255,.90);

            display: grid;
            place-items: center;

            cursor: pointer;

            transition: .25s;
        }

        .wishlist:hover {
            color: var(--danger);

            transform: scale(1.1);
        }

        .wishlist.active {
            color: var(--danger);
        }

        .product-info {
            padding: 20px;
        }

        .product-category {
            color: var(--primary);

            font-size: 11px;

            font-weight: 700;

            text-transform: uppercase;

            letter-spacing: .7px;
        }

        .product-title {
            font-family: Poppins;

            font-size: 16px;

            margin: 7px 0;

            white-space: nowrap;

            overflow: hidden;

            text-overflow: ellipsis;
        }

        .rating {
            color: #f59e0b;

            font-size: 13px;
        }

        .rating span {
            color: var(--muted);

            margin-left: 5px;
        }

        .product-bottom {
            display: flex;

            align-items: center;

            justify-content: space-between;

            margin-top: 18px;
        }

        .price {
            font-size: 20px;

            font-weight: 800;
        }

        .old-price {
            color: #9ca3af;

            font-size: 11px;

            text-decoration: line-through;

            margin-left: 5px;
        }

        .add-btn {
            border: none;

            width: 42px;
            height: 42px;

            border-radius: 13px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    var(--secondary)
                );

            cursor: pointer;

            transition: .3s;
        }

        .add-btn:hover {
            transform: scale(1.1) rotate(-5deg);

            box-shadow:
                0 10px 25px rgba(99,91,255,.35);
        }


        /* =====================================================
           DEAL SECTION
        ===================================================== */

        .deal {
            position: relative;

            overflow: hidden;

            border-radius: 30px;

            min-height: 400px;

            background:
                linear-gradient(
                    120deg,
                    #111827,
                    #312e81
                );

            color: white;

            display: grid;

            grid-template-columns:
                1fr 1fr;

            align-items: center;

            padding: 55px;
        }

        .deal::before {
            content: "";

            position: absolute;

            width: 500px;
            height: 500px;

            border-radius: 50%;

            background:
                radial-gradient(
                    circle,
                    rgba(139,92,246,.35),
                    transparent 70%
                );

            right: -150px;
            top: -150px;
        }

        .deal-content {
            position: relative;

            z-index: 3;
        }

        .deal-label {
            color: #a5b4fc;

            font-weight: 800;

            font-size: 12px;

            text-transform: uppercase;

            letter-spacing: 2px;

            margin-bottom: 15px;
        }

        .deal h2 {
            font-family: Poppins;

            font-size: 40px;

            margin-bottom: 10px;
        }

        .deal p {
            color: #cbd5e1;

            line-height: 1.6;

            max-width: 500px;
        }

        .timer {
            display: flex;

            gap: 10px;

            margin: 25px 0;
        }

        .time-box {
            width: 65px;
            height: 65px;

            border-radius: 16px;

            display: grid;
            place-items: center;

            background:
                rgba(255,255,255,.10);

            border:
                1px solid
                rgba(255,255,255,.10);

            backdrop-filter: blur(10px);
        }

        .time-box strong {
            font-size: 20px;
        }

        .time-box small {
            display: block;

            font-size: 9px;

            color: #94a3b8;
        }

        .deal-product {
            position: relative;

            z-index: 2;

            display: flex;

            justify-content: center;

            perspective: 900px;
        }

        .deal-product img {
            width: 340px;

            filter:
                drop-shadow(
                    0 35px 30px
                    rgba(0,0,0,.45)
                );

            transform:
                rotateY(-15deg)
                rotateZ(-4deg);

            animation:
                dealFloat 5s
                infinite ease-in-out;
        }

        @keyframes dealFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotateY(-15deg)
                    rotateZ(-4deg);
            }

            50% {
                transform:
                    translateY(-18px)
                    rotateY(10deg)
                    rotateZ(3deg);
            }
        }


        /* =====================================================
           FEATURES
        ===================================================== */

        .features {
            display: grid;

            grid-template-columns:
                repeat(3,1fr);

            gap: 20px;
        }

        .feature {
            background: white;

            border-radius: 22px;

            padding: 30px;

            border: 1px solid #edf0f5;

            transition: .3s;
        }

        .feature:hover {
            transform: translateY(-7px);

            box-shadow: var(--shadow);
        }

        .feature-icon {
            width: 52px;
            height: 52px;

            border-radius: 16px;

            display: grid;
            place-items: center;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--primary),
                    var(--secondary)
                );

            margin-bottom: 20px;
        }

        .feature h3 {
            font-family: Poppins;

            font-size: 18px;

            margin-bottom: 8px;
        }

        .feature p {
            color: var(--muted);

            font-size: 14px;

            line-height: 1.7;
        }


        /* =====================================================
           REVIEWS
        ===================================================== */

        .reviews {
            display: grid;

            grid-template-columns:
                repeat(3,1fr);

            gap: 20px;
        }

        .review {
            background: white;

            border-radius: 22px;

            padding: 25px;

            border: 1px solid #edf0f5;
        }

        .review-stars {
            color: #f59e0b;

            margin-bottom: 15px;
        }

        .review p {
            color: #4b5563;

            line-height: 1.7;

            font-size: 14px;

            margin-bottom: 20px;
        }

        .review-user {
            display: flex;

            align-items: center;

            gap: 12px;
        }

        .review-user img {
            width: 42px;
            height: 42px;

            border-radius: 50%;

            object-fit: cover;
        }

        .review-user strong {
            display: block;

            font-size: 13px;
        }

        .review-user small {
            color: var(--muted);
        }


        /* =====================================================
           NEWSLETTER
        ===================================================== */

        .newsletter {
            position: relative;

            overflow: hidden;

            text-align: center;

            padding: 65px 30px;

            border-radius: 30px;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #4f46e5,
                    #7c3aed,
                    #db2777
                );

            box-shadow:
                0 25px 60px
                rgba(99,91,255,.25);
        }

        .newsletter::before,
        .newsletter::after {
            content: "";

            position: absolute;

            border-radius: 50%;

            background:
                rgba(255,255,255,.10);
        }

        .newsletter::before {
            width: 300px;
            height: 300px;

            top: -180px;
            left: -100px;
        }

        .newsletter::after {
            width: 250px;
            height: 250px;

            right: -100px;
            bottom: -160px;
        }

        .newsletter-content {
            position: relative;
            z-index: 2;
        }

        .newsletter h2 {
            font-family: Poppins;

            font-size: 32px;

            margin-bottom: 10px;
        }

        .newsletter p {
            color: #e0e7ff;

            margin-bottom: 25px;
        }

        .newsletter-form {
            max-width: 520px;

            margin: auto;

            display: flex;

            background: white;

            border-radius: 15px;

            padding: 5px;
        }

        .newsletter-form input {
            flex: 1;

            border: none;

            outline: none;

            padding: 13px;

            min-width: 0;
        }

        .newsletter-form button {
            border: none;

            border-radius: 11px;

            padding: 0 20px;

            color: white;

            background: var(--dark);

            font-weight: 700;

            cursor: pointer;
        }


        /* =====================================================
           FOOTER
        ===================================================== */

        footer {
            margin-top: 80px;

            background: #111827;

            color: white;

            padding: 65px 0 25px;
        }

        .footer-grid {
            display: grid;

            grid-template-columns:
                2fr 1fr 1fr 1fr;

            gap: 50px;
        }

        .footer-brand p {
            color: #9ca3af;

            max-width: 340px;

            margin-top: 15px;

            line-height: 1.7;
        }

        .footer h4 {
            margin-bottom: 15px;
        }

        .footer ul {
            list-style: none;
        }

        .footer li {
            margin-bottom: 10px;
        }

        .footer li a {
            color: #9ca3af;

            font-size: 13px;

            transition: .2s;
        }

        .footer li a:hover {
            color: white;
        }

        .socials {
            display: flex;

            gap: 10px;

            margin-top: 20px;
        }

        .socials a {
            width: 38px;
            height: 38px;

            border-radius: 12px;

            background: #1f2937;

            display: grid;
            place-items: center;

            transition: .25s;
        }

        .socials a:hover {
            background: var(--primary);

            transform: translateY(-4px);
        }

        .copyright {
            border-top:
                1px solid
                rgba(255,255,255,.08);

            margin-top: 45px;

            padding-top: 20px;

            text-align: center;

            color: #6b7280;

            font-size: 12px;
        }


        /* =====================================================
           TOAST
        ===================================================== */

        .toast {
            position: fixed;

            right: 25px;
            bottom: 25px;

            z-index: 2000;

            background: #111827;

            color: white;

            padding: 14px 18px;

            border-radius: 14px;

            box-shadow:
                0 20px 40px rgba(0,0,0,.2);

            transform:
                translateY(120px);

            opacity: 0;

            transition: .35s;

            font-size: 13px;
        }

        .toast.show {
            transform: translateY(0);

            opacity: 1;
        }


        /* =====================================================
           RESPONSIVE
        ===================================================== */

        @media(max-width:1100px) {

            nav {
                display: none;
            }

            .mobile-menu-btn {
                display: grid;
            }

            .hero-grid {
                grid-template-columns: 1fr;
            }

            .hero {
                padding: 80px 0;
            }

            .hero-showcase {
                height: 420px;
            }

            .categories {
                grid-template-columns:
                    repeat(3,1fr);
            }

            .products {
                grid-template-columns:
                    repeat(3,1fr);
            }

            .trust-grid {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .footer-grid {
                grid-template-columns:
                    repeat(2,1fr);
            }
        }


        @media(max-width:750px) {

            .header-actions .account {
                display: none;
            }

            .hero h1 {
                letter-spacing: -2px;
            }

            .categories {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .products {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .deal {
                grid-template-columns: 1fr;

                padding: 35px;

                gap: 30px;
            }

            .features,
            .reviews {
                grid-template-columns: 1fr;
            }

            .section {
                padding: 65px 0;
            }

            .section-heading {
                display: block;
            }

            .view-all {
                display: inline-block;

                margin-top: 12px;
            }
        }


        @media(max-width:520px) {

            .container {
                width:
                    min(
                        var(--container),
                        calc(100% - 28px)
                    );
            }

            .logo {
                font-size: 19px;
            }

            .logo-icon {
                width: 36px;
                height: 36px;
            }

            .hero h1 {
                font-size: 42px;
            }

            .hero-description {
                font-size: 14px;
            }

            .hero-showcase {
                height: 330px;
            }

            .product-3d {
                width: 220px;
            }

            .floating-card.one {
                left: 0;
            }

            .floating-card.two {
                right: 0;
            }

            .trust-grid {
                grid-template-columns: 1fr;
            }

            .categories {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 280px;
            }

            .deal {
                padding: 25px;
            }

            .deal h2 {
                font-size: 30px;
            }

            .timer {
                gap: 6px;
            }

            .time-box {
                width: 58px;
                height: 58px;
            }

            .newsletter-form {
                flex-direction: column;

                background: transparent;

                gap: 8px;
            }

            .newsletter-form input {
                border-radius: 11px;
            }

            .newsletter-form button {
                height: 45px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }
        }

    </style>
</head>


<body>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header-inner">

        <a href="#" class="logo">

            <div class="logo-icon">
                <i class="fa-solid fa-bag-shopping"></i>
            </div>

            Nexus<span>Shop</span>

        </a>


        <nav>

            <ul>

                <li><a href="#">Home</a></li>

                <li>
                    <a href="#categories">
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        Trending
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#reviews">
                        Reviews
                    </a>
                </li>

            </ul>

        </nav>


        <div class="header-actions">

            <button
                class="icon-btn"
                onclick="focusSearch()"
                title="Search">

                <i class="fa-solid fa-search"></i>

            </button>


            <button
                class="icon-btn account"
                title="Account">

                <i class="fa-regular fa-user"></i>

            </button>


            <button
                class="icon-btn"
                onclick="showToast('Wishlist opened ❤️')"
                title="Wishlist">

                <i class="fa-regular fa-heart"></i>

            </button>


            <button
                class="icon-btn cart-btn"
                onclick="showToast('Your cart is ready 🛒')"
                title="Cart">

                <i class="fa-solid fa-cart-shopping"></i>

                <span
                    class="cart-count"
                    id="cartCount">
                    0
                </span>

            </button>


            <button
                class="icon-btn mobile-menu-btn"
                onclick="showToast('Mobile menu')">

                <i class="fa-solid fa-bars"></i>

            </button>

        </div>

    </div>

</header>



<!-- =========================================================
     HERO
========================================================= -->

<section class="hero">

    <div class="container hero-grid">


        <div class="hero-content">

            <div class="eyebrow">

                <i class="fa-solid fa-bolt"></i>

                New season • Premium collection

            </div>


            <h1>

                Shopping,

                <span class="gradient-text">
                    reimagined.
                </span>

            </h1>


            <p class="hero-description">

                Discover premium technology, fashion and
                lifestyle products designed to make everyday
                moments feel extraordinary.

            </p>


            <div class="hero-buttons">

                <button
                    class="btn btn-primary"
                    onclick="scrollToProducts()">

                    Explore Collection

                    <i class="fa-solid fa-arrow-right"></i>

                </button>


                <button
                    class="btn btn-outline"
                    onclick="scrollToDeals()">

                    <i class="fa-solid fa-fire"></i>

                    View Hot Deals

                </button>

            </div>

        </div>



        <!-- 3D SHOWCASE -->

        <div class="hero-showcase">

            <div class="glow"></div>


            <div class="orb one"></div>

            <div class="orb two"></div>


            <div class="floating-card one">

                <small>Starting from</small>

                <strong>$299</strong>

            </div>


            <div class="floating-card two">

                <small>Customer rating</small>

                <strong>4.9 ★</strong>

            </div>


            <div
                class="product-3d"
                id="heroProduct">

                <img
                    src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=900&q=90"
                    alt="Premium laptop">

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     TRUST
========================================================= -->

<section class="trust-bar">

    <div class="container">

        <div class="trust-grid">


            <div class="trust-item">

                <div class="trust-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>

                <div>

                    <strong>Free Shipping</strong>

                    <small>
                        On orders over $50
                    </small>

                </div>

            </div>


            <div class="trust-item">

                <div class="trust-icon">
                    <i class="fa-solid fa-shield-halved"></i>
                </div>

                <div>

                    <strong>Secure Payment</strong>

                    <small>
                        100% protected checkout
                    </small>

                </div>

            </div>


            <div class="trust-item">

                <div class="trust-icon">
                    <i class="fa-solid fa-rotate-left"></i>
                </div>

                <div>

                    <strong>Easy Returns</strong>

                    <small>
                        30-day return policy
                    </small>

                </div>

            </div>


            <div class="trust-item">

                <div class="trust-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>

                <div>

                    <strong>24/7 Support</strong>

                    <small>
                        We're here to help
                    </small>

                </div>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     CATEGORIES
========================================================= -->

<section
    class="section"
    id="categories">

    <div class="container">

        <div class="section-heading">

            <div>

                <h2>
                    Shop by category
                </h2>

                <p>
                    Find exactly what you're looking for.
                </p>

            </div>

            <a
                href="#products"
                class="view-all">

                View all
                <i class="fa-solid fa-arrow-right"></i>

            </a>

        </div>


        <div class="categories">


            <div
                class="category-card"
                onclick="filterCategory('phones')">

                <div class="category-icon">
                    <i class="fa-solid fa-mobile-screen"></i>
                </div>

                <h4>Smartphones</h4>

                <p>128 products</p>

            </div>


            <div
                class="category-card"
                onclick="filterCategory('laptops')">

                <div class="category-icon">
                    <i class="fa-solid fa-laptop"></i>
                </div>

                <h4>Laptops</h4>

                <p>86 products</p>

            </div>


            <div
                class="category-card"
                onclick="filterCategory('fashion')">

                <div class="category-icon">
                    <i class="fa-solid fa-shirt"></i>
                </div>

                <h4>Fashion</h4>

                <p>245 products</p>

            </div>


            <div
                class="category-card"
                onclick="filterCategory('audio')">

                <div class="category-icon">
                    <i class="fa-solid fa-headphones"></i>
                </div>

                <h4>Audio</h4>

                <p>74 products</p>

            </div>


            <div
                class="category-card"
                onclick="filterCategory('shoes')">

                <div class="category-icon">
                    <i class="fa-solid fa-shoe-prints"></i>
                </div>

                <h4>Footwear</h4>

                <p>154 products</p>

            </div>


            <div
                class="category-card"
                onclick="filterCategory('accessories')">

                <div class="category-icon">
                    <i class="fa-solid fa-watch"></i>
                </div>

                <h4>Accessories</h4>

                <p>93 products</p>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     PRODUCTS
========================================================= -->

<section
    class="section"
    id="products"
    style="padding-top:20px">

    <div class="container">


        <div class="section-heading">

            <div>

                <h2>
                    Trending products
                </h2>

                <p>
                    Handpicked products people love right now.
                </p>

            </div>

        </div>


        <div class="filters">

            <button
                class="filter active"
                data-filter="all"
                onclick="filterProducts('all', this)">
                All
            </button>

            <button
                class="filter"
                data-filter="phones"
                onclick="filterProducts('phones', this)">
                Smartphones
            </button>

            <button
                class="filter"
                data-filter="laptops"
                onclick="filterProducts('laptops', this)">
                Laptops
            </button>

            <button
                class="filter"
                data-filter="audio"
                onclick="filterProducts('audio', this)">
                Audio
            </button>

            <button
                class="filter"
                data-filter="accessories"
                onclick="filterProducts('accessories', this)">
                Accessories
            </button>

        </div>


        <div
            class="products"
            id="productGrid">


            <!-- PRODUCT 1 -->

            <div
                class="product-card"
                data-category="phones">

                <div class="product-image">

                    <span class="badge">
                        NEW
                    </span>

                    <button
                        class="wishlist"
                        onclick="toggleWishlist(this)">

                        <i class="fa-regular fa-heart"></i>

                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
                        alt="Smartphone">

                </div>


                <div class="product-info">

                    <div class="product-category">
                        Smartphones
                    </div>

                    <h3 class="product-title">
                        Premium Smartphone Pro
                    </h3>

                    <div class="rating">
                        ★★★★★
                        <span>(128)</span>
                    </div>


                    <div class="product-bottom">

                        <div class="price">
                            $999
                            <span class="old-price">
                                $1,099
                            </span>
                        </div>

                        <button
                            class="add-btn"
                            onclick="addToCart('Premium Smartphone Pro')">

                            <i class="fa-solid fa-plus"></i>

                        </button>

                    </div>

                </div>

            </div>



            <!-- PRODUCT 2 -->

            <div
                class="product-card"
                data-category="laptops">

                <div class="product-image">

                    <span class="badge">
                        BESTSELLER
                    </span>

                    <button
                        class="wishlist"
                        onclick="toggleWishlist(this)">

                        <i class="fa-regular fa-heart"></i>

                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=700&q=85"
                        alt="Laptop">

                </div>


                <div class="product-info">

                    <div class="product-category">
                        Laptops
                    </div>

                    <h3 class="product-title">
                        UltraBook Air 14
                    </h3>

                    <div class="rating">
                        ★★★★★
                        <span>(86)</span>
                    </div>


                    <div class="product-bottom">

                        <div class="price">
                            $1,499
                            <span class="old-price">
                                $1,699
                            </span>
                        </div>

                        <button
                            class="add-btn"
                            onclick="addToCart('UltraBook Air 14')">

                            <i class="fa-solid fa-plus"></i>

                        </button>

                    </div>

                </div>

            </div>



            <!-- PRODUCT 3 -->

            <div
                class="product-card"
                data-category="accessories">

                <div class="product-image">

                    <span class="badge">
                        -25%
                    </span>

                    <button
                        class="wishlist"
                        onclick="toggleWishlist(this)">

                        <i class="fa-regular fa-heart"></i>

                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
                        alt="Smart watch">

                </div>


                <div class="product-info">

                    <div class="product-category">
                        Accessories
                    </div>

                    <h3 class="product-title">
                        SmartWatch Series X
                    </h3>

                    <div class="rating">
                        ★★★★★
                        <span>(214)</span>
                    </div>


                    <div class="product-bottom">

                        <div class="price">
                            $299
                            <span class="old-price">
                                $399
                            </span>
                        </div>

                        <button
                            class="add-btn"
                            onclick="addToCart('SmartWatch Series X')">

                            <i class="fa-solid fa-plus"></i>

                        </button>

                    </div>

                </div>

            </div>



            <!-- PRODUCT 4 -->

            <div
                class="product-card"
                data-category="audio">

                <div class="product-image">

                    <span class="badge">
                        HOT
                    </span>

                    <button
                        class="wishlist"
                        onclick="toggleWishlist(this)">

                        <i class="fa-regular fa-heart"></i>

                    </button>

                    <img
                        src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
                        alt="Headphones">

                </div>


                <div class="product-info">

                    <div class="product-category">
                        Audio
                    </div>

                    <h3 class="product-title">
                        NoiseCancel Pro Headphones
                    </h3>

                    <div class="rating">
                        ★★★★★
                        <span>(176)</span>
                    </div>


                    <div class="product-bottom">

                        <div class="price">
                            $249
                            <span class="old-price">
                                $299
                            </span>
                        </div>

                        <button
                            class="add-btn"
                            onclick="addToCart('NoiseCancel Pro Headphones')">

                            <i class="fa-solid fa-plus"></i>

                        </button>

                    </div>

                </div>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     DEAL
========================================================= -->

<section
    class="section"
    id="deals">

    <div class="container">

        <div class="deal">


            <div class="deal-content">

                <div class="deal-label">

                    Limited time offer

                </div>


                <h2>
                    Weekend Flash Sale
                </h2>


                <p>

                    Upgrade your setup with premium
                    technology and save big before
                    this exclusive offer disappears.

                </p>


                <div class="timer">

                    <div class="time-box">

                        <div>
                            <strong id="days">
                                00
                            </strong>

                            <small>
                                DAYS
                            </small>
                        </div>

                    </div>


                    <div class="time-box">

                        <div>
                            <strong id="hours">
                                00
                            </strong>

                            <small>
                                HOURS
                            </small>
                        </div>

                    </div>


                    <div class="time-box">

                        <div>
                            <strong id="minutes">
                                00
                            </strong>

                            <small>
                                MIN
                            </small>
                        </div>

                    </div>


                    <div class="time-box">

                        <div>
                            <strong id="seconds">
                                00
                            </strong>

                            <small>
                                SEC
                            </small>
                        </div>

                    </div>

                </div>


                <button
                    class="btn btn-primary"
                    onclick="addToCart('Flash Sale Product')">

                    Shop the deal

                    <i class="fa-solid fa-arrow-right"></i>

                </button>

            </div>


            <div class="deal-product">

                <img
                    src="https://images.unsplash.com/photo-1606220945770-b5b6c2c55bf1?auto=format&fit=crop&w=800&q=85"
                    alt="Premium headphones">

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     FEATURES
========================================================= -->

<section class="section">

    <div class="container">

        <div class="section-heading">

            <div>

                <h2>
                    Why shop with us?
                </h2>

                <p>
                    Everything designed around you.
                </p>

            </div>

        </div>


        <div class="features">


            <div class="feature">

                <div class="feature-icon">
                    <i class="fa-solid fa-wand-magic-sparkles"></i>
                </div>

                <h3>
                    Curated Products
                </h3>

                <p>
                    Every product is carefully selected
                    for quality, style and value.
                </p>

            </div>


            <div class="feature">

                <div class="feature-icon">
                    <i class="fa-solid fa-bolt"></i>
                </div>

                <h3>
                    Lightning Fast Delivery
                </h3>

                <p>
                    Fast, reliable delivery with real-time
                    order tracking from checkout to doorstep.
                </p>

            </div>


            <div class="feature">

                <div class="feature-icon">
                    <i class="fa-solid fa-face-smile"></i>
                </div>

                <h3>
                    Customer First
                </h3>

                <p>
                    Friendly support and simple returns
                    whenever you need us.
                </p>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     REVIEWS
========================================================= -->

<section
    class="section"
    id="reviews">

    <div class="container">

        <div class="section-heading">

            <div>

                <h2>
                    Loved by shoppers
                </h2>

                <p>
                    Real experiences from our customers.
                </p>

            </div>

        </div>


        <div class="reviews">


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "The website is incredibly easy to use
                    and my order arrived much faster than
                    expected. Absolutely loved it!"
                </p>

                <div class="review-user">

                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Customer">

                    <div>

                        <strong>
                            Ava Martin
                        </strong>

                        <small>
                            Verified buyer
                        </small>

                    </div>

                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "Beautiful shopping experience.
                    The product quality was excellent and
                    checkout was super smooth."
                </p>

                <div class="review-user">

                    <img
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                        alt="Customer">

                    <div>

                        <strong>
                            Michael Lee
                        </strong>

                        <small>
                            Frequent buyer
                        </small>

                    </div>

                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p>
                    "I love how premium everything feels.
                    The product presentation and animations
                    make the site really enjoyable."
                </p>

                <div class="review-user">

                    <img
                        src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
                        alt="Customer">

                    <div>

                        <strong>
                            Sophia Williams
                        </strong>

                        <small>
                            Verified buyer
                        </small>

                    </div>

                </div>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <div class="newsletter-content">

                <h2>
                    Get the good stuff first.
                </h2>

                <p>
                    New products, exclusive deals and
                    special offers delivered to your inbox.
                </p>


                <form
                    class="newsletter-form"
                    onsubmit="subscribe(event)">

                    <input
                        type="email"
                        id="email"
                        placeholder="Enter your email address"
                        required>

                    <button type="submit">
                        Subscribe
                    </button>

                </form>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">


            <div class="footer-brand">

                <a href="#" class="logo">

                    <div class="logo-icon">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </div>

                    Nexus<span>Shop</span>

                </a>


                <p>

                    A premium shopping experience built
                    around great products, beautiful design
                    and happy customers.

                </p>


                <div class="socials">

                    <a href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-youtube"></i>
                    </a>

                </div>

            </div>


            <div class="footer">

                <h4>
                    Shop
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            New Arrivals
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Best Sellers
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Deals
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Categories
                        </a>
                    </li>

                </ul>

            </div>


            <div class="footer">

                <h4>
                    Help
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            Help Center
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Shipping
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Returns
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Contact
                        </a>
                    </li>

                </ul>

            </div>


            <div class="footer">

                <h4>
                    Company
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            About
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Careers
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Privacy
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Terms
                        </a>
                    </li>

                </ul>

            </div>


        </div>


        <div class="copyright">

            © <span id="year"></span>
            NexusShop. All rights reserved.

        </div>

    </div>

</footer>



<!-- TOAST -->

<div
    class="toast"
    id="toast">
</div>



<script>

    /* =====================================================
       CART
    ===================================================== */

    let cartCount = 0;


    function addToCart(productName) {

        cartCount++;

        document.getElementById("cartCount")
            .textContent = cartCount;

        showToast(
            productName + " added to cart 🛒"
        );
    }



    /* =====================================================
       TOAST
    ===================================================== */

    let toastTimer;

    function showToast(message) {

        const toast =
            document.getElementById("toast");

        toast.textContent = message;

        toast.classList.add("show");

        clearTimeout(toastTimer);

        toastTimer =
            setTimeout(() => {

                toast.classList.remove("show");

            }, 2500);
    }



    /* =====================================================
       WISHLIST
    ===================================================== */

    function toggleWishlist(button) {

        button.classList.toggle("active");

        const icon =
            button.querySelector("i");

        if (
            button.classList.contains("active")
        ) {

            icon.classList.remove(
                "fa-regular"
            );

            icon.classList.add(
                "fa-solid"
            );

            showToast(
                "Added to wishlist ❤️"
            );

        } else {

            icon.classList.remove(
                "fa-solid"
            );

            icon.classList.add(
                "fa-regular"
            );

            showToast(
                "Removed from wishlist"
            );
        }
    }



    /* =====================================================
       PRODUCT FILTER
    ===================================================== */

    function filterProducts(
        category,
        button
    ) {

        document
            .querySelectorAll(".filter")
            .forEach(btn =>
                btn.classList.remove("active")
            );

        if (button) {
            button.classList.add("active");
        }


        document
            .querySelectorAll(".product-card")
            .forEach(card => {

                const cardCategory =
                    card.dataset.category;

                if (
                    category === "all" ||
                    cardCategory === category
                ) {

                    card.style.display =
                        "block";

                } else {

                    card.style.display =
                        "none";
                }

            });
    }



    function filterCategory(category) {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

        const filter =
            document.querySelector(
                `.filter[data-filter="${category}"]`
            );

        if (filter) {

            filterProducts(
                category,
                filter
            );

        } else {

            filterProducts(
                "all",
                document.querySelector(
                    '.filter[data-filter="all"]'
                )
            );
        }
    }



    /* =====================================================
       SCROLL
    ===================================================== */

    function scrollToProducts() {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });
    }


    function scrollToDeals() {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });
    }



    /* =====================================================
       SEARCH
    ===================================================== */

    function focusSearch() {

        const query =
            prompt(
                "What are you looking for?"
            );

        if (!query) return;

        const cards =
            document.querySelectorAll(
                ".product-card"
            );

        let found = false;

        cards.forEach(card => {

            const title =
                card
                    .querySelector(
                        ".product-title"
                    )
                    .textContent
                    .toLowerCase();

            if (
                title.includes(
                    query.toLowerCase()
                )
            ) {

                card.style.display =
                    "block";

                found = true;

            } else {

                card.style.display =
                    "none";
            }

        });

        if (!found) {

            showToast(
                "No products found for " +
                query
            );

        } else {

            scrollToProducts();
        }
    }



    /* =====================================================
       NEWSLETTER
    ===================================================== */

    function subscribe(event) {

        event.preventDefault();

        const email =
            document.getElementById(
                "email"
            ).value;

        showToast(
            "Thanks for subscribing! 🎉"
        );

        event.target.reset();
    }



    /* =====================================================
       COUNTDOWN
    ===================================================== */

    const saleEnd =
        new Date(
            Date.now() +
            2 * 24 * 60 * 60 * 1000
        );


    function updateCountdown() {

        const now =
            new Date();

        const difference =
            saleEnd - now;

        if (difference <= 0) {
            return;
        }


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );

        const hours =
            Math.floor(
                (difference /
                    (1000 * 60 * 60))
                % 24
            );

        const minutes =
            Math.floor(
                (difference /
                    (1000 * 60))
                % 60
            );

        const seconds =
            Math.floor(
                (difference / 1000)
                % 60
            );


        document.getElementById(
            "days"
        ).textContent =
            String(days).padStart(2,"0");


        document.getElementById(
            "hours"
        ).textContent =
            String(hours).padStart(2,"0");


        document.getElementById(
            "minutes"
        ).textContent =
            String(minutes).padStart(2,"0");


        document.getElementById(
            "seconds"
        ).textContent =
            String(seconds).padStart(2,"0");
    }


    updateCountdown();

    setInterval(
        updateCountdown,
        1000
    );



    /* =====================================================
       HERO 3D MOUSE EFFECT
    ===================================================== */

    const hero =
        document.querySelector(
            ".hero"
        );

    const heroProduct =
        document.getElementById(
            "heroProduct"
        );


    hero.addEventListener(
        "mousemove",
        function(event) {

            const rect =
                hero.getBoundingClientRect();

            const x =
                event.clientX -
                rect.left;

            const y =
                event.clientY -
                rect.top;

            const rotateY =
                (x / rect.width - .5)
                * 20;

            const rotateX =
                (y / rect.height - .5)
                * -15;


            heroProduct.style.transform =
                `
                translate(-50%,-50%)
                rotateY(${rotateY}deg)
                rotateX(${rotateX}deg)
                rotateZ(-3deg)
                scale(1.04)
                `;
        }
    );


    hero.addEventListener(
        "mouseleave",
        function() {

            heroProduct.style.transform =
                `
                translate(-50%,-50%)
                rotateY(-14deg)
                rotateX(8deg)
                rotateZ(-3deg)
                `;
        }
    );



    /* =====================================================
       PRODUCT 3D TILT
    ===================================================== */

    document
        .querySelectorAll(".product-card")
        .forEach(card => {

            card.addEventListener(
                "mousemove",
                event => {

                    const rect =
                        card.getBoundingClientRect();

                    const x =
                        event.clientX -
                        rect.left;

                    const y =
                        event.clientY -
                        rect.top;

                    const rotateY =
                        (x / rect.width - .5)
                        * 8;

                    const rotateX =
                        (y / rect.height - .5)
                        * -8;


                    card.style.transform =
                        `
                        translateY(-10px)
                        rotateX(${rotateX}deg)
                        rotateY(${rotateY}deg)
                        `;
                }
            );


            card.addEventListener(
                "mouseleave",
                () => {

                    card.style.transform =
                        "";
                }
            );

        });



    /* =====================================================
       YEAR
    ===================================================== */

    document.getElementById(
        "year"
    ).textContent =
        new Date().getFullYear();

</script>

</body>
</html>
