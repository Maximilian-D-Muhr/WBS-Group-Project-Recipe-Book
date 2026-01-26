'use client';

import { useRouter, useSearchParams } from 'next/navigation';
import { useState, type FormEvent, type ChangeEvent } from 'react';

export default function SearchBar(): React.ReactElement {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [search, setSearch] = useState<string>(searchParams.get('q') ?? '');

  const handleSubmit = (e: FormEvent<HTMLFormElement>): void => {
    e.preventDefault();
    const trimmed = search.trim();
    if (trimmed) {
      router.push(`/recipes?q=${encodeURIComponent(trimmed)}`);
    } else {
      router.push('/recipes');
    }
  };

  const handleChange = (e: ChangeEvent<HTMLInputElement>): void => {
    setSearch(e.target.value);
  };

  return (
    <form onSubmit={handleSubmit} className="flex gap-2 max-w-md mx-auto">
      <input
        type="text"
        value={search}
        onChange={handleChange}
        placeholder="Search recipes..."
        className="input input-bordered flex-grow"
      />
      <button type="submit" className="btn btn-primary">
        Search
      </button>
    </form>
  );
}
