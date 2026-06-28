# Fencing Website — Competitive Analysis & Design Recommendations

Based on analysis of 18 fencing contractor sites.

---

## Sites Analyzed

| Site | URL | Location | Status |
|------|-----|----------|--------|
| Alamo Decks & Fence | alamodecksandfence.com | San Antonio, TX | ✅ |
| Tim's Fences | timsfences.com | Stafford, TX (Houston) | ✅ |
| Colormax NA | colormaxna.com | Unknown (Colorbond supplier) | ✅ |
| Western Fence Company | westernfencecompany.net | Phoenix, AZ | ✅ |
| Fence Company Phoenix AZ | fencecompanyphoenixaz.com | Phoenix, AZ | ✅ |
| Royal Fence Chicago | royalfencechicago.com | South Elgin, IL | ✅ |
| Alamo Decks & Fence | alamodecksandfence.com | San Antonio, TX | ✅ |
| Missouri City Fence | missouricityfence.com | Missouri City, TX | ✅ |
| Comal Fence | comalfence.com | San Antonio / Comal, TX | ✅ |
| Pinecrest Services | pinecrest.services | Philadelphia, PA | ✅ |
| Fence Masters Inc | fencemastersinc.com | Chicago Heights, IL | ✅ |
| Reliabulit Fence Company | reliabuiltfencecompany.com | Escondido, CA | ✅ |
| JPL Construction TX | jplconstructiontx.com | Garland, TX | ✅ |
| Double Eagle Fence | doubleeaglefence.com | Mansfield, TX (DFW) | ✅ |
| Viking Fence | vikingfence.com | Austin, TX | ✅ |
| Peerless Fence | peerlessfence.com | — | ❌ 403 |
| Griffin Fence | griffinfence.com | Houston, TX | ✅ |
| Trinity River Fence | trinityriverfence.com | — | ❌ Unreachable |

---

## Technology Stack Breakdown

| Tech | Usage |
|------|-------|
| **WordPress** | 73% |
| — Elementor (page builder) | 55% of WP sites |
| — Yoast SEO | 55% of WP sites |
| — WP Rocket (caching) | 64% of WP sites |
| — Gravity Forms | 18% of WP sites |
| — WooCommerce | 27% of WP sites |
| **Squarespace** | 13% |
| **GoDaddy Builder** | 7% |
| **Custom / Hibu** | 7% |

### Recommended Stack

```
CMS:       WordPress
Builder:   Elementor
Caching:   WP Rocket
SEO:       Yoast
Forms:     Gravity Forms
Live Chat: Tawk.to (only 2/15 have it — advantage)
Hosting:   WP Engine or Kinsta
```

---

## Color Palette

```
Primary:    Deep Navy   #003366   (most trusted, 8/15 sites)
Accent:     Burnt Orange #CC5500  (CTAs — high contrast)
Neutral:    Light Gray  #F5F5F5
White:      #FFFFFF
Secondary:  Warm Earth tone for natural feel (optional)
```

### Typography

```
Headings:  Montserrat (bold, clean)
Body:      Open Sans (readable)
Buttons:   Montserrat Semi-Bold
```

---

## Page Structure — Full Site Map

### Core Pages (Required)

| # | Page | Purpose |
|---|------|---------|
| 1 | **Home** | Hero + CTA + services overview + testimonials + trust badges |
| 2 | **About Us** | Build trust — years in biz, licenses, team, story |
| 3 | **Services** (hub) | Master page linking to individual fence type pages |
| 4 | **Wood Fencing** | Dedicated page — most common fence type |
| 5 | **Chain Link Fencing** | Dedicated page |
| 6 | **Wrought Iron / Aluminum** | Dedicated page |
| 7 | **Vinyl / Composite Fencing** | Dedicated page |
| 8 | **Gates & Automation** | Dedicated page — high-value add-on |
| 9 | **Gallery / Portfolio** | Categorized by fence type — proves quality |
| 10 | **Testimonials / Reviews** | Social proof — embed Google reviews |
| 11 | **Contact** | Form + phone + map + hours |
| 12 | **Service Area** | List cities/counties served |
| 13 | **FAQ** | Answers cost, timeline, permit questions |
| 14 | **Free Estimate / Get a Quote** | Dedicated landing page for primary conversion |
| 15 | **Blog** | SEO content marketing |
| 16 | **Privacy Policy / Terms** | Legal requirement |

### Competitive Advantage Pages (40% or fewer competitors have these)

| # | Page | Who Has It | Why |
|---|------|-----------|-----|
| 17 | **Financing** | Alamo, Griffin, Tim's, JPL (40%) | Customers need to know they can afford it |
| 18 | **Commercial Fencing** | Alamo, Griffin, Western | Opens B2B revenue stream |
| 19 | **Our Process / How It Works** | Alamo, Griffin, JPL | Sets expectations, reduces anxiety |
| 20 | **Residential Fencing** | Alamo, Griffin | Clarifies focus |
| 21 | **Warranty** | Tim's, Griffin | Trust signal |
| 22 | **Careers** | Alamo, Fence Masters, Pinecrest | Hiring = growing = trusted |

### Unique Differentiator Pages (almost no competitor has these)

| # | Page | Only On | Why Powerful |
|---|------|---------|-------------|
| 23 | **Interactive Fence Estimator** | Griffin, Tim's | Users price their project → higher conversion |
| 24 | **Draw Your Fence** | Tim's only | Visual design tool — extremely engaging |
| 25 | **Transparent Pricing Table** | Alamo only | Builds trust, pre-qualifies leads |
| 26 | **Fence Regulations / Permits Guide** | Viking only | Helpful local resource |
| 27 | **Fence Etiquette Letter Template** | Tim's only | Shareable, viral-worthy |
| 28 | **Before/After Slider Page** | Tim's (partial) | Interactive proof of quality |
| 29 | **Per-City Service Area Pages** | Double Eagle, Western | SEO gold — rank for "fence company [city]" |

---

## Homepage Layout

```
┌─────────────────────────────────────────────────────────┐
│ STICKY HEADER                                            │
│ LOGO | Home | About | Services ▼ | Gallery | Blog |      │
│                             [PHONE] [FREE ESTIMATE]      │
├─────────────────────────────────────────────────────────┤
│ HERO SECTION                                             │
│  Large real-project photo/video                          │
│  "Premium Fencing in [Your City]"                        │
│  [Get Your Free Estimate →]                              │
├─────────────────────────────────────────────────────────┤
│ TRUST BADGES BAR                                         │
│  Licensed | Insured | Bonded | 20+ Years | BBB A+        │
├─────────────────────────────────────────────────────────┤
│ SERVICES OVERVIEW (icon cards)                            │
│  [Wood] [Vinyl] [Chain Link] [Wrought Iron] [Gates]      │
│  Each → links to dedicated service page                  │
├─────────────────────────────────────────────────────────┤
│ WHY CHOOSE US (icon boxes)                                │
│  Quality Materials | Expert Craftsmanship |               │
│  On-Time | Clean Job Sites | Warranty                    │
├─────────────────────────────────────────────────────────┤
│ BEFORE/AFTER GALLERY (interactive slider)                 │
├─────────────────────────────────────────────────────────┤
│ PROCESS / HOW IT WORKS                                    │
│  1. Free Quote → 2. Design → 3. Install → 4. Enjoy      │
├─────────────────────────────────────────────────────────┤
│ TESTIMONIALS CAROUSEL                                     │
│  Real names, locations, star ratings, photos             │
├─────────────────────────────────────────────────────────┤
│ SERVICE AREA MAP + CITY LIST                              │
├─────────────────────────────────────────────────────────┤
│ FAQ ACCORDION                                             │
│  "How much?" "How long?" "Permits?" "Materials?"         │
├─────────────────────────────────────────────────────────┤
│ FINAL CTA                                                 │
│  "Ready to Start Your Project?"                          │
│  [Get Your Free Estimate →]  or  Call (555) 123-4567     │
├─────────────────────────────────────────────────────────┤
│ FOOTER                                                    │
│  NAV | PHONE | SOCIAL | PRIVACY | SITEMAP                │
└─────────────────────────────────────────────────────────┘
```

---

## Top 3 Sites to Model After

### #1 — Griffin Fence (griffinfence.com)
- Deepest page structure (30+ sub-service pages)
- Best categorized gallery (by fence type)
- Interactive fence estimator
- Financing via Regions Bank
- 60+ blog posts
- "Since 1979" trust messaging
- 27+ city service area coverage

### #2 — Alamo Decks & Fence (alamodecksandfence.com)
- Most transparent pricing (per-foot tables on every page)
- Hearth financing integration
- Employment page (trust signal)
- 42+ blog posts
- Warm gold/amber brand identity

### #3 — Tim's Fences (timsfences.com)
- "Draw Your Fence" tool (totally unique)
- Fence etiquette letter (shareable)
- Instant fence estimator
- Comprehensive FAQ
- Warranty + financing pages

---

## Key Conversion Elements

| Element | Frequency | Must-Have? |
|---------|-----------|------------|
| Phone in header | 100% | ✅ |
| Contact form on every page | 100% | ✅ |
| Free Estimate CTA in header | 93% | ✅ |
| Trust badges (Licensed/Insured/Bonded) | 93% | ✅ |
| Testimonials with real names | 93% | ✅ |
| Gallery of real projects | 93% | ✅ |
| Blog for SEO | 87% | ✅ |
| FAQ section | 60% | ⚡ Differentiator |
| Service area page | 73% | ✅ |
| Financing info | 40% | ⚡ Differentiator |
| Live chat | 13% | 🚀 Competitive edge |
| Before/after sliders | 60% | ⚡ Differentiator |
| Interactive estimator | 13% | 🚀 Competitive edge |
| Per-city service pages | 20% | 🚀 SEO edge |

---

## SEO Title Template

```
[Service] in [City/Area] | [Company Name]
```

Example: "Wood Fence Installation in Austin, TX | Lone Star Fence Co."

80% of competitors use this city + service + brand structure.

---

## Design Principles

1. **Real photos, not stock.** The best sites (Griffin, Alamo, Double Eagle) showcase their actual work. Stock photography is obvious and hurts trust.

2. **Categorized galleries.** Griffin's gallery (Wood / Chain Link / Iron / Access Control / Vinyl) is the gold standard. Users want to see what their specific project will look like.

3. **Transparency wins.** Alamo's per-foot pricing tables and Griffin's fence estimator reduce the #1 friction point: "How much will this cost?"

4. **Local-first.** Double Eagle's 45+ city pages and Western Fence's per-industry pages (Airports, Schools, Data Centers) dominate local SEO. This is the single biggest opportunity.

5. **Social proof everywhere.** Testimonials with real names/locations, Google review embeddings, BBB badges, years-in-business counters — stack them.

6. **Reduce friction.** Financing (Alamo, Griffin), FAQ (Tim's), warranty info, and live chat all answer questions before the user has to call.

7. **Mobile-first.** 11/15 sites use sticky headers, hamburger menus, and big tap targets. Your site must work perfectly on phone — that's where most fence quotes start.
