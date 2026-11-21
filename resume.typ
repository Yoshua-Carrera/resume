#set document(
  title: "Yoshua Carrera Vargas — Resume",
  author: "Yoshua Carrera Vargas",
  keywords: (
    "Senior Software Engineer",
    "Frontend Engineer",
    "Full Stack",
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
  above: 6pt,
  below: 0.45em,
  sticky: true,
)[
  #text(weight: "semibold")[#name] -- #emph(desc) #h(1fr) #dates
]

// Header
#align(center)[
  #text(size: 18pt, weight: "bold")[Yoshua Carrera Vargas] \
  Irving, TX
  #link("mailto:yoshua.carrera24@gmail.com")[yoshua.carrera24\@gmail.com] |
  #link("https://okaeri.dev/")[okaeri.dev] |
  #link("https://github.com/yoshua-Carrera")[github.com/yoshua-Carrera]
]

= Summary
AVP Senior Software Engineer at Citi with 9+ years of experience building enterprise-scale web applications in *React*,
*Next.js*, *Angular*, and *TypeScript*. Delivers *Generative AI / LLM*-powered tools, cross-framework *micro-frontend*
architectures (*Module Federation* with Webpack and Vite, Nx, Turborepo), and cloud-native deployments with *Kubernetes*,
*Helm*, and *OpenShift*. Collaborates across the stack with *Python (FastAPI)*, *Go (Gin)*, and *Java (Spring Boot)*
services. Co-founding engineer of a platform that scaled from 6 to \~24 developers; M.S. in Applied Data Science.

= Technical Skills
- *Languages:* TypeScript, JavaScript (ES6+), Python, Go, SQL / PL/SQL, R, C++, HTML5, CSS / SCSS
- *Frontend:* React, Next.js, Angular (v9--20, Signals, RxJS, NgRx), Redux, TanStack Query, TanStack Form, Tailwind CSS,
  Micro-frontends, Module Federation (Webpack, Vite), Storybook, Design Systems / Component Libraries, Ionic / Capacitor
- *Backend & APIs:* FastAPI, Go / Gin, Django, REST, GraphQL / Apollo, Backend-for-Frontend (BFF), OAuth2, JWT,
  Spring Boot / Gradle (integration)
- *AI / ML:* Generative AI, LLMs, AI Assistants / Chatbots, TensorFlow, Keras, scikit-learn, OpenCV, Pandas, NumPy
- *DevOps & Cloud:* Kubernetes, Helm, OpenShift, Harness, GitHub, CI/CD, Jenkins, Bitbucket, Nx, Turborepo, Vite, Webpack,
  AWS (EC2, Elastic Beanstalk, RDS, Athena)
- *Testing:* Vitest, Jest, Storybook, Karma, Jasmine, Cucumber, Postman, Insomnia
- *Databases:* MongoDB / Atlas, Oracle, MySQL, MS SQL Server, SSIS / Data Warehousing
- *Practices:* Agile / Scrum, System Architecture, Performance Optimization, Code Review, Mentoring, Developer Tooling
  (Neovim, LSP), Jira, Figma

= Experience

#job[Citi][Assistant Vice President -- Senior Software Engineer][Irving, TX][Sep 2025 -- Present]
Converted from contractor to full-time employee and promoted to AVP, continuing as a lead frontend engineer across Citi's
risk, controls, and AI automation platforms.

#project[OET / OEM][Testing & monitoring platform, OMAI organization][Jun 2026 -- Present]
- Co-founding engineer of a greenfield web application where users document monitoring and testing execution efforts,
  now integrated with sample population workflows; co-architected the frontend, monorepo, and deployment platform as the
  team grew from 6 developers (3 frontend, 3 backend) to \~24.
- Built a *React* + *TypeScript* micro-frontend suite using *TanStack Query* for server-state caching and *TanStack Form*
  for complex, type-safe form workflows, organized as a *Turborepo* monorepo with shared packages.
- Engineered a cross-framework *Module Federation* integration (*Vite*) mounting the React micro-frontends inside
  Workbench, an *Angular* shell application, solving cross-framework routing, query-state synchronization, and event
  messaging between frameworks.
- Authored all *Kubernetes* manifests and *Helm* charts for the project, including *horizontal pod autoscaling*, secrets
  management, and environment-specific configuration; monitor, debug, and roll out deployments on *OpenShift*.
- Integrated with *Java Spring Boot* backend microservices.

#project[MCA][Enterprise risk & controls management platform][Sep 2025 -- Jun 2026]
- Replaced a monolithic iframe-based integration with *Webpack Module Federation*, serving remote entries for every
  micro-frontend in the monorepo, including the embedded GenAI assistant.
- Drove the frontend side of a full DevOps platform migration from *Bitbucket*, *Jenkins*, and RLM to *GitHub*, Lightspeed,
  and *Harness*, rewriting deployment pipelines for 7 micro-frontends as *Kubernetes* and *Helm* configurations.
- Built a Neovim plugin for the ICGDS design-system language server (LSP), bringing component autocompletion and
  diagnostics to the editor.

#job[Citi (via Doran Jones)][Senior Software Engineer (Contract)][Tampa, FL (Remote)][Sep 2024 -- Sep 2025]
#project[MCA][Enterprise risk & controls management platform][Mar 2025 -- Sep 2025]
- Developed reusable *Angular* components on ICGDS, Citi's internal Tailwind-based design system, shared across
  *7 micro-frontends* in an *Nx* monorepo, with *Storybook* sandboxes for isolated development and review.
- Upgraded the platform from *Angular 18 to Angular 20* and refactored legacy code to modern reactive patterns using
  *Signals* and RxJS Subjects.
- Migrated the unit test suite from *Jest* to *Vitest*, *cutting CI/CD pipeline time by \~50%*.
- Integrated the GenAI assistant into MCA as an embedded side-panel widget.

#project[GenAI Risk Assistant (IssueIQ)][Generative AI team, COO organization][Sep 2024 -- Mar 2025]
- Built the frontend of a reusable, embeddable *LLM-powered AI assistant* that auto-generates risk reports, classifies
  risks into control categories, and provides a conversational *chatbot*; now used by teams worldwide across most of
  Citi's internal risk & controls applications, with adoption growing daily.
- Developed in *React* / *Next.js* with *Redux*, using Next.js API routes as a *backend-for-frontend (BFF)* proxy to a
  *Go (Gin)* authentication gateway and a *Python FastAPI* LLM service.
- *Cut API latency by 50--60%* by introducing *concurrency* into the FastAPI backend (e.g., a 4-minute endpoint reduced
  to \~1.5 minutes).
- Delivered the first 3 roadmap modules within 6 months, including the IssueIQ integration in ICAPS.

#job[Charter Communications (Contract)][Senior Software Developer (IV)][Denver, CO][May 2022 -- Jun 2024]
Spectrum and My Spectrum App (MSA): *Angular* single-page applications distributed to mobile via *Ionic / Capacitor*,
serving 32M+ users in 41 states (J.D. Power Award, May 2024).
- Lead developer of the Service Appointments feature, handling *104K transactions per month* at a *98.16% success rate*
  across 5 transaction types (authenticated and unauthenticated); primary point of contact between frontend and backend for
  *GraphQL* schema and domain changes.
- Lead developer of the 2024-Q1 Enhanced Scheduling feature, scoping level of effort (LOE) and building on a new GraphQL
  integration that pushed success rates beyond the quarterly goal.
- Authored, architected, and led the foundational work for the Internet Symptoms troubleshooting feature (\~128K users per
  month).
- Member of the architecture team defining application-wide patterns, including facades, factories, and observer-based
  state management with *NgRx*.

#job[Fairfield University -- ChemQuest Mobile App][Software Developer][Fairfield, CT][Jun 2020 -- Dec 2021]
Experimental mobile app that recognizes hand-drawn chemical structures using machine learning.
- Team lead for three developers spanning machine learning research and web development.
- Built the frontend with *Angular*, *Ionic*, *Capacitor*, and TypeScript; contributed to the *Python / Django* backend,
  token-based authentication, *MySQL* integration, and *AWS* cloud deployment.
- Managed every release (alpha, beta, production) to the Apple App Store and Google Play Store.

#job[Cuponcity (Intern)][Junior Developer][Quito, Ecuador][Mar 2017 -- Jan 2018]
E-commerce platform connecting users with businesses across Ecuador through time-bound coupon offers.
- Built reusable *Angular* components and user interfaces with Angular Material and Bootstrap, including pagination and
  carousels, and implemented token-based user authentication.

= Additional Projects

#block(
  above: 10pt,
  below: 0.6em,
  sticky: true,
)[*Black Cat -- Cat Manga* | Remote #h(1fr) Apr 2020 -- Jun 2021]
Community-driven platform giving readers access to Japanese reading materials with a modern user experience.
- Frontend development with *React*, TypeScript, SCSS, and Bootstrap on a 15-developer team shipping weekly releases;
  integrated the *MongoDB*-backed API and supported third-party bot developers consuming it.

= Education
- *Fairfield University* | Master of Science, Applied Data Science | Fairfield, CT #h(1fr) 2022
- *Universidad de las Américas* | B.S. Mathematics; B.S. Finance | Quito, Ecuador #h(1fr) 2018
