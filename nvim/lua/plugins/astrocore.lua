-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = true, -- sets vim.opt.spell
        spelloptions = "camel",
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap

        keymap = "russian-jcukenwin",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },

    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- Buffers
        ["<leader><tab>"] = { "<C-^>", desc = "Alternative buffer" },
        ["<leader>ta"] = { ":tabnew<cr>", desc = "Tab new" },
        ["<leader>tq"] = { ":tabclose<cr>", desc = "Tab close" },
        ["<leader>to"] = { ":tabonly<cr>", desc = "Tab only" },
        ["<leader>tc"] = { ":tab split<cr>", desc = "Edit current file in a new tab" },

        -- Tabs
        ["<leader>1"] = { "1gt" },
        ["<leader>2"] = { "2gt" },
        ["<leader>3"] = { "3gt" },
        ["<leader>4"] = { "4gt" },
        ["<leader>5"] = { "5gt" },
        ["<leader>6"] = { "6gt" },
        ["<leader>7"] = { "7gt" },
        ["<leader>8"] = { "8gt" },
        ["<leader>9"] = { "9gt" },

        -- Windows
        ["<leader>_"] = { "<C-w>s<C-w>J<C-w>15_" },
        -- ["<leader>w"] = { "<C-w>" },
        -- ["<leader>url"] = { ":%s/&/\r&/g<cr>" },

        -- Utils
        ["<leader><leader>gc"] = { "gg/constructor<cr>zz" },
      },
    },
  },
}
