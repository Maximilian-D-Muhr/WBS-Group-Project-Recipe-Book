import Link from 'next/link';
import { NAV_LINKS, APP_TITLE } from '@/lib/constants';

export default function Navigation() {
  return (
    <nav className="navbar bg-base-200 shadow-md">
      <div className="container mx-auto">
        <div className="flex-1">
          <Link href="/" className="text-xl font-bold">
            {APP_TITLE}
          </Link>
        </div>
        <div className="flex-none">
          <ul className="menu menu-horizontal px-1 gap-2">
            {NAV_LINKS.map(({ href, label }) => (
              <li key={href}>
                <Link href={href} className="hover:bg-base-300 transition">
                  {label}
                </Link>
              </li>
            ))}
          </ul>
        </div>
      </div>
    </nav>
  );
}
