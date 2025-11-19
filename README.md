¡Absolutamente\! Me encanta el proyecto y la energía. Vamos a transformar esta sección de tu `README` para que sea más atractiva, clara y fácil de seguir, especialmente para los usuarios de Neovim con diferentes gestores de paquetes.

Aquí tienes la versión adornada, con los pasos de instalación para VS Code, `lazy.nvim`, y `vim.pack()`:

---

# 🧡🎨 Kalidozza: A Warm VS Code & Neovim Experience

**Kalidozza** is a meticulously handcrafted color scheme designed to bring warmth, focus, and visual comfort to your coding and design environment.

Escape the harsh white light and give your eyes the rest they deserve with a palette inspired by gentle sunsets and earthy tones. **Code with care.**

## ✨ Features

- **Warm & Earthy Palette:** Carefully selected colors to reduce eye strain during long coding sessions.
- **High Contrast:** Ensures excellent readability without sacrificing visual comfort.
- **Handcrafted:** Each color token is deliberately chosen to enhance the structure and readability of your code.

### 🖼️ Demo

![](./resource/demo.png)

## ⬇️ Installation

### 🖥️ 1. VS Code

1.  Open **Extensions** (Ctrl+Shift+X or Cmd+Shift+X).
2.  Search for **"Kalidozza"**.
3.  Click **Install**.
4.  Go to **File** \> **Preferences** \> **Color Theme** (or **Code** \> **Settings** \> **Color Theme** on Mac).
5.  Select **Kalidozza 🧡🎨**.

---

### 💻 2. Neovim (Powered by Themery)

This Neovim theme is a direct adaptation from the exceptional **Themery** project, providing a seamless Kalidozza experience right in your terminal.

> **Note:** This theme is a fork built upon the robust foundation of [themery.nvim](https://github.com/tahayvr/themery.nvim). Please give them a star\!

#### **A. Using `lazy.nvim` (Recommended)**

Add the following configuration to your `plugins/kalidozza.lua` or wherever you manage your Neovim plugins:

```lua
{
  "Kalidozza-theme/Kalidozza-theme", -- Reemplaza con el nombre de tu repo si es diferente
  lazy = false, -- Load immediately
  priority = 1000,
  config = function()
    -- Set the Kalidozza colorscheme
    vim.cmd.colorscheme("kalidozza")

    -- Optional: Configure the theme further if Themery allows (e.g., specific options)
    -- require("kalidozza").setup({
    --   -- Your preferred setup options here
    -- })
  end
}
```

#### **B. Using `vim.pack()` (Built-in Plugin Management)**

If you prefer the native package manager, follow these steps:

1.  Create the following directory structure in your configuration path (`~/.config/nvim/`):

    ```bash
    mkdir -p ~/.config/nvim/pack/themes/start/
    ```

2.  Clone the repository into the `start` directory:

    ```bash
    git clone https://github.com/Kalidozza-theme/Kalidozza-theme.git ~/.config/nvim/pack/themes/start/Kalidozza-theme
    ```

3.  Finally, set the theme in your `init.lua` or `init.vim`:

    **In `init.lua`:**

    ```lua
    vim.cmd.colorscheme("kalidozza")
    ```

    **In `init.vim`:**

    ```vim
    colorscheme kalidozza
    ```

## 💖 Credits

This beautiful theme is made possible by the incredible work of the **[themery.nvim](https://github.com/tahayvr/themery.nvim)** creator. The robust and well-structured codebase was the perfect starting point for developing Kalidozza.

We encourage you to show your support and **give a star** to the original repository\!

---

¿Qué te parece? Ahora el `README` es mucho más completo y las instrucciones son claras para los usuarios de VS Code y Neovim.
