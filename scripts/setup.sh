#!/bin/bash
# setup.sh - Complete setup script

echo "╔════════════════════════════════════════════════════════╗"
echo "║     Claude Next Scaffold - Complete Setup              ║"
echo "╚════════════════════════════════════════════════════════╝"
echo ""

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install Node.js first."
    exit 1
fi

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Initialize Shadcn UI
echo "🎨 Initializing Shadcn UI..."
npx shadcn@latest init -y

# Install all Shadcn components
echo "📦 Installing all Shadcn components..."
echo "This may take a few minutes..."
npx shadcn@latest add --all -y --overwrite

# Generate Prisma client
echo "🗄️ Setting up database..."
npx prisma generate

# Create .env file if it doesn't exist
if [ ! -f ".env" ]; then
  echo "DATABASE_URL=\"file:./dev.db\"" > .env
  echo "✅ Created .env file"
fi

# Push database schema
npx prisma db push

echo ""
echo "✅ Setup complete!"
echo ""
echo "To start development:"
echo "  npm run dev"
echo ""
echo "Visit http://localhost:3000"
echo ""