# Contributing to GitHub Streak Alert

Thanks for your interest in contributing! This document explains how to propose changes and the project standards. Please read it fully before opening an issue or a pull request.

---

## Project scope and principles

- __Purpose__: A simple, reliable checker that alerts you if you have not contributed today, with a countdown to GitHub’s UTC reset.
- __API__: Uses GitHub’s official GraphQL API.
- __Security__: Credentials are read from a local `.env` and are never committed.
- __Branding__: This repository is owned by 0xReLogic (Allen Elzayn). Do not add personal branding or contact info to the project’s README or code output.

---

## How to contribute

1. __Open an issue__ describing the problem or proposed feature. Keep scope focused.
2. __Fork__ the repository and create a feature branch:
   - `git checkout -b feat/short-description`
3. __Make changes__ and update documentation as needed.
4. __Open a Pull Request__ with a clear summary of what changed and why.

Please be respectful and constructive. Small, focused PRs are easier to review and merge.

---

## Setup for development

- Python 3.8+ recommended.
- Create and activate a virtual environment, then install dependencies:

```bash
python -m venv venv
# Windows
./venv/Scripts/activate
# macOS/Linux
source venv/bin/activate

pip install -r requirements.txt
```

- Copy environment template and fill credentials:

```bash
# Windows
copy .env.example .env
# macOS/Linux
cp .env.example .env
```

- Generate a GitHub Personal Access Token (PAT):
  - https://github.com/settings/personal-access-tokens → "Generate new token"
  - Scope: `read:user` is sufficient for this project.

- Run locally:

```bash
python main.py
```

---

## Style and documentation

- __Do not change branding/watermark__ (including the footer text printed by `main.py`).
- __README, .env.example, and LEARN.md__ must be updated if behavior or configuration changes.
- __Windows automation__: if you change how the batch script works, update `run_checker.bat` and the Windows notes in the README accordingly.
- Use clear, concise English in user-facing messages.

### Commit messages

Prefer [Conventional Commits](https://www.conventionalcommits.org/):
- `feat: add countdown to reset`
- `fix: handle API rate-limit error`
- `docs: clarify PAT scopes in README`
- `chore: bump dependencies`

---

## Pull Request checklist

Before submitting, please confirm:

- [ ] The change is __scoped__ and focused (1 PR = 1 purpose).
- [ ] No secrets or tokens are committed.
- [ ] README and `.env.example` updated if needed.
- [ ] Windows/macOS/Linux automation docs updated if affected.
- [ ] Tests or manual verification steps included in the PR description.
- [ ] No personal branding added; project watermark/attribution left intact.
- [ ] PAT guidance uses the correct link and minimal scope (`read:user`).

Manual verification ideas:
- Run `python main.py` with valid `.env` and confirm output.
- Test the no-contribution path (e.g., near UTC midnight) to verify countdown.

---

## Proposing larger features

For larger additions (e.g., optional mock mode, notifications, CI), propose the design first in an issue. If agreed, send a PR that:
- Implements the feature behind a configuration flag (env var where appropriate).
- Updates `.env.example` and README with concise instructions.
- Adds verification steps.

---

## Reporting issues

Please include:
- OS and Python version
- Steps to reproduce
- Relevant logs or screenshots (omit secrets)
- What you expected vs what happened

Thanks again for contributing and helping keep this project reliable and useful!
