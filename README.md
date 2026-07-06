# my-simple-custom-sway

A clean, minimal, **Sway** desktop configuration featuring a lightweight tiling workflow, a transparent **Waybar** status bar, a black & white **Rofi** launcher, and a translucent **Kitty** terminal.

## Overview

This repository contains my personal dotfiles for a simple and distraction-free Wayland desktop built around [Sway](https://swaywm.org/). It focuses on:

- Lightweight
- Minimal, gap-based tiling layout
- Transparent, rounded, capsule-style Waybar modules
- A monochrome Rofi launcher with app/run/window mode switching
- A translucent, blurred Kitty terminal
- Sensible vim-style keybindings

## Components

| Component | Description |
|-----------|--------------|
| **Sway** | Window manager / Wayland compositor configuration |
| **Waybar** | Status bar with workspaces, clock, tray, network, audio, and notifications |
| **Rofi** | Application launcher / window switcher with a black & white theme |
| **Kitty** | GPU-accelerated terminal emulator with transparency and blur |

## Preview

> Add your own screenshots here, for example:
>
> ```md
> ![Desktop Screenshot](assets/screenshot.png)
> ```

## Requirements

Make sure the following packages are installed on your system:

- `sway`
- `waybar`
- `rofi`
- `kitty`
- `autotiling`
- `swaync` (notification daemon)
- `wlogout`
- `grim` + `slurp` (screenshots)
- `pavucontrol` / `wpctl` (audio control)
- `jq` (used in workspace scroll bindings)
- Nerd Font (e.g. `JetBrainsMono Nerd Font`) and `Figtree` font for Rofi

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/<your-username>/my-simple-custom-sway.git
   cd my-simple-custom-sway
   ```

2. Copy or symlink the configuration files into your `~/.config` directory:

   ```bash
   mkdir -p ~/.config/{sway,waybar,rofi,kitty}

   cp -r sway/*    ~/.config/sway/
   cp -r waybar/*  ~/.config/waybar/
   cp -r rofi/*    ~/.config/rofi/
   cp -r kitty/*   ~/.config/kitty/
   ```

   Or, if you prefer symlinks (recommended, so future updates via `git pull` apply automatically):

   ```bash
   ln -sf "$(pwd)/sway"   ~/.config/sway
   ln -sf "$(pwd)/waybar" ~/.config/waybar
   ln -sf "$(pwd)/rofi"   ~/.config/rofi
   ln -sf "$(pwd)/kitty"  ~/.config/kitty
   ```

3. Update the wallpaper path in the Sway config (`output * bg ...`) to point to your own wallpaper.

4. Reload Sway:

   ```bash
   swaymsg reload
   ```

##  Key Bindings (Sway)

The modifier key is set to `Mod4` (Super/Windows key).

| Shortcut | Action |
|----------|--------|
| `Mod + Return` | Open terminal (Kitty) |
| `Mod + Q` | Open file manager (Yazi, floating) |
| `Mod + R` | Open Rofi launcher |
| `Mod + C` | Kill focused window |
| `Mod + Shift + C` | Reload Sway config |
| `Mod + Shift + E` | Exit Sway |
| `Mod + H/J/K/L` or arrow keys | Move focus |
| `Mod + Shift + H/J/K/L` or arrow keys | Move focused window |
| `Mod + 1..0` | Switch workspace |
| `Mod + Shift + 1..0` | Move window to workspace |
| `Mod + B` / `Mod + V` | Split horizontal / vertical |
| `Mod + S` / `Mod + W` / `Mod + E` | Stacking / Tabbed / Toggle split layout |
| `Mod + F` | Fullscreen toggle |
| `Mod + Shift + Space` | Floating toggle |
| `Mod + Space` | Toggle focus tiling/floating |
| `Mod + A` | Focus parent container |
| `Mod + Shift + P` | Take a region screenshot |
| `Mod + Scroll Wheel` | Switch workspaces |

## Theming Notes

- **Kitty**: `background_opacity 0.85`, `background_blur 1`, font size `11.0`, and custom window padding for a clean look.
- **Rofi**: Fully monochrome (black background, white text/highlights), rounded corners, and a bottom mode-switcher for `drun`, `run`, and `window` modes.
- **Waybar**: Transparent bar with capsule-style modules using a Catppuccin-inspired accent palette on a dark, semi-transparent background.

## Suggested Repository Structure

```
simple-custom-sway/
├── sway/
│   └── config
├── waybar/
│   ├── config.jsonc
│   └── style.css
├── rofi/
│   └── config.rasi
├── kitty/
│   └── kitty.conf
└── README.md
```

## Credits

- [Sway](https://swaywm.org/)
- [Waybar](https://github.com/Alexays/Waybar)
- [Rofi](https://github.com/davatorium/rofi)
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Papirus Icon Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- [JetBrains Mono Nerd Font](https://www.nerdfonts.com/)

## License

This configuration is free to use and modify. Feel free to fork and adapt it to your own workflow.
