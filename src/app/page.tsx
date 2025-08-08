export default function Home() {
  return (
    <div className="flex min-h-screen flex-col items-center justify-center p-24">
      <div className="text-center space-y-6">
        <h1 className="text-4xl font-bold tracking-tight">
          Claude Next Scaffold
        </h1>
        <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
          Complete Next.js scaffold with Shadcn UI components pre-installed.
          Ready for Claude Code development.
        </p>
        <div className="flex gap-4 justify-center pt-4">
          <a
            href="/dashboard"
            className="inline-flex items-center justify-center rounded-md bg-primary px-6 py-3 text-sm font-medium text-primary-foreground shadow hover:bg-primary/90 transition-colors"
          >
            Get Started
          </a>
          <a
            href="https://ui.shadcn.com/docs"
            target="_blank"
            rel="noopener noreferrer"
            className="inline-flex items-center justify-center rounded-md border border-input bg-background px-6 py-3 text-sm font-medium shadow-sm hover:bg-accent hover:text-accent-foreground transition-colors"
          >
            Documentation
          </a>
        </div>
      </div>
    </div>
  )
}