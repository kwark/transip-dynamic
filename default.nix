with import <nixpkgs>{};

buildGoPackage rec {
  name = "transip-dynamic";

  goPackagePath = "github.com/kwark/transip-dynamic";

  src = ./.;
  
  goDeps = ./deps.nix;

  meta = with stdenv.lib; {
    description = "Convert `Gopkg.lock` files from golang dep into `deps.nix`";
    license = licenses.bsd3;
    homepage = https://github.com/kwark/transip-dynamic;
  };
}
