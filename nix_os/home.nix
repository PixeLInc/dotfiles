{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "pixel";
  home.homeDirectory = "/home/pixel";

  programs.bash.enable = true;

  # -- path stuff --
  home.sessionPath = [
    "$HOME/.cargo/bin"
  ];
  # -- end path stuff --

  # --- packages nd stuff ---

  home.packages = [
    pkgs.htop
    pkgs.tig
    pkgs.crystal
    pkgs.shards
    pkgs.fzf
    pkgs.ripgrep
    pkgs.docker-compose
    pkgs.rustup
    pkgs.gnupg
    pkgs.pinentry-curses
  ];

  # vscode pls.
  imports = [
    "${fetchTarball "https://github.com/msteen/nixos-vscode-server/tarball/master"}/modules/vscode-server/home.nix"
  ];

  services.vscode-server.enable = true;

  # --- end packages nd stuff ---
  # --- config ---

  # gpg stuff
  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    pinentryFlavor = "curses";
  };

  programs.git = {
    enable = true;
    userName = "PixeL";
    userEmail = "no@no.no";
  };

  # neovim aliases pls.
  nixpkgs.overlays = [
    (self: super: {
      neovim = super.neovim.override {
        viAlias = true;
        vimAlias = true;
      };
    })
  ];

  # --- end config ---

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
