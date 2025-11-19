# 🧡🎨 Kalidozza: A Warm Neovim Experience

**Kalidozza** is a meticulously handcrafted color scheme designed to bring warmth, focus, and visual comfort to your coding and design environment.

Escape the harsh white light and give your eyes the rest they deserve with a palette inspired by gentle sunsets and earthy tones. **Code with care.**

## ✨ Features

- **Warm & Earthy Palette:** Carefully selected colors to reduce eye strain during long coding sessions.
- **High Contrast:** Ensures excellent readability without sacrificing visual comfort.
- **Handcrafted:** Each color token is deliberately chosen to enhance the structure and readability of your code.

### 🖼️ Demo

![](./resource/demo.png)

## ⬇️ Installation

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
    vim.cmd.colorscheme("kalidozza") -- this is not Recommended, set it via lazy.lua

    -- Optional: Configure the theme further if Themery allows (e.g., specific options)
    -- require("kalidozza").setup({
    --   -- Your preferred setup options here
    -- })
  end
}
```

##### **B. Using `vim.pack()` (Built-in Plugin Management)**

If you are using the modern built-in plugin manager (`vim.pack`), setting up Kalidozza is simple.

Add the following lines to your `init.lua`:

```lua
-- 1. Add Kalidozza to be managed by vim.pack
vim.pack.add({
  'https://github.com/Kalidozza-theme/Kalidozza-theme',
})
vim.cmd.colorscheme("kalidozza")
```

---

## 💖 Credits

This beautiful theme is made possible by the incredible work of the **[themery.nvim](https://github.com/tahayvr/themery.nvim)** creator. The robust and well-structured codebase was the perfect starting point for developing Kalidozza.

We encourage you to show your support and **give a star** to the original repository\!

### How to support my work

## 💖 Support the Kalidozza Project

_Consideration_:Developing and maintaining high-quality, eye-friendly themes like Kalidozza requires dedicated time and resources. If you appreciate the comfort and care this color scheme brings to your workflow, you can support its continued development and maintenance.

You can easily support my work via Liberapay. Your donation directly fuels future updates and new features!

<a href="https://liberapay.com/afrolino02/">
  <img src="./resource/liberapay.svg" alt="Support Kalidozza on Liberapay" width="80"/>
</a>

# 📜 Licensing

Kalidozza is an open-source project distributed under the GNU General Public License (GPL).
This means you are free to use, modify, and distribute this software under the terms of the GPL.
For more details, please see the LICENSE file included in the repository.
