export default function LandingPage() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-center p-24">
      <div className="text-center">
        <h1 className="text-6xl font-bold tracking-tight">AR Vision Studio</h1>
        <p className="mt-4 text-xl text-gray-600">
          Enterprise-grade WebAR SaaS Platform
        </p>
        <div className="mt-8 flex gap-4 justify-center">
          <a 
            href="/login" 
            className="rounded-lg bg-black px-6 py-3 text-white hover:bg-gray-800"
          >
            Get Started
          </a>
          <a 
            href="#features" 
            className="rounded-lg border px-6 py-3 hover:bg-gray-50"
          >
            Learn More
          </a>
        </div>
      </div>
    </main>
  );
}
