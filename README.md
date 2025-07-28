# lwcw.org

Static website for https://lwcw.org

## Comparing screenshots when developing
Before making changes, run `bash screenshot.sh screenshots/main`, then during development run `watchexec -c -w index.html -w style.css bash screenshot.sh screenshots/branch`, and keep open `screenshots/comparison.html` to see the difference.
