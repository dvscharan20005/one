<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>AnimeVerse — Watch Anime Online</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@500;600;700;800&display=swap"
        rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        :root {
            --bg: #07070d;
            --bg2: #0d0d16;
            --card: #12121d;
            --card2: #171725;

            --white: #ffffff;
            --text: #f4f4f5;
            --muted: #9ca3af;

            --purple: #8b5cf6;
            --pink: #ec4899;
            --cyan: #06b6d4;
            --red: #ef4444;

            --border: rgba(255,255,255,.08);

            --container: 1280px;
        }


        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        html {
            scroll-behavior: smooth;
        }


        body {
            background: var(--bg);
            color: var(--text);

            font-family: Inter, sans-serif;

            overflow-x: hidden;
        }


        body::before {
            content: "";

            position: fixed;

            inset: 0;

            pointer-events: none;

            background:
                radial-gradient(
                    circle at 15% 20%,
                    rgba(139,92,246,.08),
                    transparent 25%
                ),
                radial-gradient(
                    circle at 85% 60%,
                    rgba(236,72,153,.06),
                    transparent 25%
                );

            z-index: -1;
        }


        img {
            display: block;
            max-width: 100%;
        }


        a {
            color: inherit;
            text-decoration: none;
        }


        button,
        input {
            font-family: inherit;
        }


        .container {
            width: min(
                var(--container),
                calc(100% - 40px)
            );

            margin: auto;
        }


        /* ==========================================
           HEADER
        ========================================== */

        header {
            position: fixed;

            top: 0;
            left: 0;
            right: 0;

            height: 76px;

            z-index: 1000;

            background:
                linear-gradient(
                    to bottom,
                    rgba(7,7,13,.96),
                    rgba(7,7,13,.70)
                );

            backdrop-filter: blur(18px);

            border-bottom:
                1px solid var(--border);
        }


        .header-inner {
            height: 100%;

            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 25px;
        }


        .logo {
            display: flex;

            align-items: center;

            gap: 10px;

            font-family: Poppins;

            font-weight: 800;

            font-size: 22px;
        }


        .logo-icon {
            width: 42px;
            height: 42px;

            border-radius: 13px;

            display: grid;

            place-items: center;

            background:
                linear-gradient(
                    135deg,
                    var(--purple),
                    var(--pink)
                );

            box-shadow:
                0 0 30px
                rgba(139,92,246,.35);

            transform: rotate(-5deg);
        }


        .logo span {
            color: var(--pink);
        }


        nav ul {
            display: flex;

            align-items: center;

            gap: 28px;

            list-style: none;
        }


        nav a {
            color: #c4c4cc;

            font-size: 14px;

            font-weight: 600;

            transition: .25s;
        }


        nav a:hover,
        nav a.active {
            color: white;
        }


        nav a.active::after {
            content: "";

            display: block;

            width: 20px;
            height: 2px;

            margin:
                5px auto 0;

            border-radius: 10px;

            background:
                linear-gradient(
                    90deg,
                    var(--purple),
                    var(--pink)
                );
        }


        .header-actions {
            display: flex;

            align-items: center;

            gap: 9px;
        }


        .icon-btn {
            width: 40px;
            height: 40px;

            border: 1px solid var(--border);

            border-radius: 12px;

            background:
                rgba(255,255,255,.04);

            color: #d4d4d8;

            display: grid;

            place-items: center;

            cursor: pointer;

            transition: .25s;
        }


        .icon-btn:hover {
            color: white;

            background:
                rgba(139,92,246,.18);

            border-color:
                rgba(139,92,246,.4);

            transform:
                translateY(-2px);
        }


        .profile {
            width: 36px;
            height: 36px;

            border-radius: 50%;

            object-fit: cover;

            border:
                2px solid
                rgba(139,92,246,.7);
        }


        /* ==========================================
           HERO
        ========================================== */

        .hero {
            min-height: 720px;

            position: relative;

            display: flex;

            align-items: center;

            overflow: hidden;

            padding-top: 76px;
        }


        .hero-bg {
            position: absolute;

            inset: 0;

            background-image:
                linear-gradient(
                    90deg,
                    #07070d 0%,
                    rgba(7,7,13,.88) 28%,
                    rgba(7,7,13,.35) 62%,
                    rgba(7,7,13,.15) 100%
                ),
                linear-gradient(
                    0deg,
                    #07070d 0%,
                    transparent 35%
                ),
                url("https://images.unsplash.com/photo-1578632767115-351597cf2477?auto=format&fit=crop&w=2000&q=90");

            background-size: cover;

            background-position:
                center;
        }


        .hero-bg::after {
            content: "";

            position: absolute;

            inset: 0;

            background:
                radial-gradient(
                    circle at 75% 45%,
                    rgba(139,92,246,.20),
                    transparent 30%
                );
        }


        .hero-content {
            position: relative;

            z-index: 3;

            max-width: 650px;
        }


        .hero-tag {
            display: inline-flex;

            align-items: center;

            gap: 8px;

            padding: 7px 12px;

            border-radius: 999px;

            background:
                rgba(139,92,246,.14);

            border:
                1px solid
                rgba(139,92,246,.35);

            color: #c4b5fd;

            font-size: 11px;

            font-weight: 800;

            text-transform: uppercase;

            letter-spacing: 1px;

            margin-bottom: 18px;
        }


        .hero h1 {
            font-family: Poppins;

            font-size:
                clamp(45px, 6vw, 78px);

            line-height: 1.02;

            letter-spacing: -3px;

            margin-bottom: 18px;
        }


        .hero h1 span {
            background:
                linear-gradient(
                    90deg,
                    #c084fc,
                    #f472b6
                );

            -webkit-background-clip: text;

            background-clip: text;

            color: transparent;
        }


        .anime-meta {
            display: flex;

            align-items: center;

            flex-wrap: wrap;

            gap: 12px;

            margin-bottom: 18px;
        }


        .anime-meta span {
            color: #d4d4d8;

            font-size: 13px;
        }


        .rating {
            color: #fbbf24 !important;

            font-weight: 800;
        }


        .age {
            padding: 3px 7px;

            border: 1px solid #52525b;

            border-radius: 4px;

            font-size: 10px !important;
        }


        .hero-description {
            color: #c4c4cc;

            font-size: 15px;

            line-height: 1.75;

            max-width: 580px;

            margin-bottom: 28px;
        }


        .hero-buttons {
            display: flex;

            gap: 12px;

            flex-wrap: wrap;
        }


        .btn {
            border: none;

            border-radius: 12px;

            padding: 13px 20px;

            display: inline-flex;

            align-items: center;

            gap: 9px;

            font-size: 13px;

            font-weight: 800;

            cursor: pointer;

            transition: .3s;
        }


        .btn-primary {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    var(--purple),
                    var(--pink)
                );

            box-shadow:
                0 12px 35px
                rgba(139,92,246,.30);
        }


        .btn-primary:hover {
            transform:
                translateY(-4px)
                scale(1.02);

            box-shadow:
                0 18px 45px
                rgba(139,92,246,.45);
        }


        .btn-dark {
            color: white;

            background:
                rgba(255,255,255,.10);

            border:
                1px solid
                rgba(255,255,255,.15);

            backdrop-filter: blur(10px);
        }


        .btn-dark:hover {
            background:
                rgba(255,255,255,.17);
        }


        /* ==========================================
           FLOATING 3D ORBS
        ========================================== */

        .orb {
            position: absolute;

            border-radius: 50%;

            pointer-events: none;

            filter: blur(1px);

            opacity: .75;

            animation:
                orbFloat 7s
                ease-in-out
                infinite;
        }


        .orb-1 {
            width: 100px;
            height: 100px;

            right: 12%;

            top: 23%;

            background:
                radial-gradient(
                    circle at 30% 30%,
                    #f5d0fe,
                    #8b5cf6 45%,
                    #312e81
                );

            box-shadow:
                inset -20px -20px 30px
                rgba(0,0,0,.35),
                0 25px 60px
                rgba(139,92,246,.25);
        }


        .orb-2 {
            width: 45px;
            height: 45px;

            right: 28%;

            bottom: 22%;

            background:
                radial-gradient(
                    circle at 30% 30%,
                    #67e8f9,
                    #06b6d4
                );

            animation-delay:
                -2s;
        }


        @keyframes orbFloat {

            0%,100% {
                transform:
                    translate3d(0,0,0)
                    rotate(0deg);
            }

            50% {
                transform:
                    translate3d(
                        15px,
                        -25px,
                        30px
                    )
                    rotate(180deg);
            }
        }


        /* ==========================================
           CONTENT SECTIONS
        ========================================== */

        .section {
            padding: 65px 0 0;
        }


        .section-heading {
            display: flex;

            justify-content: space-between;

            align-items: end;

            margin-bottom: 22px;
        }


        .section-heading h2 {
            font-family: Poppins;

            font-size: 25px;

            letter-spacing: -.7px;
        }


        .section-heading p {
            color: var(--muted);

            font-size: 12px;

            margin-top: 5px;
        }


        .view-all {
            color: #c4b5fd;

            font-size: 12px;

            font-weight: 700;
        }


        /* ==========================================
           ANIME CARDS
        ========================================== */

        .anime-grid {
            display: grid;

            grid-template-columns:
                repeat(6,1fr);

            gap: 15px;
        }


        .anime-card {
            position: relative;

            overflow: hidden;

            border-radius: 13px;

            background: var(--card);

            border:
                1px solid
                var(--border);

            cursor: pointer;

            transform-style: preserve-3d;

            transition:
                transform .4s,
                box-shadow .4s,
                border-color .4s;
        }


        .anime-card:hover {
            transform:
                translateY(-8px)
                rotateX(3deg);

            border-color:
                rgba(139,92,246,.45);

            box-shadow:
                0 20px 45px
                rgba(0,0,0,.35);
        }


        .anime-poster {
            height: 285px;

            position: relative;

            overflow: hidden;
        }


        .anime-poster img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition:
                transform .5s,
                filter .5s;
        }


        .anime-card:hover
        .anime-poster img {
            transform:
                scale(1.08);

            filter:
                brightness(.75);
        }


        .poster-overlay {
            position: absolute;

            inset: 0;

            display: flex;

            align-items: center;

            justify-content: center;

            background:
                rgba(0,0,0,.35);

            opacity: 0;

            transition: .3s;
        }


        .anime-card:hover
        .poster-overlay {
            opacity: 1;
        }


        .play-circle {
            width: 48px;
            height: 48px;

            border-radius: 50%;

            display: grid;

            place-items: center;

            background:
                linear-gradient(
                    135deg,
                    var(--purple),
                    var(--pink)
                );

            box-shadow:
                0 10px 35px
                rgba(139,92,246,.5);

            transform: scale(.7);

            transition: .3s;
        }


        .anime-card:hover
        .play-circle {
            transform: scale(1);
        }


        .card-badge {
            position: absolute;

            top: 9px;
            left: 9px;

            padding: 4px 7px;

            border-radius: 5px;

            font-size: 9px;

            font-weight: 800;

            background:
                rgba(0,0,0,.75);

            backdrop-filter:
                blur(8px);
        }


        .card-badge.hot {
            color: #fecaca;

            background:
                rgba(127,29,29,.8);
        }


        .card-badge.new {
            color: #c4b5fd;

            background:
                rgba(76,29,149,.8);
        }


        .card-info {
            padding: 12px;
        }


        .card-info h3 {
            font-family: Poppins;

            font-size: 13px;

            white-space: nowrap;

            overflow: hidden;

            text-overflow: ellipsis;

            margin-bottom: 6px;
        }


        .card-meta {
            display: flex;

            align-items: center;

            justify-content: space-between;

            color: var(--muted);

            font-size: 10px;
        }


        .card-rating {
            color: #fbbf24;
        }


        /* ==========================================
           CONTINUE WATCHING
        ========================================== */

        .continue-grid {
            display: grid;

            grid-template-columns:
                repeat(4,1fr);

            gap: 17px;
        }


        .continue-card {
            background:
                var(--card);

            border:
                1px solid
                var(--border);

            border-radius: 14px;

            overflow: hidden;

            transition: .3s;

            cursor: pointer;
        }


        .continue-card:hover {
            transform:
                translateY(-6px);

            border-color:
                rgba(139,92,246,.35);
        }


        .continue-image {
            height: 150px;

            position: relative;
        }


        .continue-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;
        }


        .continue-image::after {
            content: "";

            position: absolute;

            inset: 0;

            background:
                linear-gradient(
                    transparent 45%,
                    rgba(0,0,0,.75)
                );
        }


        .progress {
            position: absolute;

            bottom: 0;
            left: 0;

            height: 3px;

            width: 63%;

            background:
                linear-gradient(
                    90deg,
                    var(--purple),
                    var(--pink)
                );

            z-index: 2;
        }


        .continue-info {
            padding: 12px;
        }


        .continue-info h3 {
            font-size: 13px;

            margin-bottom: 6px;
        }


        .continue-info p {
            color: var(--muted);

            font-size: 10px;
        }


        /* ==========================================
           GENRES
        ========================================== */

        .genre-grid {
            display: grid;

            grid-template-columns:
                repeat(8,1fr);

            gap: 10px;
        }


        .genre {
            padding: 13px 10px;

            text-align: center;

            border-radius: 10px;

            background:
                var(--card);

            border:
                1px solid
                var(--border);

            color: #c4c4cc;

            font-size: 11px;

            font-weight: 700;

            cursor: pointer;

            transition: .25s;
        }


        .genre:hover {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    rgba(139,92,246,.25),
                    rgba(236,72,153,.18)
                );

            border-color:
                rgba(139,92,246,.4);

            transform:
                translateY(-3px);
        }


        /* ==========================================
           FEATURE BANNER
        ========================================== */

        .feature-banner {
            min-height: 350px;

            border-radius: 22px;

            overflow: hidden;

            position: relative;

            display: flex;

            align-items: center;

            background:
                linear-gradient(
                    90deg,
                    rgba(10,10,17,.98),
                    rgba(10,10,17,.75),
                    rgba(10,10,17,.15)
                ),
                url("https://images.unsplash.com/photo-1578632767115-351597cf2477?auto=format&fit=crop&w=1800&q=85");

            background-size: cover;

            background-position: center;
        }


        .feature-content {
            position: relative;

            z-index: 2;

            padding: 40px;

            max-width: 560px;
        }


        .feature-content small {
            color: #c4b5fd;

            font-weight: 800;

            text-transform: uppercase;

            letter-spacing: 2px;
        }


        .feature-content h2 {
            font-family: Poppins;

            font-size: 38px;

            margin:
                10px 0 12px;
        }


        .feature-content p {
            color: #bdbdc6;

            font-size: 13px;

            line-height: 1.7;

            margin-bottom: 20px;
        }


        /* ==========================================
           FOOTER
        ========================================== */

        footer {
            margin-top: 80px;

            padding:
                55px 0 25px;

            background:
                #050509;

            border-top:
                1px solid
                var(--border);
        }


        .footer-grid {
            display: grid;

            grid-template-columns:
                2fr 1fr 1fr 1fr;

            gap: 45px;
        }


        .footer-brand p {
            color: var(--muted);

            max-width: 350px;

            font-size: 12px;

            line-height: 1.7;

            margin-top: 15px;
        }


        .footer h4 {
            font-size: 13px;

            margin-bottom: 16px;
        }


        .footer ul {
            list-style: none;
        }


        .footer li {
            margin-bottom: 10px;
        }


        .footer li a {
            color: #777783;

            font-size: 12px;

            transition: .2s;
        }


        .footer li a:hover {
            color: white;
        }


        .socials {
            display: flex;

            gap: 8px;

            margin-top: 20px;
        }


        .socials a {
            width: 35px;
            height: 35px;

            border-radius: 10px;

            display: grid;

            place-items: center;

            background:
                #15151f;

            color: #aaa;

            transition: .25s;
        }


        .socials a:hover {
            color: white;

            background:
                var(--purple);

            transform:
                translateY(-3px);
        }


        .copyright {
            text-align: center;

            color: #555562;

            font-size: 10px;

            border-top:
                1px solid
                var(--border);

            margin-top: 40px;

            padding-top: 20px;
        }


        /* ==========================================
           SEARCH MODAL
        ========================================== */

        .search-modal {
            position: fixed;

            inset: 0;

            z-index: 2000;

            background:
                rgba(0,0,0,.75);

            backdrop-filter:
                blur(12px);

            display: none;

            align-items: flex-start;

            justify-content: center;

            padding-top: 130px;
        }


        .search-modal.show {
            display: flex;
        }


        .search-box {
            width:
                min(600px,90%);

            background:
                #15151f;

            border:
                1px solid
                rgba(139,92,246,.3);

            border-radius: 18px;

            padding: 8px;

            box-shadow:
                0 30px 100px
                rgba(0,0,0,.5);
        }


        .search-box input {
            width: 100%;

            background: transparent;

            border: none;

            outline: none;

            color: white;

            font-size: 15px;

            padding: 15px;
        }


        /* ==========================================
           TOAST
        ========================================== */

        .toast {
            position: fixed;

            bottom: 25px;

            right: 25px;

            z-index: 3000;

            background:
                #18181f;

            border:
                1px solid
                rgba(139,92,246,.35);

            padding: 13px 17px;

            border-radius: 12px;

            font-size: 12px;

            box-shadow:
                0 15px 40px
                rgba(0,0,0,.4);

            transform:
                translateY(100px);

            opacity: 0;

            transition: .35s;
        }


        .toast.show {
            transform:
                translateY(0);

            opacity: 1;
        }


        /* ==========================================
           RESPONSIVE
        ========================================== */

        @media(max-width:1100px) {

            nav {
                display: none;
            }

            .anime-grid {
                grid-template-columns:
                    repeat(4,1fr);
            }

            .genre-grid {
                grid-template-columns:
                    repeat(4,1fr);
            }

            .continue-grid {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .footer-grid {
                grid-template-columns:
                    repeat(2,1fr);
            }
        }


        @media(max-width:700px) {

            .container {
                width:
                    calc(100% - 28px);
            }

            .hero {
                min-height: 650px;
            }

            .hero-bg {
                background-position:
                    65% center;
            }

            .hero h1 {
                font-size: 46px;

                letter-spacing:
                    -2px;
            }

            .anime-grid {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .anime-poster {
                height: 245px;
            }

            .genre-grid {
                grid-template-columns:
                    repeat(3,1fr);
            }

            .continue-grid {
                grid-template-columns:
                    1fr;
            }

            .feature-banner {
                min-height: 420px;
            }

            .feature-content {
                padding: 25px;
            }

            .feature-content h2 {
                font-size: 30px;
            }

            .footer-grid {
                grid-template-columns:
                    1fr;
            }
        }


        @media(max-width:450px) {

            .header-actions
            .hide-mobile {
                display: none;
            }

            .anime-grid {
                gap: 10px;
            }

            .anime-poster {
                height: 220px;
            }

            .hero-buttons {
                flex-direction: column;

                align-items: flex-start;
            }

            .genre-grid {
                grid-template-columns:
                    repeat(2,1fr);
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

                <i class="fa-solid fa-play"></i>

            </div>

            Anime<span>Verse</span>

        </a>


        <nav>

            <ul>

                <li>
                    <a href="#" class="active">
                        Home
                    </a>
                </li>

                <li>
                    <a href="#popular">
                        Popular
                    </a>
                </li>

                <li>
                    <a href="#latest">
                        Latest
                    </a>
                </li>

                <li>
                    <a href="#genres">
                        Genres
                    </a>
                </li>

                <li>
                    <a href="#watchlist">
                        My List
                    </a>
                </li>

            </ul>

        </nav>


        <div class="header-actions">

            <button
                class="icon-btn"
                onclick="openSearch()">

                <i class="fa-solid fa-search"></i>

            </button>


            <button
                class="icon-btn hide-mobile"
                onclick="showToast('Notifications opened 🔔')">

                <i class="fa-regular fa-bell"></i>

            </button>


            <button
                class="icon-btn hide-mobile"
                onclick="showToast('Your watchlist ❤️')">

                <i class="fa-regular fa-heart"></i>

            </button>


            <img
                class="profile"
                src="https://i.pravatar.cc/100?img=12"
                alt="Profile">

        </div>

    </div>

</header>



<!-- =========================================================
     HERO
========================================================= -->

<section class="hero">

    <div class="hero-bg"></div>


    <div class="orb orb-1"></div>

    <div class="orb orb-2"></div>


    <div class="container">

        <div class="hero-content">


            <div class="hero-tag">

                <i class="fa-solid fa-fire"></i>

                #1 Trending Anime

            </div>


            <h1>

                Demon Slayer:
                <span>Infinity Castle</span>

            </h1>


            <div class="anime-meta">

                <span class="rating">
                    ★ 9.8
                </span>

                <span>
                    2026
                </span>

                <span>
                    24 Episodes
                </span>

                <span class="age">
                    16+
                </span>

                <span>
                    HD
                </span>

            </div>


            <p class="hero-description">

                Enter a world where demons and demon
                slayers collide. Follow Tanjiro and his
                allies as they face their most dangerous
                battle yet inside the mysterious Infinity
                Castle.

            </p>


            <div class="hero-buttons">

                <button
                    class="btn btn-primary"
                    onclick="watchAnime()">

                    <i class="fa-solid fa-play"></i>

                    Watch Now

                </button>


                <button
                    class="btn btn-dark"
                    onclick="addWatchlist()">

                    <i class="fa-regular fa-plus"></i>

                    My List

                </button>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     CONTINUE WATCHING
========================================================= -->

<section class="section">

    <div class="container">

        <div class="section-heading">

            <div>

                <h2>
                    Continue Watching
                </h2>

                <p>
                    Pick up where you left off.
                </p>

            </div>

            <a href="#" class="view-all">
                View All →
            </a>

        </div>


        <div class="continue-grid">


            <div
                class="continue-card"
                onclick="watchAnime()">

                <div class="continue-image">

                    <img
                        src="https://images.unsplash.com/photo-1578632767115-351597cf2477?auto=format&fit=crop&w=800&q=80"
                        alt="Anime">

                    <div class="progress"></div>

                </div>

                <div class="continue-info">

                    <h3>
                        Demon Slayer
                    </h3>

                    <p>
                        Episode 18 • 63% watched
                    </p>

                </div>

            </div>


            <div
                class="continue-card"
                onclick="watchAnime()">

                <div class="continue-image">

                    <img
                        src="https://images.unsplash.com/photo-1613376023733-0a73315d9b06?auto=format&fit=crop&w=800&q=80"
                        alt="Anime">

                    <div
                        class="progress"
                        style="width:42%">
                    </div>

                </div>

                <div class="continue-info">

                    <h3>
                        Cyberpunk: Edgerunners
                    </h3>

                    <p>
                        Episode 6 • 42% watched
                    </p>

                </div>

            </div>


            <div
                class="continue-card"
                onclick="watchAnime()">

                <div class="continue-image">

                    <img
                        src="https://images.unsplash.com/photo-1607604276583-eef5d076aa5f?auto=format&fit=crop&w=800&q=80"
                        alt="Anime">

                    <div
                        class="progress"
                        style="width:78%">
                    </div>

                </div>

                <div class="continue-info">

                    <h3>
                        Jujutsu Kaisen
                    </h3>

                    <p>
                        Episode 31 • 78% watched
                    </p>

                </div>

            </div>


            <div
                class="continue-card"
                onclick="watchAnime()">

                <div class="continue-image">

                    <img
                        src="https://images.unsplash.com/photo-1560972550-aba3456b5564?auto=format&fit=crop&w=800&q=80"
                        alt="Anime">

                    <div
                        class="progress"
                        style="width:25%">
                    </div>

                </div>

                <div class="continue-info">

                    <h3>
                        One Piece
                    </h3>

                    <p>
                        Episode 1121 • 25% watched
                    </p>

                </div>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     POPULAR
========================================================= -->

<section
    class="section"
    id="popular">

    <div class="container">


        <div class="section-heading">

            <div>

                <h2>
                    Popular Anime
                </h2>

                <p>
                    What everyone is watching right now.
                </p>

            </div>

            <a href="#" class="view-all">
                See More →
            </a>

        </div>


        <div class="anime-grid">


            <!-- 1 -->

            <div class="anime-card">

                <div class="anime-poster">

                    <span class="card-badge hot">
                        HOT
                    </span>

                    <img
                        src="https://images.unsplash.com/photo-1578632767115-351597cf2477?auto=format&fit=crop&w=700&q=85"
                        alt="Demon Slayer">

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>


                <div class="card-info">

                    <h3>
                        Demon Slayer
                    </h3>

                    <div class="card-meta">

                        <span>
                            24 Episodes
                        </span>

                        <span class="card-rating">
                            ★ 9.8
                        </span>

                    </div>

                </div>

            </div>



            <!-- 2 -->

            <div class="anime-card">

                <div class="anime-poster">

                    <span class="card-badge hot">
                        TRENDING
                    </span>

                    <img
                        src="https://images.unsplash.com/photo-1607604276583-eef5d076aa5f?auto=format&fit=crop&w=700&q=85"
                        alt="Jujutsu Kaisen">

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>


                <div class="card-info">

                    <h3>
                        Jujutsu Kaisen
                    </h3>

                    <div class="card-meta">

                        <span>
                            47 Episodes
                        </span>

                        <span class="card-rating">
                            ★ 9.6
                        </span>

                    </div>

                </div>

            </div>



            <!-- 3 -->

            <div class="anime-card">

                <div class="anime-poster">

                    <span class="card-badge new">
                        NEW
                    </span>

                    <img
                        src="https://images.unsplash.com/photo-1613376023733-0a73315d9b06?auto=format&fit=crop&w=700&q=85"
                        alt="Cyberpunk">

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>


                <div class="card-info">

                    <h3>
                        Cyberpunk: Edgerunners
                    </h3>

                    <div class="card-meta">

                        <span>
                            10 Episodes
                        </span>

                        <span class="card-rating">
                            ★ 9.4
                        </span>

                    </div>

                </div>

            </div>



            <!-- 4 -->

            <div class="anime-card">

                <div class="anime-poster">

                    <img
                        src="https://images.unsplash.com/photo-1560972550-aba3456b5564?auto=format&fit=crop&w=700&q=85"
                        alt="One Piece">

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>


                <div class="card-info">

                    <h3>
                        One Piece
                    </h3>

                    <div class="card-meta">

                        <span>
                            1121+ Episodes
                        </span>

                        <span class="card-rating">
                            ★ 9.5
                        </span>

                    </div>

                </div>

            </div>



            <!-- 5 -->

            <div class="anime-card">

                <div class="anime-poster">

                    <span class="card-badge hot">
                        TOP
                    </span>

                    <img
                        src="https://images.unsplash.com/photo-1606112219348-204d7d8b94ee?auto=format&fit=crop&w=700&q=85"
                        alt="Attack on Titan">

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>


                <div class="card-info">

                    <h3>
                        Attack on Titan
                    </h3>

                    <div class="card-meta">

                        <span>
                            89 Episodes
                        </span>

                        <span class="card-rating">
                            ★ 9.9
                        </span>

                    </div>

                </div>

            </div>



            <!-- 6 -->

            <div class="anime-card">

                <div class="anime-poster">

                    <span class="card-badge new">
                        NEW
                    </span>

                    <img
                        src="https://images.unsplash.com/photo-1578632292335-df3abbb0d586?auto=format&fit=crop&w=700&q=85"
                        alt="Solo Leveling">

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>


                <div class="card-info">

                    <h3>
                        Solo Leveling
                    </h3>

                    <div class="card-meta">

                        <span>
                            25 Episodes
                        </span>

                        <span class="card-rating">
                            ★ 9.7
                        </span>

                    </div>

                </div>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     LATEST RELEASES
========================================================= -->

<section
    class="section"
    id="latest">

    <div class="container">


        <div class="section-heading">

            <div>

                <h2>
                    Latest Episodes
                </h2>

                <p>
                    Fresh episodes added today.
                </p>

            </div>

            <a href="#" class="view-all">
                View Schedule →
            </a>

        </div>


        <div class="anime-grid">


            <div class="anime-card">

                <div class="anime-poster">

                    <img
                        src="https://images.unsplash.com/photo-1578632767115-351597cf2477?auto=format&fit=crop&w=700&q=80"
                        alt="Anime">

                    <span class="card-badge new">
                        EP 24
                    </span>

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>

                <div class="card-info">

                    <h3>
                        Demon Slayer
                    </h3>

                    <div class="card-meta">
                        <span>
                            Today
                        </span>

                        <span class="card-rating">
                            ★ 9.8
                        </span>
                    </div>

                </div>

            </div>


            <div class="anime-card">

                <div class="anime-poster">

                    <img
                        src="https://images.unsplash.com/photo-1607604276583-eef5d076aa5f?auto=format&fit=crop&w=700&q=80"
                        alt="Anime">

                    <span class="card-badge new">
                        EP 31
                    </span>

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>

                <div class="card-info">

                    <h3>
                        Jujutsu Kaisen
                    </h3>

                    <div class="card-meta">
                        <span>
                            Today
                        </span>

                        <span class="card-rating">
                            ★ 9.6
                        </span>
                    </div>

                </div>

            </div>


            <div class="anime-card">

                <div class="anime-poster">

                    <img
                        src="https://images.unsplash.com/photo-1560972550-aba3456b5564?auto=format&fit=crop&w=700&q=80"
                        alt="Anime">

                    <span class="card-badge new">
                        EP 1121
                    </span>

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>

                <div class="card-info">

                    <h3>
                        One Piece
                    </h3>

                    <div class="card-meta">
                        <span>
                            Today
                        </span>

                        <span class="card-rating">
                            ★ 9.5
                        </span>
                    </div>

                </div>

            </div>


            <div class="anime-card">

                <div class="anime-poster">

                    <img
                        src="https://images.unsplash.com/photo-1613376023733-0a73315d9b06?auto=format&fit=crop&w=700&q=80"
                        alt="Anime">

                    <span class="card-badge new">
                        EP 06
                    </span>

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>

                <div class="card-info">

                    <h3>
                        Cyberpunk
                    </h3>

                    <div class="card-meta">
                        <span>
                            Today
                        </span>

                        <span class="card-rating">
                            ★ 9.4
                        </span>
                    </div>

                </div>

            </div>


            <div class="anime-card">

                <div class="anime-poster">

                    <img
                        src="https://images.unsplash.com/photo-1606112219348-204d7d8b94ee?auto=format&fit=crop&w=700&q=80"
                        alt="Anime">

                    <span class="card-badge new">
                        EP 89
                    </span>

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>

                <div class="card-info">

                    <h3>
                        Attack on Titan
                    </h3>

                    <div class="card-meta">
                        <span>
                            Today
                        </span>

                        <span class="card-rating">
                            ★ 9.9
                        </span>
                    </div>

                </div>

            </div>


            <div class="anime-card">

                <div class="anime-poster">

                    <img
                        src="https://images.unsplash.com/photo-1578632292335-df3abbb0d586?auto=format&fit=crop&w=700&q=80"
                        alt="Anime">

                    <span class="card-badge new">
                        EP 25
                    </span>

                    <div class="poster-overlay">

                        <div
                            class="play-circle"
                            onclick="watchAnime()">

                            <i class="fa-solid fa-play"></i>

                        </div>

                    </div>

                </div>

                <div class="card-info">

                    <h3>
                        Solo Leveling
                    </h3>

                    <div class="card-meta">
                        <span>
                            Today
                        </span>

                        <span class="card-rating">
                            ★ 9.7
                        </span>
                    </div>

                </div>

            </div>


        </div>

    </div>

</section>



<!-- =========================================================
     GENRES
========================================================= -->

<section
    class="section"
    id="genres">

    <div class="container">

        <div class="section-heading">

            <div>

                <h2>
                    Explore Genres
                </h2>

                <p>
                    Find your next favorite anime.
                </p>

            </div>

        </div>


        <div class="genre-grid">

            <div class="genre">
                Action
            </div>

            <div class="genre">
                Adventure
            </div>

            <div class="genre">
                Comedy
            </div>

            <div class="genre">
                Romance
            </div>

            <div class="genre">
                Fantasy
            </div>

            <div class="genre">
                Horror
            </div>

            <div class="genre">
                Mystery
            </div>

            <div class="genre">
                Sci-Fi
            </div>

            <div class="genre">
                Sports
            </div>

            <div class="genre">
                Isekai
            </div>

            <div class="genre">
                Shounen
            </div>

            <div class="genre">
                Slice of Life
            </div>

            <div class="genre">
                Supernatural
            </div>

            <div class="genre">
                Psychological
            </div>

            <div class="genre">
                Historical
            </div>

            <div class="genre">
                Music
            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     FEATURE
========================================================= -->

<section class="section">

    <div class="container">

        <div class="feature-banner">


            <div class="feature-content">

                <small>
                    AnimeVerse Original
                </small>


                <h2>
                    Your next obsession
                    starts here.
                </h2>


                <p>

                    Discover thousands of anime titles,
                    follow your favorite characters and
                    never miss a new episode.

                </p>


                <button
                    class="btn btn-primary"
                    onclick="showToast('Explore AnimeVerse Originals ✨')">

                    Explore Originals

                    <i class="fa-solid fa-arrow-right"></i>

                </button>

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

                        <i class="fa-solid fa-play"></i>

                    </div>

                    Anime<span>Verse</span>

                </a>


                <p>

                    Your home for anime.
                    Discover new worlds, unforgettable
                    characters and stories worth watching.

                </p>


                <div class="socials">

                    <a href="#">
                        <i class="fa-brands fa-discord"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-youtube"></i>
                    </a>

                </div>

            </div>


            <div class="footer">

                <h4>
                    Browse
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            Popular
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Latest Episodes
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Genres
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Release Calendar
                        </a>
                    </li>

                </ul>

            </div>


            <div class="footer">

                <h4>
                    Account
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            My Profile
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Watchlist
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Watch History
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Settings
                        </a>
                    </li>

                </ul>

            </div>


            <div class="footer">

                <h4>
                    Support
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            Help Center
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Contact Us
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

            © 2026 AnimeVerse.
            All rights reserved.

        </div>

    </div>

</footer>



<!-- =========================================================
     SEARCH MODAL
========================================================= -->

<div
    class="search-modal"
    id="searchModal"
    onclick="closeSearch(event)">

    <div
        class="search-box"
        onclick="event.stopPropagation()">

        <input
            type="text"
            placeholder="Search anime, characters, genres..."
            autofocus
            id="searchInput">

    </div>

</div>



<!-- =========================================================
     TOAST
========================================================= -->

<div
    class="toast"
    id="toast">
</div>



<script>


    /* ==========================================
       TOAST
    ========================================== */

    let toastTimer;


    function showToast(message) {

        const toast =
            document.getElementById("toast");


        toast.textContent =
            message;


        toast.classList.add("show");


        clearTimeout(toastTimer);


        toastTimer =
            setTimeout(() => {

                toast.classList.remove("show");

            }, 2500);

    }



    /* ==========================================
       WATCH
    ========================================== */

    function watchAnime() {

        showToast(
            "Starting episode... ▶️"
        );

    }



    /* ==========================================
       WATCHLIST
    ========================================== */

    function addWatchlist() {

        showToast(
            "Added to your watchlist ❤️"
        );

    }



    /* ==========================================
       SEARCH
    ========================================== */

    function openSearch() {

        document
            .getElementById("searchModal")
            .classList.add("show");


        setTimeout(() => {

            document
                .getElementById("searchInput")
                .focus();

        },100);

    }


    function closeSearch(event) {

        if (
            event.target.id ===
            "searchModal"
        ) {

            document
                .getElementById("searchModal")
                .classList.remove("show");

        }

    }


    document
        .getElementById("searchInput")
        .addEventListener(
            "keydown",
            function(event) {

                if (
                    event.key ===
                    "Enter"
                ) {

                    const value =
                        this.value.trim();


                    if (value) {

                        showToast(
                            "Searching for: " +
                            value
                        );

                    }

                }


                if (
                    event.key ===
                    "Escape"
                ) {

                    document
                        .getElementById(
                            "searchModal"
                        )
                        .classList.remove(
                            "show"
                        );

                }

            }
        );


    /* ==========================================
       3D MOUSE EFFECT
    ========================================== */

    document
        .querySelectorAll(".anime-card")
        .forEach(card => {


            card.addEventListener(
                "mousemove",
                function(event) {

                    const rect =
                        this.getBoundingClientRect();


                    const x =
                        event.clientX -
                        rect.left;


                    const y =
                        event.clientY -
                        rect.top;


                    const rotateY =
                        ((x / rect.width) - .5)
                        * 8;


                    const rotateX =
                        ((y / rect.height) - .5)
                        * -8;


                    this.style.transform =
                        `
                        translateY(-8px)
                        rotateX(${rotateX}deg)
                        rotateY(${rotateY}deg)
                        scale(1.02)
                        `;

                }
            );


            card.addEventListener(
                "mouseleave",
                function() {

                    this.style.transform =
                        "";

                }
            );

        });


</script>


</body>

</html>
