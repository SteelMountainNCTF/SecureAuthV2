{
  description = "custom system libs to hack on Secure Auth v2";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.09";
  };
  outputs = { self, nixpkgs }:
    let custom-glibc = nixpkgs.legacyPackages.x86_64-linux.glibc.overrideAttrs (old: {
      patches = old.patches ++ [./custom-glibc.patch];
      postPatch = old.postPatch + ''
        rm sysdeps/x86_64/multiarch/strncmp-{avx2,sse2,sse4_2,ssse3}.S sysdeps/x86_64/strncmp.S
      '';
    });
    in {
      devShell.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.mkShell {
        buildInputs = [ custom-glibc ];
        shellHook = ''
          export LD_LIBRARY_PATH="${custom-glibc}/lib"
        '';
      };
      packages.x86_64-linux.glibc = custom-glibc;
    };
}
