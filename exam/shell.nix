with import <nixpkgs> {};

mkShell {
  buildInputs = [ stdenv.cc.cc.lib ];

  shellHook = ''
    export LD_LIBRARY_PATH=${stdenv.cc.cc.lib}/lib:$LD_LIBRARY_PATH
    export PATH="/etc/profiles/per-user/gkapfham/bin:$HOME/.local/pipx/bin:$HOME/.fzf/bin:$HOME/.local/bin:$HOME/bin:$HOME/.npm-global/bin::$HOME/.cargo/bin:$HOME/.gocode/bin:$HOME/.poetry/bin:/run/wrappers/bin:/home/gkapfham/.nix-profile/bin:/nix/profile/bin:/home/gkapfham/.local/state/nix/profile/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin:/usr/bin/vendor_perl/:/usr/lib/lightdm/lightdm:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:"
  '';
}
