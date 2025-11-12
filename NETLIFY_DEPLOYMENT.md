# Deploy to Netlify - Instructions

## 🚀 Quick Deploy (Recommended)

### Option 1: Netlify CLI (Easiest)

```bash
# 1. Install Netlify CLI (if not already installed)
npm install -g netlify-cli

# 2. Login to Netlify
netlify login

# 3. Deploy the site
netlify deploy --prod --dir=.
```

### Option 2: Drag & Drop (Manual)

1. Go to: https://app.netlify.com/drop
2. Drag the entire `pymenit_temp` folder to the browser
3. Your site will be deployed instantly with a random URL

### Option 3: Connect GitHub Repository

1. Go to: https://app.netlify.com/start
2. Connect your GitHub account
3. Select the `you3333ef/pymenit` repository
4. Deploy settings:
   - **Build command**: (leave empty - static site)
   - **Publish directory**: `/` (root)
5. Click "Deploy site"

## 📁 Netlify Configuration

The `netlify.toml` file is configured with:

- **Static site deployment** (no build needed)
- **Security headers** (XSS protection, Content-Type options)
- **SPA routing support** (redirects to index.html)
- **Path redirects** for /r/* and /pay/* routes

## 🔧 Manual Deployment with API

If you have a Netlify Personal Access Token:

```bash
# Set your token
export NETLIFY_TOKEN="your_token_here"

# Create a new site
curl -H "Authorization: Bearer $NETLIFY_TOKEN" \
  -H "Content-Type: application/json" \
  https://api.netlify.com/api/v1/sites \
  -d '{"name":"pymenit"}'

# Deploy manually (requires zip upload)
# See: https://docs.netlify.com/site-deploys/create-deploys/#api-deploys
```

## 🌐 Site URLs

After deployment, your site will be available at:
- **Random URL**: https://random-name.netlify.app
- **Custom domain**: If you configure one

## ✅ Files Configured for Netlify

- ✅ `netlify.toml` - Netlify configuration
- ✅ `deploy-netlify.sh` - Automated deployment script
- ✅ All static assets ready (HTML, CSS, JS, images)

## 🔄 Continuous Deployment

To enable automatic deployments:

1. Connect your GitHub repo to Netlify
2. Every push to `main` will trigger a new deployment
3. Preview deployments for pull requests
4. Instant cache invalidation

## 📚 Learn More

- [Netlify CLI Documentation](https://docs.netlify.com/cli/)
- [netlify.toml Reference](https://docs.netlify.com/configure-builds/file-based-configuration/)
- [Deploy Previews](https://docs.netlify.com/site-deploys/create-deploys/#deploy-preview)