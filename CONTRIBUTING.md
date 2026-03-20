# Contributing

Thank you for contributing to this repository.

## Contribution Principles

- Keep all learning content transformative and original.
- Do not copy source material verbatim into `src/`.
- Follow repository structure and folder contracts.
- Prefer small, focused pull requests.

## Content Guidelines

- Place content in the correct thinking-mode folder under `src/`.
- Use descriptive file names.
- Keep files modular and clear.
- Include practical, real-world examples.

## Quality Checks

Before opening a pull request, run the local checks:

```powershell
# Content compliance
.\tools\psscripts\Test-ContentCompliance.ps1

# Broken reference check
.\tools\psscripts\Validate-FileReferences.ps1

# Optional markdown lint and link checks
npx markdownlint-cli2 "**/*.md"
docker run --rm -v "${PWD}:/input:ro" lycheeverse/lychee --config /input/lychee.toml "/input/**/*.md"
```

## Pull Request Expectations

- Explain the change and motivation clearly.
- List affected files and reasoning behind placement.
- Confirm checks run locally and include outcomes.
- Keep the change aligned to the repository purpose.
