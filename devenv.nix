{ ... }:

{
  languages.go.enable = true;

  pre-commit.hooks.gofmt.enable = true;
  pre-commit.hooks.govet.enable = true;
  pre-commit.hooks.golangci-lint.enable = true;
}
