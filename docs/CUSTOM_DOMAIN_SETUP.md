# Custom Domain Setup Guide for Azure Static Web Apps

## Option 1: Using Cloudflare (FREE - Recommended)

### Step 1: Setup Cloudflare
1. Go to [cloudflare.com](https://cloudflare.com) and create an account
2. Click "Add a Site" and enter your domain name
3. Choose the FREE plan
4. Cloudflare will scan your existing DNS records
5. Review and continue

### Step 2: Update Nameservers
1. Cloudflare will provide you with 2 nameservers (e.g., `alice.ns.cloudflare.com`, `bob.ns.cloudflare.com`)
2. Go to your domain registrar (GoDaddy, Namecheap, etc.)
3. Update your domain's nameservers to the Cloudflare ones
4. Wait 24-48 hours for propagation

### Step 3: Add DNS Record in Cloudflare
1. In Cloudflare dashboard, go to DNS > Records
2. Add a CNAME record:
   - **Type**: CNAME
   - **Name**: `@` (for apex domain) or `blog` (for subdomain)
   - **Target**: `your-app-name.azurestaticapps.net`
   - **Proxy status**: Orange cloud (Proxied) - for extra performance and security

### Step 4: Configure Custom Domain in Azure
1. Go to Azure Portal → Your Static Web App
2. In left menu, click "Custom domains"
3. Click "Add custom domain"
4. Enter your domain name (e.g., `yourdomain.com` or `blog.yourdomain.com`)
5. Choose validation method:
   - **CNAME**: For subdomains (recommended)
   - **TXT**: For apex domains
6. Follow the validation instructions
7. Wait for SSL certificate to be issued (up to 24 hours)

---

## Option 2: Using Your Registrar's DNS (FREE)

### Step 1: Access DNS Management
1. Log into your domain registrar (GoDaddy, Namecheap, etc.)
2. Find DNS Management or DNS Settings

### Step 2: Add DNS Records

**For Subdomain (e.g., blog.yourdomain.com):**
- **Type**: CNAME
- **Host**: `blog`
- **Value**: `your-app-name.azurestaticapps.net`
- **TTL**: 3600

**For Apex Domain (e.g., yourdomain.com):**
- **Type**: A
- **Host**: `@`
- **Value**: Get IP addresses from Azure (see step 3)
- **TTL**: 3600

### Step 3: Get Azure IP Addresses (for apex domain)
1. In Azure Portal → Your Static Web App → Custom domains
2. Click "Add custom domain"
3. Enter your apex domain
4. Azure will provide IP addresses
5. Add these as A records in your DNS

### Step 4: Domain Validation
1. Azure will provide a TXT record for validation
2. Add this TXT record to your DNS
3. Wait for validation and SSL certificate

---

## Updating Hugo Configuration

Once your domain is working, update your Hugo config:

```toml
# In hugo.toml
baseURL = 'https://yourdomain.com/'  # Replace with your actual domain
```

---

## Cost Comparison

| Option | Monthly Cost | Features |
|--------|--------------|----------|
| **Cloudflare** | **FREE** | DNS + CDN + Security + SSL |
| **Registrar DNS** | **FREE** | Basic DNS only |
| **Azure DNS** | **~$0.50** | DNS only |

---

## Troubleshooting

### DNS Propagation
- Use [whatsmydns.net](https://whatsmydns.net) to check propagation
- Can take 24-48 hours for full propagation

### SSL Certificate Issues
- Wait up to 24 hours for Azure to issue certificate
- Ensure DNS is properly configured first

### Domain Not Working
1. Check DNS records are correct
2. Verify domain validation completed
3. Check Azure Static Web App status
4. Clear browser cache

---

## Security Benefits with Cloudflare (FREE)

- **DDoS Protection**: Automatic protection against attacks
- **Web Application Firewall**: Basic security rules
- **SSL/TLS**: Enhanced encryption options
- **Caching**: Faster load times globally
- **Analytics**: Basic traffic insights

---

## Next Steps

1. Choose your preferred option (Cloudflare recommended)
2. Follow the setup steps above
3. Update your Hugo baseURL
4. Test your domain
5. Enjoy your custom domain!
