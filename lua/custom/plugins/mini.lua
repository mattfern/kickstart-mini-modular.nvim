-- Mini.nvim core modules configuration
return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    -- Basic Neovim configuration
    require('mini.basics').setup({
      options = {
        -- Enable basic options that work well with other plugins
        basic = true,
        -- Enable extra UI features
        extra_ui = true,
        -- Enable mappings
        mappings = true,
        -- Enable window management mappings
        windows = true,
      },
    })

    -- Auto-pairing brackets and quotes
    require('mini.pairs').setup({
      -- Characters to be paired
      mappings = {
        ['('] = { action = 'open', pair = '()', neigh_pattern = '[^\\].' },
        ['['] = { action = 'open', pair = '[]', neigh_pattern = '[^\\].' },
        ['{'] = { action = 'open', pair = '{}', neigh_pattern = '[^\\].' },
        [')'] = { action = 'close', pair = '()', neigh_pattern = '[^\\].' },
        [']'] = { action = 'close', pair = '[]', neigh_pattern = '[^\\].' },
        ['}'] = { action = 'close', pair = '{}', neigh_pattern = '[^\\].' },
        ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '[^\\].', register = { cr = false } },
        ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '[^%a\\].', register = { cr = false } },
        ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '[^\\].', register = { cr = false } },
      },
    })

    -- Enhanced surround operations
    require('mini.surround').setup({
      -- Module mappings. Use `''` (empty string) to disable one.
      mappings = {
        add = 'sa', -- Add surrounding in Normal and Visual modes
        delete = 'sd', -- Delete surrounding
        find = 'sf', -- Find surrounding (to the right)
        find_left = 'sF', -- Find surrounding (to the left)
        highlight = 'sh', -- Highlight surrounding
        replace = 'sr', -- Replace surrounding
        update_n_lines = 'sn', -- Update `n_lines`
      },
      -- Number of lines within which surrounding is searched
      n_lines = 20,
      -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
      highlight_duration = 500,
    })

    -- Code commenting
    require('mini.comment').setup({
      -- Options which control module behavior
      options = {
        -- Whether to ignore blank lines
        ignore_blank_line = false,
        -- Whether to recognize as comment only lines without indent
        start_of_line = false,
        -- Whether to ensure single space pad for comment parts
        pad_comment_parts = true,
      },

      -- Module mappings. Use `''` (empty string) to disable one.
      mappings = {
        -- Toggle comment (like `gcip` - comment inner paragraph) for both
        -- Normal and Visual modes
        comment = 'gc',
        -- Toggle comment on current line
        comment_line = 'gcc',
        -- Define 'comment' textobject (like `dgc` - delete whole comment block)
        textobject = 'gc',
      },
    })
  end,
}
