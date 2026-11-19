# brainfold-site

The landing page of [Brainfold](https://github.com/jackspolski1103/brainfold), a shared brain for a team's agents over MCP.

One static page in `site/`, served by Caddy. The product documentation is not copied here: the page links to the documentation that the Brainfold panel serves.

```bash
python3 -m http.server -d site 8080     # preview at http://127.0.0.1:8080
```

The screenshots and the video in `site/assets/` come from a local Brainfold server over its synthetic example brain.

The video is rendered from `film/scene.html`, which draws any moment with `render(seconds)`; open it in a browser to play it. The tool calls and answers in it are the ones a local server gave.

For search engines and agents the page carries structured data, `robots.txt`, `sitemap.xml` and `llms.txt`. `site/llms-full.txt` is a copy of the documentation: rebuild it with `./build-llms.sh /path/to/brainfold` when the documentation changes.

Licensed under [Apache-2.0](LICENSE).
