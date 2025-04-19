{
  description = "Box is a nixos container management tool";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.default =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "box";
        src = self;
        buildPhase = "go build .";        
        installPhase = "mkdir -p $out/bin; install -t $out/bin box";
      };
  };
}
