---
title: "Working with Devcontainers"
date: 2025-06-25T14:00:00Z
draft: false
tags: ["devcontainers", "docker", "development"]
categories: ["development"]
---

# Development Containers: A Game Changer

Development containers (devcontainers) provide a consistent development environment that works across different machines and operating systems.

## Benefits of Devcontainers

- **Consistency** - Same environment for all team members
- **Isolation** - Keep project dependencies separate
- **Reproducibility** - Easy setup for new contributors
- **Flexibility** - Switch between different project environments easily

## Hugo with Devcontainers

This blog is set up with a devcontainer that includes:

- Hugo extended version
- Node.js for additional tooling
- Git for version control
- VS Code extensions for better development experience

## Getting Started

1. Open the project in VS Code
2. Install the Dev Containers extension
3. Click "Reopen in Container" when prompted
4. Start developing!

The devcontainer automatically forwards port 1313, so you can run `hugo server` and access your site at `http://localhost:1313`.

## Configuration

The devcontainer configuration is in `.devcontainer/devcontainer.json` and includes:

- Base Ubuntu 22.04 image
- Hugo extended installation
- Useful VS Code extensions
- Port forwarding for development server

This setup ensures everyone working on the project has the exact same environment!
