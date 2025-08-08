# 🚀 Claude Code Instructions

## You are working with a Next.js scaffold that includes:

- ✅ Next.js 14 with App Router
- ✅ TypeScript configured
- ✅ Tailwind CSS with Shadcn UI theme
- ✅ Shadcn UI components in `src/components/ui/`
- ✅ Prisma ORM for database
- ✅ Socket.IO for real-time features

## Available Components

Check `src/components/ui/` for all available components. Common ones include:

- `button`, `card`, `dialog`, `input`, `select`
- `table`, `tabs`, `form`, `toast`, `dropdown-menu`
- `avatar`, `badge`, `checkbox`, `radio-group`
- `calendar`, `date-picker`, `command`, `popover`

## Development Workflow

1. **Use existing components** from `@/components/ui/`
2. **If a component doesn't exist**, install it:
   ```bash
   npx shadcn@latest add [component-name]
   ```
3. **For forms**, use React Hook Form with Zod
4. **For state**, use React hooks or Zustand
5. **For data fetching**, use React Query or server components

## Example Component Usage

```tsx
import { Button } from "@/components/ui/button"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"

export function ExampleComponent() {
  return (
    <Card>
      <CardHeader>
        <CardTitle>Example</CardTitle>
        <CardDescription>Using Shadcn UI components</CardDescription>
      </CardHeader>
      <CardContent className="space-y-4">
        <div className="space-y-2">
          <Label htmlFor="name">Name</Label>
          <Input id="name" placeholder="Enter your name" />
        </div>
        <Button>Submit</Button>
      </CardContent>
    </Card>
  )
}
```

## Database Operations

```tsx
// Use Prisma client
import { prisma } from "@/lib/db"

// Example query
const users = await prisma.user.findMany()
```

## Important Notes

- **Always prefer existing UI components** over creating new ones
- **Use TypeScript** for all new files
- **Follow Next.js App Router** conventions
- **Components may need installation** - check if they exist first
- **If something doesn't work**, try installing the missing component

## Commands

```bash
npm run dev                    # Development
npm run build                  # Build
npx shadcn@latest add [name]   # Add component
npx prisma studio              # Database GUI
```