rec {
  description = "Box is a nixos container management tool";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default =
      with import nixpkgs { system = "x86_64-linux"; };
      buildGoModule {
        pname = "box";
        version = "0.0.1";

        src = self;
        vendorHash = "sha256-m5mBubfbXXqXKsygF5j7cHEY+bXhAMcXUts5KBKoLzM=";

        meta = {
          description = description;
          license = lib.licenses.asl20;
          maintainers = with lib.maintainers; [ jras ];
        };
      };
  };
}
