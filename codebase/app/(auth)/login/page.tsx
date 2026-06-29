export default function LoginPage() {
  return (
    <div className="flex min-h-screen items-center justify-center">
      <div className="w-full max-w-md rounded-lg border p-8">
        <h1 className="mb-6 text-2xl font-semibold">Sign in to AR Vision Studio</h1>
        <p className="text-sm text-gray-600">
          Authentication will be implemented using Supabase Auth in the next phase.
        </p>
        <div className="mt-8 text-xs text-gray-500">
          This is a production scaffold. Real login coming next.
        </div>
      </div>
    </div>
  );
}
