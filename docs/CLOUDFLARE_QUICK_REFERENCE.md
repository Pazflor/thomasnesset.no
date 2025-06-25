# Cloudflare + Azure Static Web Apps - Quick Reference

## What You Need Before Starting

- [ ] Your domain name
- [ ] Azure Static Web App URL (e.g., `happy-hill-123456.azurestaticapps.net`)
- [ ] Access to your domain registrar account

## Cloudflare DNS Record Setup

### For Subdomain (blog.yourdomain.com)

```
Type: CNAME
Name: blog
Target: your-app-name.azurestaticapps.net
Proxy: Enabled (Orange Cloud)
```

### For Apex Domain (yourdomain.com)

```
Type: CNAME
Name: @
Target: your-app-name.azurestaticapps.net
Proxy: Enabled (Orange Cloud)
```

## Nameservers (Example - yours will be different)

```
alice.ns.cloudflare.com
bob.ns.cloudflare.com
```

## Timeline Expectations

- **Cloudflare setup**: 5-10 minutes
- **Nameserver update**: Immediate at registrar
- **DNS propagation**: 24-48 hours (often faster)
- **Azure domain validation**: 5-10 minutes
- **SSL certificate**: Up to 24 hours

## Troubleshooting Tools

- **DNS Propagation**: [whatsmydns.net](https://whatsmydns.net)
- **SSL Check**: [ssllabs.com/ssltest](https://ssllabs.com/ssltest)
- **Cloudflare Status**: Dashboard → Overview

## Benefits You Get (FREE)

✅ Free DNS hosting
✅ Global CDN (faster loading)
✅ DDoS protection
✅ SSL/TLS encryption
✅ Basic Web Application Firewall
✅ Caching and optimization
✅ Traffic analytics

## After Setup

1. Update `hugo.toml` baseURL
2. Commit and push changes
3. Your site rebuilds automatically
4. Enjoy your custom domain!
