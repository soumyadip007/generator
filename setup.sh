#!/bin/bash

# AsyncAPI Generator Setup Script
# This script ensures you're using the correct Node.js version and sets up the environment

echo "🚀 AsyncAPI Generator Setup"
echo "============================"
echo ""

# Check if nvm is installed
if [ ! -f "$HOME/.nvm/nvm.sh" ]; then
    echo "❌ nvm is not installed. Please install nvm first:"
    echo "   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash"
    exit 1
fi

# Load nvm
source ~/.nvm/nvm.sh

# Use Node.js 24
echo "📦 Switching to Node.js 24..."
nvm use 24

if [ $? -ne 0 ]; then
    echo "❌ Node.js 24 is not installed. Installing now..."
    nvm install 24
    nvm use 24
fi

# Display versions
echo ""
echo "✅ Node.js version: $(node --version)"
echo "✅ npm version: $(npm --version)"
echo ""
echo "🎉 Setup complete! You can now use the AsyncAPI Generator."
echo ""
echo "📚 Quick commands:"
echo "   npm run build              - Build all packages"
echo "   npm test                   - Run all tests"
echo "   npm run generator:test:unit - Run unit tests"
echo "   npm run lint               - Lint the code"
echo ""
