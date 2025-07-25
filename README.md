# README.md

# 🧠 AIC Polyglot Platform Monorepo

Welcome to the NextGen AI Consulting Platform Monorepo — a polyglot, domain-driven, microservice-oriented platform for AI enablement, transformation, and orchestration.

## 🗂 Structure Overview

This repo is organized by functional and technical boundaries:

- `apps/`: Full-stack apps and services (Java, Python, Go, Rust, Next.js, Serverless)
- `libs/`: Polyglot shared libraries per language
- `domains/`: DDD domain models and aggregates (by bounded context)
- `packages/`: Shared utilities, SDKs, plugins, clients
- `infra/`: Terraform, Kubernetes, Helm, CI/CD, IAM, Observability, Contracts
- `config/`: Environments, Helm charts, secrets, lint rules, OTEL
- `proto/`: gRPC / Protobuf message definitions
- `events/`: Event schemas, catalogs, and serializers
- `openapi/`: OpenAPI definitions and ReDoc configs
- `docs/`: MkDocs-based documentation system
- `tools/`: Build, lint, CI, Pants, Bazel, Nx, Tilt config
- `tests/`: Global contract, e2e, mocks, integration, and testdata
- `examples/`: Playground CLI tools, notebooks, flows

## 🚀 Getting Started

```bash
./dev.sh up         # Starts local dev environment (Tilt + Docker Compose)
./dev.sh lint       # Runs all linters
./dev.sh test       # Runs all tests
./dev.sh build      # Runs full build across all services
./dev.sh deploy     # Applies Kubernetes manifests or Serverless deploy
````

## 🧱 Build Systems

| Tool         | Domain                    |
| ------------ | ------------------------- |
| Bazel        | Cross-language builds     |
| Pants        | Python + Go + JVM builds  |
| Nx / Turbo   | Frontend & TypeScript     |
| Gradle       | Java + Kotlin builds      |
| Poetry / Pip | Python services/libraries |
| Cargo        | Rust modules              |

## 🛠 Tooling

* **CI/CD:** GitHub Actions, Argo CD, Tekton, Jenkins, etc.
* **IaC:** Terraform modules, Kustomize overlays
* **Observability:** OTEL + Prometheus + Grafana + Loki
* **Testing:** Pact (contract), Cypress (e2e), Pytest, JUnit, Go test
* **API Gateway & Auth:** JWT, OAuth, API key middleware
* **Docs:** MkDocs, ReDoc

## 🧑‍💻 Developer Guide

See [CONTRIBUTING.md](./CONTRIBUTING.md) for development workflow, PR process, and branching model.

## 📜 License

See [LICENSE](./LICENSE) for license details.
