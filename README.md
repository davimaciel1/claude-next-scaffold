# Claude Next Scaffold

A complete Next.js scaffold optimized for Claude Code with Shadcn UI components.

## Features

- ⚡ **Next.js 14** - Stable version with App Router
- 🎨 **Shadcn UI** - Beautiful components ready to use
- 📘 **TypeScript** - Type-safe development
- 🎯 **Tailwind CSS** - Utility-first styling
- 🗄️ **Prisma ORM** - Database ready
- 🔌 **Socket.IO** - Real-time capabilities
- 🎣 **React Hook Form** - Form handling
- ✅ **Zod** - Schema validation

## Quick Start

```bash
# Clone the repository
git clone https://github.com/davimaciel1/claude-next-scaffold
cd claude-next-scaffold

# Install dependencies
npm install

# Initialize Shadcn UI
npx shadcn@latest init -y

# Install all Shadcn components
npx shadcn@latest add --all -y

# Setup database
npx prisma generate
npx prisma db push

# Start development
npm run dev
```

## Project Structure

```
src/
├── app/              # Next.js App Router
├── components/       
│   └── ui/          # Shadcn UI components
├── hooks/           # Custom React hooks
├── lib/             # Utilities and configs
└── types/           # TypeScript types
```

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run start` - Start production server
- `npm run setup` - Complete setup (install + components)

## Adding Components

To add a specific Shadcn component:

```bash
npx shadcn@latest add [component-name]
```

To add all components:

```bash
npx shadcn@latest add --all
```

## Using with Claude Code

1. Clone this repository
2. Run `npm run setup` for complete installation
3. Start coding with Claude Code
4. All Shadcn components will be available

## Components Available

After running the setup, you'll have access to 40+ Shadcn UI components including:

- Accordion, Alert, Avatar, Badge, Button
- Calendar, Card, Checkbox, Dialog
- Dropdown Menu, Form, Input, Select
- Table, Tabs, Toast, and many more...

## License

MIT

## Author

Created for Claude Code development