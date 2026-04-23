<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <title>NexusShop — Immersive E‑Commerce Experience</title>

    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-dark: #0b1120;
            --bg-surface: #111827;
            --card-bg: #1f2937;
            --primary-glow: #38bdf8;
            --accent: #2dd4bf;
            --accent-soft: #14b8a6;
            --text-light: #f1f5f9;
            --text-muted: #94a3b8;
            --border-glow: rgba(56, 189, 248, 0.2);
            --danger: #f97316;
            --success: #22c55e;
            --radius-sm: 12px;
            --radius-md: 24px;
            --radius-xl: 32px;
            --transition: all 0.4s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            background: var(--bg-dark);
            font-family: 'Inter', sans-serif;
            color: var(--text-light);
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* custom scrollbar */
        ::-webkit-scrollbar {
            width: 6px;
            background: #1e293b;
        }
        ::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: 10px;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* glass header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            background: rgba(15, 23, 42, 0.75);
            border-bottom: 1px solid rgba(45, 212, 191, 0.2);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 26px;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #ffffff, var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .brand i {
            background: none;
            -webkit-background-clip: unset;
            background-clip: unset;
            color: var(--accent);
            font-size: 28px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 24px;
            list-style: none;
        }
        nav.main-nav li a {
            font-weight: 500;
            font-size: 15px;
            padding: 8px 12px;
            border-radius: 40px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
            color: var(--text-light);
        }
        nav.main-nav li a:hover {
            background: rgba(45, 212, 191, 0.15);
            color: var(--accent);
            transform: translateY(-2px);
        }

        .search {
            background: rgba(30, 41, 59, 0.7);
            backdrop-filter: blur(8px);
            border: 1px solid rgba(56, 189, 248, 0.3);
            border-radius: 60px;
            padding: 8px 18px;
            transition: var(--transition);
        }
        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 12px rgba(45,212,191,0.3);
        }
        .search input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 200px;
        }
        .search button {
            color: var(--accent);
        }

        .cart {
            background: rgba(45, 212, 191, 0.2);
            border-radius: 40px;
            padding: 8px 14px;
            transition: var(--transition);
        }
        .cart:hover { background: rgba(45, 212, 191, 0.4); }
        .cart-count {
            background: var(--danger);
            color: white;
            border-radius: 40px;
            padding: 2px 8px;
            font-size: 12px;
            font-weight: bold;
        }

        /* modern hero */
        .hero {
            background: radial-gradient(circle at 20% 30%, #0f172a, #020617);
            border-bottom: 1px solid var(--border-glow);
            padding: 80px 0 100px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1550745165-9bc0b252726f?auto=format&fit=crop&w=2000&q=80') center/cover no-repeat;
            opacity: 0.08;
            pointer-events: none;
        }
        .hero h1 {
            font-size: 58px;
            font-weight: 800;
            font-family: 'Space Grotesk', sans-serif;
            background: linear-gradient(135deg, #ffffff, var(--accent), #38bdf8);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .btn-glow {
            background: linear-gradient(90deg, var(--accent), #0ea5e9);
            border: none;
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 700;
            color: #0a0f1f;
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0 8px 20px rgba(45,212,191,0.3);
        }
        .btn-glow:hover {
            transform: scale(1.02);
            box-shadow: 0 12px 28px rgba(45,212,191,0.5);
        }
        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.4);
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            backdrop-filter: blur(4px);
        }

        /* section titles */
        .section-title {
            font-size: 36px;
            font-weight: 700;
            font-family: 'Space Grotesk';
            background: linear-gradient(120deg, #fff, var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            display: inline-block;
        }

        /* category cards glassmorph */
        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 28px;
        }
        .cat-card {
            background: rgba(31, 41, 55, 0.7);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(45, 212, 191, 0.25);
            border-radius: var(--radius-md);
            padding: 24px 12px;
            transition: var(--transition);
            text-align: center;
            cursor: pointer;
        }
        .cat-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            background: rgba(45, 212, 191, 0.1);
            box-shadow: 0 20px 30px -15px rgba(0,0,0,0.5);
        }
        .cat-card .icon {
            font-size: 38px;
            color: var(--accent);
            margin-bottom: 12px;
        }

        /* product grid */
        .products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product {
            background: var(--card-bg);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid rgba(56, 189, 248, 0.1);
            backdrop-filter: blur(2px);
        }
        .product:hover {
            transform: translateY(-12px);
            border-color: var(--accent);
            box-shadow: 0 20px 35px -10px rgba(0,0,0,0.6);
        }
        .product img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: transform 0.5s;
        }
        .product:hover img {
            transform: scale(1.03);
        }
        .add-btn {
            background: linear-gradient(135deg, var(--accent), #0891b2);
            border: none;
            color: #0f172a;
            font-weight: 700;
            padding: 10px;
            border-radius: 40px;
            transition: 0.2s;
        }
        .add-btn:hover {
            background: linear-gradient(135deg, #2dd4bf, #0ea5e9);
            box-shadow: 0 0 10px var(--accent);
        }

        /* flash sale modern */
        .deal-modern {
            background: linear-gradient(145deg, #111827, #0f172a);
            border-radius: var(--radius-xl);
            border: 1px solid rgba(45,212,191,0.5);
            overflow: hidden;
            display: flex;
            flex-wrap: wrap;
        }
        .deal-img {
            flex: 1.2;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80') center/cover;
            min-height: 320px;
        }
        .deal-content {
            flex: 1;
            padding: 36px;
        }
        .time-box {
            background: #020617e6;
            backdrop-filter: blur(8px);
            border-radius: 20px;
            padding: 12px 18px;
            text-align: center;
            border: 1px solid var(--accent);
        }

        /* testimonial slider style */
        .testimonials {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding: 16px 6px;
        }
        .testimonial {
            min-width: 320px;
            background: rgba(31, 41, 55, 0.7);
            backdrop-filter: blur(8px);
            border-radius: 28px;
            padding: 24px;
            border: 1px solid rgba(45,212,191,0.2);
        }

        /* newsletter glass */
        .newsletter-glow {
            background: radial-gradient(ellipse at 30% 20%, #1e293b, #0b1120);
            border-radius: 48px;
            border: 1px solid var(--accent);
            padding: 48px 24px;
            text-align: center;
        }
        .newsletter-glow input {
            background: #1e293b;
            border: 1px solid var(--accent);
            padding: 14px 20px;
            border-radius: 60px;
            color: white;
            width: 280px;
        }

        footer {
            border-top: 1px solid rgba(45,212,191,0.2);
            margin-top: 48px;
            padding: 40px 0;
        }

        @media (max-width: 900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; background: none; border: none; color: white; font-size: 24px; }
            .hero h1 { font-size: 38px; }
            .container { padding: 0 20px; }
        }
        @media (max-width: 640px) {
            .deal-modern { flex-direction: column; }
            .time-box { padding: 6px 12px; }
        }
        .mobile-menu {
            background: #0f172ad9;
            backdrop-filter: blur(28px);
            padding: 20px;
        }
        button, .cat-card, .add-btn { cursor: pointer; }
        .rating i { color: #fbbf24; margin-right: 2px; }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; gap: 20px; align-items: center;">
            <button class="mobile-toggle" id="mobileToggleBtn" style="background: transparent; color: var(--accent); font-size: 26px;"><i class="fas fa-bars"></i></button>
            <div class="brand"><i class="fas fa-bolt"></i> NEXUS<span style="color:white">SHOP</span></div>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-globe"></i> Explore</a></li>
                <li><a href="#trending"><i class="fas fa-chart-line"></i> Trending</a></li>
                <li><a href="#deals"><i class="fas fa-clock"></i> Flash Sale</a></li>
                <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
            </ul>
        </nav>
        <div style="display: flex; gap: 12px; align-items: center;">
            <div class="search">
                <input type="text" id="searchInput" placeholder="Find your vibe...">
                <button id="searchBtn" style="background: none; border: none; color: var(--accent);"><i class="fas fa-search"></i></button>
            </div>
            <div class="cart" id="cartBtn" style="display: flex; align-items: center; gap: 8px;">
                <i class="fas fa-shopping-bag"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
    <div id="mobileMenuPanel" style="display: none;" class="mobile-menu">
        <ul style="list-style: none; gap: 12px; display: flex; flex-direction: column; padding: 16px;">
            <li><a href="#" style="color:white;">🏠 Home</a></li>
            <li><a href="#trending" style="color:white;">🔥 Trending</a></li>
            <li><a href="#deals" style="color:white;">⚡ Deals</a></li>
        </ul>
    </div>
</header>

<main>
    <!-- hero section -->
    <section class="hero">
        <div class="container">
            <h1>Ignite Your Style.<br>Beyond Ordinary.</h1>
            <p style="font-size: 18px; max-width: 680px; margin: 20px auto; color: #cbd5e1;">Exclusive drops, next‑gen tech & streetwear — get ready for an immersive shopping journey.</p>
            <div style="display: flex; gap: 18px; justify-content: center; flex-wrap: wrap;">
                <button class="btn-glow" id="shopNowBtn"><i class="fas fa-bag-shopping"></i> Shop Collection</button>
                <button class="btn-outline-light" id="exploreDealsBtn"><i class="fas fa-gift"></i> Flash Deals</button>
            </div>
        </div>
    </section>

    <!-- categories -->
    <section class="container" style="margin-top: 60px;">
        <div style="text-align: center; margin-bottom: 32px;">
            <span class="section-title">✨ Smart Categories</span>
            <p class="text-muted" style="color: #94a3b8;">Shop by your passion, find your signature.</p>
        </div>
        <div class="categories" id="categoriesGrid"></div>
    </section>

    <!-- Trending products -->
    <section id="trending" class="container" style="margin-top: 80px;">
        <div style="display: flex; justify-content: space-between; align-items: baseline; flex-wrap: wrap; margin-bottom: 32px;">
            <div><span class="section-title"><i class="fas fa-fire-flame" style="color: #f97316;"></i> Trending Now</span></div>
            <span style="color: var(--accent);">best sellers 🔥</span>
        </div>
        <div class="products" id="productsGrid"></div>
    </section>

    <!-- Flash sale modern section -->
    <section id="deals" class="container" style="margin-top: 80px;">
        <div class="deal-modern">
            <div class="deal-img"></div>
            <div class="deal-content">
                <h2 style="font-size: 34px; font-weight: 800;"><i class="fas fa-stopwatch"></i> MEGA DEAL</h2>
                <p style="color: #cbd5e6; margin: 12px 0;">MacBook Air M2 — Next‑gen speed, infinite style.</p>
                <div style="display: flex; gap: 16px; margin: 24px 0;" class="timer-wrapper">
                    <div class="time-box"><span id="dealDays" style="font-size: 28px; font-weight: 800;">0</span><br>DAYS</div>
                    <div class="time-box"><span id="dealHours" style="font-size: 28px;">00</span><br>HRS</div>
                    <div class="time-box"><span id="dealMinutes" style="font-size: 28px;">00</span><br>MIN</div>
                    <div class="time-box"><span id="dealSeconds" style="font-size: 28px;">00</span><br>SEC</div>
                </div>
                <div style="display: flex; align-items: center; gap: 18px; flex-wrap: wrap;">
                    <div><span style="font-size: 32px; font-weight: 800;">$999</span> <span style="text-decoration: line-through; color: #94a3b8;">$1,199</span></div>
                    <div style="background: var(--danger); padding: 5px 12px; border-radius: 60px;">-17% OFF</div>
                </div>
                <button id="buyDealBtn" class="btn-glow" style="margin-top: 24px; background: linear-gradient(90deg, #f97316, #f59e0b);"><i class="fas fa-crown"></i> Claim Deal</button>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section id="reviews" class="container" style="margin-top: 80px;">
        <div class="text-center" style="text-align: center; margin-bottom: 32px;">
            <span class="section-title">❤️ Words from tribe</span>
        </div>
        <div class="testimonials" id="testimonialsContainer"></div>
    </section>

    <!-- newsletter glam -->
    <section class="container" style="margin: 70px auto;">
        <div class="newsletter-glow">
            <h3 style="font-size: 32px;">Join the wave</h3>
            <p style="margin-bottom: 20px;">Get instant access to secret sales & exclusive previews</p>
            <form id="newsForm" style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap;">
                <input type="email" id="newsEmail" placeholder="your@email.com" required>
                <button type="submit" class="btn-glow" style="padding: 14px 28px;"><i class="fas fa-paper-plane"></i> Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 16px; font-size: 14px;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 40px;">
        <div><i class="fas fa-bolt" style="color:var(--accent); font-size: 27px;"></i> <strong style="font-size: 20px;">NEXUSHOP</strong>
        <p style="margin-top: 8px; max-width: 280px; color:#94a3b8;">Redefining modern commerce — immersive, minimal, bold.</p>
        </div>
        <div style="display: flex; gap: 60px;">
            <div><strong>Company</strong><br>About<br>Careers<br>Press</div>
            <div><strong>Social</strong><br>Instagram<br>Twitter<br>Discord</div>
        </div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; border-top: 1px solid #1e293b; padding-top: 24px; color: #5b6e8c;">© <span id="year"></span> NexusShop — where innovation meets desire.</div>
</footer>

<script>
    // CATALOG DATA
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop-code' },
        { id: 'clothing', name: 'Streetwear', icon: 'fa-shirt' },
        { id: 'gadgets', name: 'Audio', icon: 'fa-headphones-simple' },
        { id: 'footwear', name: 'Kicks', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Luxury', icon: 'fa-gem' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 5, reviews: 340, img: 'https://images.unsplash.com/photo-1696446701796-3c7a1e4f12e3?auto=format&fit=crop&w=600&q=80', category: 'phones', badge: 'NEW' },
        { id: 2, title: 'Zenbook Pro 14"', price: 1699, rating: 4, reviews: 112, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'Galaxy Watch Ultra', price: 389, oldPrice: 489, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories', badge: '-20%' },
        { id: 4, title: 'Air Max Pulse', price: 179, rating: 4, reviews: 87, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Sony Alpha IV', price: 2299, rating: 5, reviews: 62, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
        { id: 6, title: 'Dior Sauvage', price: 135, rating: 5, reviews: 320, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 7, title: 'Aer Duffel Pack', price: 89, oldPrice: 129, rating: 4, reviews: 101, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 8, title: 'XM6 Headphones', price: 429, rating: 5, reviews: 278, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'gadgets', badge: 'Limited' }
    ];

    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const searchInput = document.getElementById('searchInput');

    function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;});}
    
    function renderCategories() {
        categoriesGrid.innerHTML = CATEGORIES.map(cat => `
            <div class="cat-card" data-cat="${cat.name}">
                <div class="icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <p style="font-size:12px; margin-top:8px;">shop now →</p>
            </div>
        `).join('');
        document.querySelectorAll('.cat-card').forEach(card => {
            card.addEventListener('click', () => {
                const catName = card.getAttribute('data-cat');
                searchInput.value = catName;
                filterProducts(catName);
                document.getElementById('trending').scrollIntoView({ behavior: 'smooth' });
            });
        });
    }

    function renderProducts(list) {
        productsGrid.innerHTML = list.map(p => {
            const starRating = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
            return `
                <div class="product">
                    <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                    <div style="padding: 16px;">
                        <div style="font-weight: 700; font-size: 18px;">${escapeHtml(p.title)}</div>
                        <div style="color:#a0aec0; font-size:13px; margin:4px 0;">${p.category}</div>
                        <div class="rating"><i class="fas fa-star" style="color:#fbbf24;"></i> ${p.rating} (${p.reviews})</div>
                        <div style="display: flex; gap: 12px; margin: 12px 0;">
                            <span style="font-weight:800; font-size:20px;">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span style="text-decoration:line-through; color:#7e8a98;">$${p.oldPrice}</span>` : ''}
                        </div>
                        <button class="add-btn" data-id="${p.id}" style="width:100%;"><i class="fas fa-shopping-cart"></i> Add to bag</button>
                    </div>
                </div>
            `;
        }).join('');
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCart(id);
                e.stopPropagation();
            });
        });
    }

    function addToCart(pid) {
        const product = PRODUCTS.find(p => p.id === pid);
        if (!product) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        const btn = document.querySelector(`.add-btn[data-id="${pid}"]`);
        if(btn) {
            const origHtml = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added!';
            setTimeout(() => btn.innerHTML = origHtml, 1000);
        }
        // micro feedback
        const toast = document.createElement('div');
        toast.innerText = `✨ ${product.title} added`;
        toast.style.position = 'fixed'; toast.style.bottom = '20px'; toast.style.right = '20px';
        toast.style.background = '#2dd4bf'; toast.style.color = '#0f172a'; toast.style.padding = '12px 20px';
        toast.style.borderRadius = '40px'; toast.style.zIndex = 999; toast.style.fontWeight = 'bold';
        document.body.appendChild(toast);
        setTimeout(() => toast.remove(), 1800);
    }

    function filterProducts(query) {
        const q = query.trim().toLowerCase();
        if(!q) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProducts(filtered);
    }

    // Newsletter
    document.getElementById('newsForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value;
        const msgDiv = document.getElementById('newsMsg');
        if(!email.includes('@')) {
            msgDiv.style.color = '#f97316'; msgDiv.innerHTML = 'Enter valid email please.';
        } else {
            msgDiv.style.color = '#2dd4bf'; msgDiv.innerHTML = '✨ You’re in! Expect vibes.';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 3000);
        }
    });

    // Countdown timer (2 days flash)
    function setupTimer() {
        const targetDate = new Date();
        targetDate.setDate(targetDate.getDate() + 1);
        targetDate.setHours(targetDate.getHours() + 8);
        function update() {
            const diff = targetDate - new Date();
            if(diff <= 0) { clearInterval(interval); return; }
            document.getElementById('dealDays').innerText = Math.floor(diff / (1000*60*60*24));
            document.getElementById('dealHours').innerText = String(Math.floor((diff % (86400000))/3600000)).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(Math.floor((diff % 3600000)/60000)).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(Math.floor((diff % 60000)/1000)).padStart(2,'0');
        }
        update();
        const interval = setInterval(update, 1000);
    }
    setupTimer();

    // testimonials custom more modern
    const testimonialsData = [
        { name: "Maya Chen", text: "The interface is absolute fire 🔥. Delivery within 2 days.", rating: 5, avatar: "MC" },
        { name: "Jay S.", text: "Best deals on premium electronics. Got my Sony headphones at steal price!", rating: 5, avatar: "JS" },
        { name: "Lina K.", text: "Customer support super responsive. I'm obsessed with the style.", rating: 4, avatar: "LK" }
    ];
    const testiContainer = document.getElementById('testimonialsContainer');
    testiContainer.innerHTML = testimonialsData.map(t => `
        <div class="testimonial">
            <div style="display: flex; gap: 4px; color: #facc15;">${'★'.repeat(t.rating)}${'☆'.repeat(5-t.rating)}</div>
            <p style="margin: 12px 0;">“${t.text}”</p>
            <div style="display: flex; align-items: center; gap: 12px;"><div style="background: var(--accent); width: 40px; height:40px; border-radius: 60px; display: flex; align-items: center; justify-content: center; font-weight: bold;">${t.avatar}</div><div><strong>${t.name}</strong><br><span style="font-size:12px;">verified buyer</span></div></div>
        </div>
    `).join('');

    // buttons & mobile
    document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('trending').scrollIntoView({behavior:'smooth'}));
    document.getElementById('exploreDealsBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({behavior:'smooth'}));
    document.getElementById('buyDealBtn').addEventListener('click', () => { cartCount++; cartCountEl.textContent = cartCount; alert('MacBook M2 added to cart!'); });
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });
    document.getElementById('mobileToggleBtn').addEventListener('click', () => { const panel = document.getElementById('mobileMenuPanel'); panel.style.display = panel.style.display === 'none' ? 'block' : 'none'; });

    document.getElementById('year').innerText = new Date().getFullYear();
    renderCategories();
    renderProducts(PRODUCTS);
    cartCountEl.textContent = cartCount;

    // cart btn demo click
    document.getElementById('cartBtn').addEventListener('click', () => alert(`You have ${cartCount} items in your cart. Proceed to checkout.`));
</script>
</body>
</html>
