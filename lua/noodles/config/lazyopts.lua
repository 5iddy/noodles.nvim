return {
  defaults = {
    lazy = true,
    version = false,
  },
  git = {
    log = { "--since=3 days ago" },
    timeout = 120,
    url_format = "https://github.com/%s.git",
    filter = true,
  },
  dev = {
    path = "~/projects",
    patterns = { "5iddy" },
    fallback = false,
  },
  install = {
    missing = true,
    colorscheme = { "nightfox", "tokyonight", "onedark" },
  },
  ui = {
    size = { width = 0.8, height = 0.8 },
    wrap = true,
    border = "none",
    icons = {
      cmd = " ",
      config = "",
      event = "",
      ft = " ",
      init = " ",
      import = " ",
      keys = " ",
      lazy = "鈴 ",
      loaded = "●",
      not_loaded = "○",
      plugin = " ",
      runtime = " ",
      source = " ",
      start = "",
      task = "✔ ",
      list = {
        "●",
        "➜",
        "★",
        "‒",
      },
    },
    browser = "firefox", ---@type string?
    throttle = 20,
  },
  diff = {
    cmd = "git",
  },
  checker = {
    enabled = false,
    concurrency = 10,
    notify = true,
    frequency = 3600 * 24, -- check for updates every day
  },
  change_detection = {
    enabled = true,
    notify = true,
  },
  performance = {
    cache = {
      enabled = true,
      path = vim.fn.stdpath("cache") .. "/lazy/cache",
      disable_events = { "UIEnter", "VimEnter", "BufReadPre" },
      ttl = 3600 * 24 * 5,
    },
    reset_packpath = true,
    rtp = {
      reset = true,
      paths = {},
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
        "health",
        "rplugin",
        "shada",
        "spellfile"
      },
    },
  },
  readme = {
    root = vim.fn.stdpath("state") .. "/lazy/readme",
    files = { "README.md", "lua/**/README.md" },
    skip_if_doc_exists = true,
  },
}
