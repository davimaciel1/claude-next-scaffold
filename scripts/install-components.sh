#!/bin/bash
# install-components.sh - Install all Shadcn UI components

echo "🎨 Installing Shadcn UI components..."
echo ""

# Initialize Shadcn if not already done
if [ ! -f "components.json" ]; then
  echo "Initializing Shadcn UI..."
  npx shadcn@latest init -y
fi

# Try to install all components at once
echo "Installing all components..."
npx shadcn@latest add --all -y --overwrite

# Verify installation
echo ""
echo "✅ Components installed:"
if [ -d "src/components/ui" ]; then
  ls -1 src/components/ui/*.tsx 2>/dev/null | wc -l
  echo "files found in src/components/ui/"
else
  echo "⚠️  No components directory found. Please run npm install first."
fi

echo ""
echo "To install a specific component:"
echo "npx shadcn@latest add [component-name]"
echo ""
echo "Done!"