// @ts-check
import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
  site: 'https://sonnenhof-zieger.de',
  integrations: [sitemap({
    filter: (page) => !page.includes('/impressum') && !page.includes('/datenschutz')
  })],
  output: 'static',
});
