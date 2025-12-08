# Discontinued

I have changed to [AstroNvim](https://astronvim.com/). A new repository will be coming soon.

---

# Neovim Dotfiles

My personal dotfiles for Neovim, based off of [LazyVim](https://github.com/LazyVim/LazyVim)!

## Prerequisites

- **Neovim >= 0.11** (I'm personally using Nightly)
- **LuaRocks installed alongside Lua 5.1 (for some plugins)**
- **A [Nerd Font](https://nerdfonts.com) (optional, but recommended. For icons to actually show up correctly.)**
- **[Git](https://git-scm.com) (for plugin installation)**

## Installation

<details>
  <summary>Clearing current configuration</summary>

This is important so that you don't have to worry about conflicts between
different configurations.

> [!WARNING]
>
> This will delete your current configuration(s) in: `$HOME/.config/nvim`

```bash
rm -rf $HOME/.config/nvim
```

</details>

> [!NOTE]
>
> This will mainly focus on Linux, if you use Windows,
> you'll have to figure out the equivalent commands.

Clone this repository to your `$HOME/.config/nvim` folder:

```bash
git clone https://github.com/Yoshiboi18303/nvim-dotfiles/ ~/.config/nvim
```

After it's done, open Neovim!

```bash
nvim
```

Give `lazy.nvim` a minute to install everything, and then you should be able to
close it and be greeted by the dashboard!
