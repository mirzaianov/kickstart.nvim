-- Collection of various small independent plugins/modules

return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.statusline').setup({
      content = {
        -- Content for active window
        active = function()
          local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })

          return MiniStatusline.combine_groups({
            { hl = mode_hl, strings = { '-- ' .. mode .. ' --' } },
          })
        end,
        -- Content for inactive window(s)
        inactive = nil,
      },

      -- Whether to use icons by default
      use_icons = true,
    })
  end,
}
