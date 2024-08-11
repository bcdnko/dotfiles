-- You can also add or configure plugins by creating files in this `plugins/` folder

---@type LazySpec
return {

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "                                      |",
        "                                      |",
        "                                      |",
        "                                    .-'-.",
        "                                   ' ___ '",
        "                         ---------'  .-.  '---------",
        "     \\____________________________'  '-'  '_____________________________/",
        "          ''''''-|---|--/    \\==][^',_m_,'^][==/    \\--|---|-''''''",
        "                        \\    /  ||/   H   \\||  \\    /",
        "                         '--'   OO   O|O   OO   '--'",
        -- (c) Jon Hyatt

        "",

        "  █████████  █████   ████ █████ █████    █████   █████ █████ ██████   ██████",
        " ███░░░░░███░░███   ███░ ░░███ ░░███    ░░███   ░░███ ░░███ ░░██████ ██████ ",
        "░███    ░░░  ░███  ███    ░░███ ███      ░███    ░███  ░███  ░███░█████░███ ",
        "░░█████████  ░███████      ░░█████       ░███    ░███  ░███  ░███░░███ ░███ ",
        " ░░░░░░░░███ ░███░░███      ░░███        ░░███   ███   ░███  ░███ ░░░  ░███ ",
        " ███    ░███ ░███ ░░███      ░███         ░░░█████░    ░███  ░███      ░███ ",
        "░░█████████  █████ ░░████    █████          ░░███      █████ █████     █████",
        " ░░░░░░░░░  ░░░░░   ░░░░    ░░░░░            ░░░      ░░░░░ ░░░░░     ░░░░░ ",
      }
      return opts
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.window.width = 45

      opts.filesystem.filtered_items.visible = true
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opts) opts.base = "HEAD" end,
  },
}
