# Deployment to GitHub Pages - Instructions

## 🚀 Quick Deploy

Run the automated deployment script:

```bash
./deploy.sh
```

## Manual Deployment Steps

If the automated script fails, follow these steps:

### 1. Create Repository on GitHub

Create a new repository named `pymenit` at: https://github.com/new

Or use the GitHub API:

```bash
curl -u USERNAME:TOKEN https://api.github.com/user/repos \
-d '{"name":"pymenit","private":false}'
```

### 2. Push to GitHub

```bash
git remote remove origin 2>/dev/null
git remote add origin https://USERNAME:TOKEN@github.com/you3333ef/pymenit.git
git push -u origin main
```

### 3. Enable GitHub Pages

1. Go to repository settings: https://github.com/you3333ef/pymenit/settings/pages
2. Under "Source", select "GitHub Actions"
3. The workflow will run automatically

### 4. Access Your Site

Your site will be available at:
**https://you3333ef.github.io/pymenit/**

## 📁 Project Structure

- `index.html` - Main page
- `assets/` - CSS, JS, and image files
- `pay/` - Payment pages
- `r/` - Tracking pages
- `.github/workflows/deploy.yml` - GitHub Pages deployment workflow

## ⚠️ Important Notes

- All project files remain unmodified
- Only configuration files (deploy.sh, .github/workflows/deploy.yml) were added
- GitHub Pages will serve the static files directly
- No build process required - it's a static HTML/CSS/JS site