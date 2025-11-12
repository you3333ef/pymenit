#!/bin/bash

# GitHub credentials
GITHUB_USER="you3333ef"
GITHUB_TOKEN="YOUR_GITHUB_TOKEN"
REPO_NAME="pymenit"

echo "🚀 Deploying to GitHub Pages..."

# Create repository on GitHub
echo "📝 Creating repository on GitHub..."
curl -u $GITHUB_USER:$GITHUB_TOKEN https://api.github.com/user/repos \
  -d "{\"name\":\"$REPO_NAME\", \"private\":false, \"auto_init\":false}" \
  -H "Accept: application/vnd.github.v3+json"

echo ""
echo "📤 Pushing code to GitHub..."
# Push to GitHub using token in URL
git remote remove origin 2>/dev/null
git remote add origin https://$GITHUB_USER@github.com/$GITHUB_USER/$REPO_NAME.git
git push -u origin main

echo ""
echo "✅ Deployment complete!"
echo "🔗 Your site will be available at: https://$GITHUB_USER.github.io/$REPO_NAME/"
echo ""
echo "⚠️  If you get an authentication error, please:"
echo "   1. Verify your GitHub credentials are correct"
echo "   2. Ensure your Personal Access Token has the correct permissions"
echo "   3. Create the repository manually at: https://github.com/new"
echo ""
echo "After pushing, enable GitHub Pages in your repository settings:"
echo "   1. Go to: https://github.com/$GITHUB_USER/$REPO_NAME/settings/pages"
echo "   2. Select 'GitHub Actions' as the source"
echo "   3. The workflow will run automatically on the next push"