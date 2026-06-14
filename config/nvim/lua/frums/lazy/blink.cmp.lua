return {
{
  'saghen/blink.cmp',
  dependencies = {
    'saghen/blink.lib',
    -- optional: provides snippets for the snippet source
    'rafamadriz/friendly-snippets',
  },
  build = function()
    require('blink.cmp').build():pwait()
  end,
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'default' },
    appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
    },

  },
}
}
