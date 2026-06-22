import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const articles = defineCollection({
  loader: glob({
    pattern: '**/*.{md,mdx}',
    base: './src/content/articles',
  }),
  schema: z.object({
    title: z.string(),
    description: z.string(),
    published: z.coerce.date(),
    updated: z.coerce.date().optional(),
    status: z.enum(['draft', 'published']).default('draft'),
    kind: z.enum(['essay', 'design-note', 'source-reading', 'review']).default('essay'),
    series: z.string().optional(),
    tags: z.array(z.string()).default([]),
    readingTime: z.string().optional(),
    hero: z.string().optional(),
  }),
});

export const collections = { articles };
