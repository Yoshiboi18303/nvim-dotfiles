-- Comment out what you don't need,
-- but this should have enough for basic PHP development
-- with Laravel.

-- The lang.php extra should've come with basic completions and stuff, this is meant for Laravel.
return {
  require("plugins.php.laravel"),
  -- Actually good formatting
  {
    "stevearc/conform.nvim",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      formatters_by_ft = {
        php = { "php-cs-fixer" },
      },
      formatters = {
        ["php-cs-fixer"] = {
          command = "php-cs-fixer",
          args = {
            "fix",
            "--rules=@PSR12",
            "$FILENAME",
          },
          stdin = false,
        },
      },
      notify_on_error = true,
    },
  },
}
