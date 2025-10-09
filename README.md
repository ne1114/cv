## Acknowledgement

With gratitude to Claud D. Park (`posquit0`) Awesome-CV project, on which this résumé is proudly based. Their work made this possible — thank you!

This repository contains my résumé built with the Awesome-CV LaTeX template, customized for me.

- Original Awesome-CV project: https://github.com/posquit0/Awesome-CV

# Jeonghoon Lee — Résumé

## Preview

- Output: `examples/resume.pdf`

## Build with Docker (recommended)

```bash
cd {to repo}
# Build image
docker build -t cv .
# Build résumé PDF (fix font cache perms inside container)
docker run --rm -u $(id -u):$(id -g) \
  -e HOME=/tmp -e XDG_CACHE_HOME=/tmp/.cache \
  -v "$PWD":/doc cv
```

## Build locally (optional)

- Requires XeLaTeX (TeX Live/MacTeX)

```bash
make resume.pdf
```

## Edit content

- Main: `examples/resume.tex` (name, title, contacts, section includes)
- Sections in `examples/resume/`:
  - `summary.tex`
  - `skills.tex`
  - `experience.tex`
  - `education.tex`

Optional tweaks

- Color: set `\colorlet{awesome}{...}` in `examples/resume.tex`
- Section highlight bar: `\setbool{acvSectionColorHighlight}{true|false}`
- Photo: uncomment `\photo{...}` in `examples/resume.tex` and add an image
