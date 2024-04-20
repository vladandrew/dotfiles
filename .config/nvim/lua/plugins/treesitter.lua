local M = {
    "nvim-treesitter/nvim-treesitter",
    build = "TSUpdate",
	lazy = false,   -- We want to see the highlighting since the start, so false
}

function M.config()
    require "nvim-treesitter.configs".setup {
        ensure_installed = { "c", "lua", "rust" , "bash", "python", "cpp" },
        sync_install = true,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    }
end

return M

--return {
--  -- { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
--
--  {
--    "nvim-treesitter/nvim-treesitter",
--    version = false, -- last release is way too old and doesn't work on Windows
--    build = ":TSUpdate",
--    init = function(plugin)
--      -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
--      -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
--      -- no longer trigger the **nvim-treesitter** module to be loaded in time.
--      -- Luckily, the only things that those plugins need are the custom queries, which we make available
--      -- during startup.
--      require("lazy.core.loader").add_to_rtp(plugin)
--      require("nvim-treesitter.query_predicates")
--    end,
--  },
--}
