{
    pkgs ? import <nixpkgs> {}
}:
pkgs.mkShell {
    nativeBuildInputs = with pkgs; [ gcc gnumake cmake extra-cmake-modules pkg-config ];
    buildInputs = with pkgs; [
        xorgproto libxi libxrandr libxcursor libxinerama libxkbcommon
        wayland wayland-protocols wayland-scanner
    ];
}
