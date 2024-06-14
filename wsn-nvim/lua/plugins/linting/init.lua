-- -- Setup autocmd to trigger linting
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })
--
return {
  'mfussenegger/nvim-lint',
  config = function()
    require("lint").linters_by_ft = {
      lua = { "luacheck" }
    }
  end,
}
