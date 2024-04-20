local M = {
	"nvim-telescope/telescope.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
    cmd = "Telescope",
}

function M.config()
    local actions = require "telescope.actions"
    require("telescope").setup {
        defaults = {
            mappings = {
                i = {
                  ["<C-n>"] = actions.cycle_history_next,
                  ["<C-p>"] = actions.cycle_history_prev,
        
                  ["<C-j>"] = actions.move_selection_next,
                  ["<C-k>"] = actions.move_selection_previous,

                  ["<C-q>"] = actions.close,
                },
                n = {
                  ["<esc>"] = actions.close,
                  ["j"] = actions.move_selection_next,
                  ["k"] = actions.move_selection_previous,
                  ["q"] = actions.close,
                },
              },
        }
    }
end

return M
-- return {
--   {
--     "telescope.nvim",
--     dependencies = {
--       {
--         "debugloop/telescope-undo.nvim",
--         "nvim-telescope/telescope-fzf-native.nvim",
--         keys = { { "<leader>U", "<cmd>Telescope undo<cr>" } },
--         config = function()
--           require("telescope").load_extension("undo")
--         end,
--       },
--     },
--     keys = {
--       {
--         "<leader><Space>",
--         function()
--           require("telescope.builtin").find_files({
--           })
--         end,
--         desc = "Search in project root",
--       },
--       {
--         "<leader>fg",
--         function()
--           require("telescope.builtin").live_grep({
--           })
--         end,
--         desc = "Live grep",
--       },
--     },
-- 
--     opts = {
--       defaults = {
--         layout_strategy = "horizontal",
--         layout_config = {
--           horizontal = {
--             prompt_position = "top",
--             preview_width = 0.5,
--           },
--           width = 0.8,
--           height = 0.8,
--           preview_cutoff = 120,
--         },
--         sorting_strategy = "ascending",
--         winblend = 0,
--       },
--     },
--   },
-- }
