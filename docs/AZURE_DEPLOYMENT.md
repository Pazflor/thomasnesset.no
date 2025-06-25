# Azure Static Web Apps Deployment Guide

## Overview

This Hugo blog is deployed to Azure Static Web Apps with a custom domain configuration.

## Deployment Process

1. Push changes to the `main` branch
2. GitHub Actions automatically builds and deploys the site
3. Site is available at both the Azure URL and custom domain

## URLs

- **Azure URL**: https://[your-app-name].azurestaticapps.net
- **Custom Domain**: <https://yourdomain.com> (update this)

## Configuration Files

- `.github/workflows/azure-static-web-apps.yml`: Deployment workflow
- `staticwebapp.config.json`: Azure Static Web Apps configuration
- `hugo.toml`: Hugo site configuration

## DNS Configuration

### CNAME Record (for subdomain)

- **Host**: blog
- **Value**: [your-app-name].azurestaticapps.net
- **TTL**: 3600

### A Record (for apex domain)

- **Host**: @
- **Value**: [Azure provided IP addresses]
- **TTL**: 3600

## Environment Variables

The following GitHub secret is configured:

- `AZURE_STATIC_WEB_APPS_API_TOKEN`: Deployment token from Azure

## Monitoring and Logs

- View deployment logs in GitHub Actions
- Monitor site performance in Azure Portal
- Check custom domain status in Azure Static Web Apps settings

## Local Development

Run the site locally:

```bash
hugo server -D --bind 0.0.0.0
```

## Troubleshooting

1. **Custom domain not working**: Check DNS propagation (use tools like whatsmydns.net)
2. **Build failures**: Check GitHub Actions logs
3. **SSL certificate issues**: Wait for Azure to provision certificate (can take up to 24 hours)

## Security Features

- Automatic HTTPS with Azure-managed certificates
- Security headers configured in `staticwebapp.config.json`
- Content Security Policy (CSP) enabled
