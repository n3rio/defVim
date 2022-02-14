-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require "packer"

-- Add packages
return packer.startup(function()
   use "wbthomason/packer.nvim" -- packer can manage itself

   -- file explorer
   use "kyazdani42/nvim-tree.lua"

   -- indent line
   use "lukas-reineke/indent-blankline.nvim"

   -- autopair
   use "windwp/nvim-autopairs"

   -- icons
   use "kyazdani42/nvim-web-devicons"

   -- tagviewer
   use "liuchengxu/vista.vim"

   -- treesitter interface
   use "nvim-treesitter/nvim-treesitter"

   -- colorschemes
   use "tanvirtin/monokai.nvim"

   --[[ use { 'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
          -- Options (see available options below)
          vim.g.rose_pine_variant = 'base'
          -- Load colorscheme after options
          vim.cmd('colorscheme rose-pine')
        end
    } ]]

   -- use 'projekt0n/github-nvim-theme'

   use "shaunsingh/nord.nvim"

   -- LSP
   use "neovim/nvim-lspconfig"

   -- autocomplete
   use {
      "hrsh7th/nvim-cmp",
      requires = {
         "L3MON4D3/LuaSnip",
         "hrsh7th/cmp-nvim-lsp",
         "hrsh7th/cmp-path",
         "hrsh7th/cmp-buffer",
         "saadparwaiz1/cmp_luasnip",
      },
   }

   -- statusline
   use {
      "famiu/feline.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
   }

   -- git labels
   use {
      "lewis6991/gitsigns.nvim",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
         require("gitsigns").setup()
      end,
   }

   use { "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" }

   use "b3nj5m1n/kommentary"

   use {
      "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/plenary.nvim" } },
   }

   use {
      "nvim-neorg/neorg",
      config = function()
         require("neorg").setup {
            -- Tell Neorg what modules to load
            load = {
               ["core.defaults"] = {}, -- Load all the default modules
               ["core.norg.concealer"] = {}, -- Allows for use of icons
               ["core.norg.dirman"] = { -- Manage your directories with Neorg
                  config = {
                     workspaces = {
                        my_workspace = "~/home/n3rio/work/worknotes/",
                     },
                  },
               },
               ["core.integrations.telescope"] = {}, -- Enable the telescope module
            },
         }
      end,
      requires = "nvim-lua/plenary.nvim",
      requires = "nvim-neorg/neorg-telescope" -- Be sure to pull in the repo
   }
   use {
     'sindrets/diffview.nvim',
     requires = 'nvim-lua/plenary.nvim'
   }
   -- use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
end)
