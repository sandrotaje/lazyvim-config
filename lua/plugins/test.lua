return {
  { "marilari88/neotest-vitest" },
  {
    "nvim-neotest/neotest",
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-vitest")({
            cwd = function(path)
              return path:match("(.*/packages/[^/]+)")
            end,
          }),
        },
      })
    end,
  },
}
