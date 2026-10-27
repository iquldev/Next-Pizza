<div align="center">
  <img width="1920" height="1048" alt="Screenshot From 2026-10-27 18-49-45" src="https://github.com/user-attachments/assets/e70d0078-b138-4ac5-9cf9-420ffbc549b4" />
  
  <h1>Next Pizza</h1>
  
  <p><strong>A modern, high-performance full-stack e-commerce platform for pizza ordering & delivery.</strong></p>

  <p>
    <a href="https://nextjs.org"><img src="https://img.shields.io/badge/Next.js-16.1.7-black?style=for-the-badge&logo=next.js" alt="Next.js" /></a>
    <a href="https://react.dev"><img src="https://img.shields.io/badge/React-19-61dafb?style=for-the-badge&logo=react&logoColor=black" alt="React" /></a>
    <a href="https://www.typescriptlang.org"><img src="https://img.shields.io/badge/TypeScript-6.0-3178c6?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript" /></a>
    <a href="https://tailwindcss.com"><img src="https://img.shields.io/badge/Tailwind_CSS-v4-38bdf8?style=for-the-badge&logo=tailwind-css" alt="Tailwind CSS" /></a>
    <a href="https://www.prisma.io"><img src="https://img.shields.io/badge/Prisma-7.5-2d3748?style=for-the-badge&logo=prisma" alt="Prisma" /></a>
    <a href="https://better-auth.com"><img src="https://img.shields.io/badge/Better--Auth-1.6-purple?style=for-the-badge" alt="Better-Auth" /></a>
    <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License" /></a>
  </p>

  <p>
    <a href="#-key-features">Features</a> •
    <a href="#-tech-stack">Tech Stack</a> •
    <a href="#-getting-started">Getting Started</a> •
    <a href="#-stripe-webhook-local-testing">Stripe Webhooks</a> •
    <a href="#%EF%B8%8F-environment-variables">Environment Variables</a> •
    <a href="#-scripts">Scripts</a> •
    <a href="#-architecture">Architecture</a> •
    <a href="#-license">License</a>
  </p>
</div>

---

## 🍕 Overview

- **⚡ Advanced Caching:** Implemented sophisticated caching strategies for product and ingredient lists to minimize database load and ensure instantaneous page loads.
- **📊 Dynamic Sorting:** Added the ability to sort products by price, providing a more standard e-commerce experience.
- **🔍 Improved Search:** A significantly more robust search implementation for finding products across the entire catalog.
- **✨ Framer Motion Animations:** Enhanced the user interface with fluid, professional-grade animations and transitions.
- **🌓 Dark Theme Support:** Fully integrated dark mode support with a seamless theme switcher.
- **🌐 Localization (i18n):** Complete multi-language support (English & Russian) using `next-intl`.
- **🛡️ BetterAuth Integration:** Replaced the default authentication with **BetterAuth**, featuring custom modal windows and email verification flows.
- **🛒 Optimized Cart Logic:** Refactored the cart management system for better performance and more reliable state synchronization.
- **✅ Smart Filtering:** Improved UX where selected filter items automatically move to the top of the list for easier management.
- **📱 Enhanced Checkout:** Improved phone number filtering and validation during the checkout process to ensure data integrity.
- **🔔 Sonner Notifications:** Integrated modern, customizable toast notifications from the Shadcn UI ecosystem.
=======
**Next Pizza** is a production-grade e-commerce application designed for lightning-fast pizza ordering, custom pizza configuration, robust internationalization, seamless auth flows, and integrated payment processing.

> [!NOTE]
> Originally inspired by [Archakov Blog](https://www.youtube.com/watch?v=GUwizGbY4cc&t=71114s). The codebase has been completely upgraded to **Next.js 16**, **Tailwind CSS 4**, and **Better-Auth**, with full multi-language support (`next-intl`), server-side caching, dynamic catalog filtering, and architectural rewrites.

---

## ✨ Key Features

- **⚡ Blazing Fast Architecture:** Built on Next.js 16 App Router, Turbopack, and server-side caching for instant catalog response.
- **🌐 Full Internationalization (i18n):** Multi-language UI routing (`ru` / `en`) driven by `next-intl` with locale prefix routing.
- **🛡️ Modern Authentication:** Powered by **Better-Auth** supporting OAuth (Google & GitHub), credentials, and automated email verification flows via **Resend**.
- **🍕 Interactive Pizza Customizer:** Dynamic size (20/30/40 cm), crust selection (traditional/thin), ingredient add-ons, and real-time client-side price calculation.
- **🔍 Catalog & Smart Filtering:** Dynamic sorting (by price/popularity), live fuzzy search across the catalog, and sticky price/ingredient filters.
- **🛒 Resilient Cart Management:** Client/server synchronized shopping cart powered by **Zustand** and **SWR** with session-persisted cart tokens.
- **💳 Integrated Checkout & Payments:** Full **Stripe** checkout session creation with signature-verified webhook processing.
- **📦 Orders Dashboard:** Dedicated `/orders` history page with transaction records and status tracking.
- **🌓 Dark Mode & Micro-interactions:** Flawless dark/light theme switching via `next-themes` and fluid layout animations powered by `framer-motion`.

---

## 🛠 Tech Stack

| Category | Technologies |
| :--- | :--- |
| **Framework & Runtime** | [Next.js 16](https://nextjs.org/) (App Router, Turbopack), [React 19](https://react.dev/), [Bun](https://bun.sh/) |
| **Language** | [TypeScript](https://www.typescriptlang.org/) (Strict Mode) |
| **Styling & UI** | [Tailwind CSS 4](https://tailwindcss.com/), [Shadcn UI](https://ui.shadcn.com/), [Radix UI](https://www.radix-ui.com/), [Sonner](https://sonner.emilkowal.ski/) |
| **Database & ORM** | [PostgreSQL](https://www.postgresql.org/), [Prisma ORM 7](https://www.prisma.io/) with `@prisma/adapter-pg` |
| **Authentication** | [Better-Auth](https://better-auth.com/) (Email & Password + OAuth via Google/GitHub) |
| **State & Data Fetching** | [Zustand](https://docs.pmnd.rs/zustand/), [SWR](https://swr.vercel.app/) |
| **Internationalization** | [next-intl](https://next-intl-docs.vercel.app/) |
| **Animations** | [Framer Motion](https://www.framer.com/motion/) |
| **Payments & Mailing** | [Stripe](https://stripe.com/), [Resend](https://resend.com/) |
| **Validation & Forms** | [React Hook Form](https://react-hook-form.com/), [Zod](https://zod.dev/) |

---

## 🚀 Getting Started

### Option 1: Quick Start with Docker Compose (Recommended)

Run the entire application along with PostgreSQL in a single command:

```bash
# 1. Clone the repository
git clone https://github.com/iquldev/next-pizza.git
cd next-pizza

# 2. Setup your environment
cp .env.example .env

# 3. Spin up the entire stack (PostgreSQL + App + Auto-Migrations & Seeding)
docker compose up --build
```

The application will be live at [http://localhost:3000](http://localhost:3000).

> [!TIP]
> To launch [Prisma Studio](https://www.prisma.io/studio) alongside the containers:
> ```bash
> docker compose --profile studio up
> ```
> Prisma Studio will be available at [http://localhost:5555](http://localhost:5555).

---

### Option 2: Manual Local Setup (Bun)

#### Prerequisites

- [Bun](https://bun.sh/) (v1.1+ recommended)
- [PostgreSQL](https://www.postgresql.org/) database instance
- (Optional) [Stripe CLI](https://stripe.com/docs/stripe-cli) for testing payment callbacks locally

> [!TIP]
> You can spin up a standalone PostgreSQL instance in Docker:
> ```bash
> docker run --name next-pizza-db -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=next-pizza -p 5432:5432 -d postgres:16-alpine
> ```

#### Installation Steps

1. **Install dependencies:**
   ```bash
   bun install
   ```

2. **Configure environment variables:**
   ```bash
   cp .env.example .env
   ```
   Fill in your PostgreSQL connection string, Stripe keys, Resend credentials, and auth secrets (see [Environment Variables](#️-environment-variables)).

3. **Initialize and seed the database:**
   ```bash
   bun db:push
   bun db:seed
   ```
   > [!NOTE]
   > `bun db:seed` creates the product catalog, ingredient list, and sample categories. For credentials-based auth testing, register a new account via the UI modal so Better-Auth properly hashes passwords into the database.

4. **Start the development server:**
   ```bash
   bun dev
   ```
<<<<<<< Updated upstream

## 📜 Scripts

- `bun dev`: Starts the development server with Turbopack.
- `bun build`: Builds the application for production.
- `bun db:push`: Pushes the Prisma schema to the database.
- `bun db:seed`: Seeds the database with initial data.
- `bun lint`: Runs ESLint for code quality checks.
- `bun format`: Formats the codebase using Prettier.
=======
   Open [http://localhost:3000](http://localhost:3000) (redirects to default locale `/en`).

---

## 💳 Stripe Webhook Local Testing

The application relies on Stripe webhooks ([`app/api/checkout/callback/route.ts`](app/api/checkout/callback/route.ts)) to transition order statuses from `PENDING` to `SUCCEEDED`.

To test the complete checkout flow on localhost:

1. Log in to Stripe CLI:
   ```bash
   stripe login
   ```

2. Forward events to your local API route:
   ```bash
   stripe listen --forward-to localhost:3000/api/checkout/callback
   ```

3. Copy the printed webhook signing secret (e.g., `whsec_...`) and set it in your `.env`:
   ```env
   STRIPE_WEBHOOK_SECRET="whsec_xxxxxxxxxxxxxxxxxxxxxxxx"
   ```

---

## ⚙️ Environment Variables

Refer to [`.env.example`](.env.example) for required keys:

| Variable | Description |
| :--- | :--- |
| `DATABASE_URL` / `POSTGRES_URL` | PostgreSQL connection string (e.g. `postgres://postgres:postgres@localhost:5432/next-pizza`) |
| `PRISMA_DATABASE_URL` | Direct Prisma connection URL |
| `RESEND_API_KEY` | Resend API key for transactional order and verification emails |
| `STRIPE_SECRET_KEY` | Stripe secret key (`sk_test_...`) |
| `NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY` | Stripe publishable key (`pk_test_...`) |
| `STRIPE_WEBHOOK_SECRET` | Signing secret for verifying Stripe webhook signatures |
| `STRIPE_SUCCESS_URL` | Redirect URL upon completed payment (`http://localhost:3000/?paid`) |
| `STRIPE_CANCEL_URL` | Redirect URL if payment is cancelled (`http://localhost:3000/?cancelled`) |
| `BETTER_AUTH_SECRET` | Secret key used by Better-Auth to sign cookies and tokens |
| `GOOGLE_CLIENT_ID` / `GOOGLE_CLIENT_SECRET` | Google OAuth credentials (optional for credentials-only testing) |
| `GITHUB_CLIENT_ID` / `GITHUB_CLIENT_SECRET` | GitHub OAuth credentials (optional for credentials-only testing) |
| `NEXT_PUBLIC_API_URL` | Base API route prefix (default: `/api`) |
| `NEXT_PUBLIC_APP_URL` | Root URL of the frontend application (`http://localhost:3000`) |

---

## 📜 Scripts

All scripts are executed via [Bun](https://bun.sh/):

| Command | Description |
| :--- | :--- |
| `bun dev` | Launches local development server with Turbopack |
| `bun build` | Compiles and builds production bundle |
| `bun start` | Boots production server |
| `bun lint` | Runs ESLint analysis across the project |
| `bun format` | Formats TypeScript and JSX files via Prettier |
| `bun typecheck` | Validates TypeScript types across the project (`tsc --noEmit`) |
| `bun db:push` | Synchronizes Prisma schema directly with the database |
| `bun db:generate` | Regenerates Prisma Client types into `prisma/generated` |
| `bun db:seed` | Seeds database with initial categories, products, and ingredients |
| `bun db:studio` | Opens Prisma Studio GUI in browser |

---

## 📂 Architecture

```text
next-pizza/
├── app/
│   ├── [locale]/
│   │   ├── (checkout)/     # Checkout pages & Stripe flows
│   │   ├── (root)/         # Catalog storefront, modal product view, order history
│   │   └── verify-email/   # Email confirmation handler
│   └── api/                # API route handlers (auth, cart, products, webhooks)
├── i18n/                   # Routing and request configuration for next-intl
├── messages/               # i18n dictionary translations (en.json, ru.json)
├── prisma/                 # Database schema, migrations, config, and seed scripts
├── public/                 # Static assets, logo, icons
└── shared/
    ├── components/         # Shared UI and domain components (ui/, shared/)
    ├── hooks/              # Custom React hooks (cart, filters, query sync)
    ├── lib/                # Utility helpers, auth config, Stripe/Resend clients
    ├── services/           # Axios API services and endpoints
    └── store/              # Zustand stores
```

---

## 📄 License

Distributed under the MIT License. See [`LICENSE`](LICENSE) for details.
