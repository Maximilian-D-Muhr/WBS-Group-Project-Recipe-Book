import { APP_TITLE } from '@/lib/constants';

/**
 * Footer with copyright and project information
 * @returns {JSX.Element}
 */
export default function Footer() {
  return (
    <footer className="bg-base-200 text-base-content py-8 border-t">
      <div className="container mx-auto px-4">
        <div className="text-center">
          <p className="text-sm opacity-70">
            WBS Group Project Ben & Max - JS then TS refactor
          </p>
        </div>
      </div>
    </footer>
  );
}
