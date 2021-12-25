-- general
lvim.log.level = "warn"
lvim.format_on_save = true
vim.g.tokyonight_style = "night"

lvim.lsp.automatic_servers_installation = true

-- Set colorscheme
lvim.colorscheme = "tokyonight"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- add your own keymapping
lvim.keys.normal_mode = {
    ["<C-s>"] = ":w<cr>",
    -- switching buffer tabs
    ["<Tab>"] = ":bnext<CR>",
    ["<S-Tab>"] = ":bprevious<CR>",
    -- switching windows
    ["<C-h>"] = "<C-w>h",
    ["<C-j>"] = "<C-w>j",
    ["<C-k>"] = "<C-w>k",
    ["<C-l>"] = "<C-w>l",
}

lvim.builtin.which_key.mappings["t"] =  {
  name = "Telescope",
  -- live grep only works with ripgrep
  f = {"<cmd>Telescope live_grep<cr>", "Live grep"},
  g = {"<cmd> Telescope find_files hidden=true<cr>", "Search Files excluding ignore"} -- Performs file search, which excludes ignore files (.gitignore, .dockerignore, etc.)
}
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.hide_dotfiles = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.plugins = {
  {"lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        char = "⋅",
        -- space_char_blankline = " ",
        -- show_end_of_line = true,
      }
    end,
  },
  {"folke/tokyonight.nvim"},
  {"norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
}

-- set relative line number
vim.opt.relativenumber = true

vim.opt.listchars = {
  space = "⋅",
}
