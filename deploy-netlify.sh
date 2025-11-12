#!/bin/bash

echo "🚀 Deploying to Netlify..."
echo ""

# Check if Netlify CLI is installed
if ! command -v netlify &> /dev/null; then
    echo "❌ Netlify CLI not found. Installing..."
    npm install -g netlify-cli
fi

# Check if logged in
echo "🔐 Checking Netlify authentication..."
netlify status &> /dev/null
if [ $? -ne 0 ]; then
    echo "⚠️  Not logged in to Netlify."
    echo "   Please run: netlify login"
    echo "   Then run this script again."
    exit 1
fi

echo "✅ Logged in to Netlify!"
echo ""

# Deploy the site
echo "📦 Deploying site..."
netlify deploy --prod --dir=.

echo ""
echo "✅ Deployment complete!"
echo "🔗 Your site is now live on Netlify!"