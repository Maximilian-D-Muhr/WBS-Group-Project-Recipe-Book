import Link from 'next/link';

export default function NotFound(): React.ReactElement {
  return (
    <div className="min-h-[50vh] flex flex-col items-center justify-center text-center">
      <h1 className="text-6xl font-bold text-warning mb-4">404</h1>
      <p className="text-xl mb-6">Page not found</p>
      <Link href="/" className="btn btn-primary">
        Back to Home
      </Link>
    </div>
  );
}
