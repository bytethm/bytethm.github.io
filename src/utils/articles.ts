export function getArticleSlug(article: { id?: string; slug?: string }) {
  const rawSlug = article.slug ?? article.id ?? '';
  return rawSlug.replace(/\.(md|mdx)$/, '');
}
