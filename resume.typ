#set document(
  title: "Yoshua Carrera Vargas — Resume",
  author: "Yoshua Carrera Vargas",
  keywords: (
    "Senior Software Engineer",
    "Full Stack Engineer",
    "Backend",
    "Frontend Engineer",
    "Go",
    "NixOS",
    "React",
    "Next.js",
    "Angular",
    "TypeScript",
    "Generative AI",
    "LLM",
    "Kubernetes",
    "Helm",
    "Micro-frontends",
  ),
)
#set page(paper: "us-letter", margin: 0.6in)
#set text(size: 10pt)
#set par(justify: false, leading: 0.55em, spacing: 0.6em)
#set list(indent: 0.5em, body-indent: 0.5em, spacing: 0.45em)

// Section headings: bold small caps with a rule underneath
#show heading.where(level: 1): it => block(
  above: 12pt,
  below: 6pt,
  width: 100%,
)[
  #text(size: 12pt, weight: "bold", smallcaps(it.body))
  #v(-8pt)
  #line(length: 100%, stroke: 0.4pt)
]

// One-line job header: Company | Title | Location ... Dates
#let job(company, title, location, dates) = block(
  above: 10pt,
  below: 0.6em,
  sticky: true,
)[
  *#company* | #emph(title) | #location #h(1fr) #dates
]

// Project label inside a job: Project — context ... dates
#let project(name, desc, dates) = block(
  above: 10pt,
  below: 0.75em,
  sticky: true,
)[
  #text(weight: "semibold")[#name] -- #emph(desc) #h(1fr) #dates
]

// Header
#align(center)[
  #text(size: 18pt, weight: "bold")[Yoshua Carrera Vargas] \
  #text(size: 11pt)[Senior Full-Stack Software Engineer] \
  Irving, TX |
  #link("mailto:yoshua.carrera24@gmail.com")[yoshua.carrera24\@gmail.com] |
  #link("https://okaeri.dev/")[okaeri.dev] |
  #link("https://github.com/yoshua-Carrera")[github.com/yoshua-Carrera]
]

= Summary
AVP Senior Software Engineer at Citi building enterprise-scale applications, expanding from
deep frontend expertise into full-stack and backend engineering. Builds end to end in TypeScript (React, Next.js,
Angular, TanStack Start) with backend work in Go (Gin) and Python (FastAPI). Delivers Generative AI / LLM-powered
tools and cross-framework micro-frontend architectures (Module Federation, Nx, Turborepo), and owns deployments on
Kubernetes, Helm, and OpenShift. Runs a self-hosted NixOS / k3s infrastructure managed entirely as code.
Co-founding engineer of a platform that scaled from 6 to \~24 developers; M.S. in Applied Data Science.

= Technical Skills
- *Languages:* TypeScript, JavaScript (ES6+), Go, Python, Elixir, SQL / PL/SQL, Nix, Bash, Lua, R, C++, HTML5,
  CSS / SCSS
- *Backend & APIs:* TanStack Start (server functions), Next.js API routes, Express, FastAPI, Go / Gin, gqlgen,
  Phoenix / Absinthe, Django, REST, GraphQL / Apollo, Backend-for-Frontend (BFF), OAuth2, JWT, Drizzle ORM
- *DevOps & Infrastructure:* Kubernetes, k3s, Helm, OpenShift, Docker, FluxCD (GitOps), NixOS / Nix Flakes,
  Home Manager, disko, sops-nix, systemd, MetalLB, ingress-nginx, cert-manager, CloudNativePG, Tailscale,
  Prometheus, Grafana, Harness, GitHub Actions, Jenkins, Netlify, Cloudflare R2, AWS (EC2, Elastic Beanstalk, RDS, Athena)
- *Frontend:* React, Next.js, Angular (v9--20, Signals, RxJS, NgRx), Redux, TanStack Router / Query / Form, Tailwind CSS,
  Micro-frontends, Module Federation (Webpack, Vite), Nx, Turborepo, Storybook, Design Systems, Ionic / Capacitor
- *AI & Testing:* Generative AI, LLMs, AI Assistants / Chatbots; Vitest, Jest
- *Databases:* PostgreSQL (Neon), MongoDB / Atlas, Oracle, MySQL, MS SQL Server, SSIS / Data Warehousing
- *Practices:* System Architecture, Performance Optimization, Code Review, Mentoring

= Experience

#job[Citi][Assistant Vice President -- Senior Software Engineer][Irving, TX][Sep 2025 -- Present]
Converted from contractor to full-time employee and promoted to AVP, continuing as a lead engineer across Citi's risk,
controls, and AI automation platforms, owning frontend architecture and Kubernetes / Helm deployments.

#project[OET / OEM][Testing & monitoring platform, OMAI organization][Jun 2026 -- Present]
- Co-founding engineer of a greenfield web application where users document monitoring and testing execution efforts,
  now integrated with sample population workflows; co-architected the frontend, monorepo, and deployment platform as the
  team grew from 6 developers (3 frontend, 3 backend) to \~24.
- Built a React + TypeScript micro-frontend suite using TanStack Query for server-state caching and TanStack Form
  for complex, type-safe form workflows, organized as a Turborepo monorepo with shared packages.
- Engineered a cross-framework Module Federation integration (Vite) mounting the React micro-frontends inside
  Workbench, an Angular shell application, solving cross-framework routing, query-state synchronization, and event
  messaging between frameworks.
- Authored all Kubernetes manifests and Helm charts for the project, including horizontal pod autoscaling, secrets
  management, and environment-specific configuration; monitor, debug, and roll out deployments on OpenShift.
- Integrated the frontend with Java Spring Boot backend microservices through their REST APIs.

#project[MCA][Enterprise risk & controls management platform][Sep 2025 -- Jun 2026]
- Replaced a monolithic iframe-based integration with Webpack Module Federation, serving remote entries for every
  micro-frontend in the monorepo, including the embedded GenAI assistant.
- Drove the frontend side of a full DevOps platform migration from Bitbucket, Jenkins, and RLM to GitHub, Lightspeed,
  and Harness, rewriting deployment pipelines for 7 micro-frontends as Kubernetes and Helm configurations.
- Built a Neovim plugin for the ICGDS design-system language server (LSP), bringing component autocompletion and
  diagnostics to the editor.

#job[Citi (via Doran Jones)][Senior Software Engineer (Contract)][Tampa, FL (Remote)][Sep 2024 -- Sep 2025]
#project[MCA][Enterprise risk & controls management platform][Mar 2025 -- Sep 2025]
- Developed reusable Angular components on ICGDS, Citi's internal Tailwind-based design system, shared across
  7 micro-frontends in an Nx monorepo, with Storybook sandboxes for isolated development and review.
- Upgraded the platform from Angular 18 to Angular 20 and refactored legacy code to modern reactive patterns using
  Signals and RxJS Subjects.
- Migrated the unit test suite from Jest to Vitest, cutting CI/CD pipeline time by \~50%.
- Integrated the GenAI assistant into MCA as an embedded side-panel widget.

#project[GenAI Risk Assistant (IssueIQ)][Generative AI team, COO organization][Sep 2024 -- Mar 2025]
- Built the frontend of a reusable, embeddable LLM-powered AI assistant that auto-generates risk reports, classifies
  risks into control categories, and provides a conversational chatbot; now used by teams worldwide across most of
  Citi's internal risk & controls applications, with adoption growing daily.
- Developed in React / Next.js with Redux, using Next.js API routes as a backend-for-frontend (BFF) proxy to a
  Go (Gin) authentication gateway and a Python FastAPI LLM service.
- Cut FastAPI backend latency by 50--60% by introducing concurrency (a 4-minute endpoint dropped to \~1.5 minutes).
- Delivered the first 3 roadmap modules within 6 months, including the IssueIQ integration in ICAPS.

#job[Charter Communications (Contract)][Senior Software Developer (IV)][Denver, CO][May 2022 -- Jun 2024]
Spectrum and My Spectrum App (MSA): Angular single-page applications distributed to mobile via Ionic / Capacitor,
serving 32M+ users in 41 states (J.D. Power Award, May 2024).
- Lead developer of the Service Appointments feature, handling 104K transactions per month at a 98.16% success rate
  across 5 transaction types (authenticated and unauthenticated); primary point of contact between frontend and backend for
  GraphQL schema and domain changes.
- Lead developer of the 2024-Q1 Enhanced Scheduling feature, scoping level of effort (LOE) and building on a new GraphQL
  integration that pushed success rates beyond the quarterly goal.
- Authored, architected, and led the foundational work for the Internet Symptoms troubleshooting feature (\~128K users per
  month).
- Member of the architecture team defining application-wide patterns, including facades, factories, and observer-based
  state management with NgRx.

#job[Fairfield University -- ChemQuest Mobile App][Software Developer][Fairfield, CT][Jun 2020 -- Dec 2021]
Experimental mobile app that recognizes hand-drawn chemical structures using machine learning.
- Team lead for three developers spanning machine learning research and web development.
- Built the frontend with Angular, Ionic, Capacitor, and TypeScript; contributed to the Python / Django backend,
  token-based authentication, MySQL integration, and AWS cloud deployment.
- Managed every release (alpha, beta, production) to the Apple App Store and Google Play Store.


= Projects

#block(
  above: 10pt,
  below: 0.6em,
  sticky: true,
)[*Asofenixtab* | Sole Developer (Pro Bono) | #link("https://asofenixtab.org/")[asofenixtab.org] #h(1fr) Aug 2026 -- Present]
Ecuadorian nonprofit supporting people living with bipolar disorder and their families.
- Designed, built, and maintain the organization's website and an admin dashboard that doubles as a full CMS, letting
  non-technical staff edit nearly all page content and manage incoming contact-form submissions.
- Full-stack TypeScript on TanStack Start (Router, Query, Form), with a REST API alongside server functions; Drizzle ORM
  on Neon serverless Postgres, Cloudflare R2 for media delivery, and CI/CD on Netlify.

#block(
  above: 10pt,
  below: 0.6em,
  sticky: true,
)[*NixOS Homelab* | Personal |
  #link("https://github.com/depaysement-jikan/nixos-depaysement")[github.com/depaysement-jikan/nixos-depaysement]
  #h(1fr) Nov 2025 -- Present]
Self-taught; every machine, user, and service is declared in a single Nix flake.
- Flake managing 4 NixOS hosts: a typed host/user registry generates each host's NixOS and Home Manager configuration,
  with declarative disk partitioning via disko.
- Secrets committed encrypted with sops-nix and decrypted at activation; Bash tooling scaffolds new hosts and users
  and rotates their sops secrets.
- k3s with all manifests written in Nix: MetalLB, ingress-nginx, cert-manager, Pi-hole + external-dns, CloudNativePG,
  Tailscale, Prometheus / Grafana; runs Immich, Vaultwarden, Forgejo, and Uptime Kuma.
- GitOps pipeline: a systemd unit syncs Nix-rendered manifests to Cloudflare R2, which FluxCD reconciles, with
  Discord alerts; GitHub Actions runs `nix flake check` on every PR.
- Writes postmortems and runbooks for incidents, including ext4 root corruption and a failed unstable-channel migration.

#block(
  above: 10pt,
  below: 0.6em,
  sticky: true,
)[*Mock API Server* | Personal |
  #link("https://github.com/yoshua-Carrera/mock-api")[github.com/yoshua-Carrera/mock-api]
  #h(1fr) Nov 2024 -- Present]
- File-driven mock server for REST and GraphQL: requests map to JSON fixtures by method and path or by operation name,
  with header-selected scenarios, simulated latency, and stateful response sequences for polling flows.
- Same spec implemented in TypeScript (Express), Go (gqlgen), and Elixir (Phoenix / Absinthe), with CI checks on the
  Express and Go servers.

= Education
- *Fairfield University* | Master of Science, Applied Data Science | Fairfield, CT #h(1fr) 2022
- *Universidad de las Américas* | B.S. Mathematics; B.S. Finance | Quito, Ecuador #h(1fr) 2018
