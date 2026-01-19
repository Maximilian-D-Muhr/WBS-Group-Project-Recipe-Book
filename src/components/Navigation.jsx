import Link from 'next/link';
import { NAV_LINKS, APP_TITLE } from '@/lib/constants';

/**
 * Navigation header with site title and main menu links
 * @returns {JSX.Element}
 */
export default function Navigation() {
  return (
    <nav className="navbar bg-base-100 border-b border-base-300 sticky top-0 z-40">
      <div className="container mx-auto w-full px-4">
        <div className="flex-1">
          <Link href="/" className="font-bold text-2xl bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent hover:opacity-80 transition-opacity">
            {APP_TITLE}
          </Link>
        </div>
        <div className="flex-none">
          <ul className="menu menu-horizontal px-1 gap-1">
            {NAV_LINKS.map(({ href, label }) => (
              <li key={href}>
                <Link href={href} className="btn btn-ghost btn-sm font-medium">
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
