import { APP_TITLE } from '@/lib/constants';

export default function Footer() {
  return (
    <footer className="bg-base-200 text-base-content py-8 border-t">
      <div className="container mx-auto px-4">
        <div className="text-center">
          <p className="text-sm opacity-70">
            © 2025 {APP_TITLE}. Alle Rechte vorbehalten.
          </p>
        </div>
      </div>
    </footer>
  );
}
