local icon_val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = icon_val

 dashboard.section.buttons.val = {
   dashboard.button("e",  "  New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("r",  "  Recently used files", ":Telescope oldfiles <CR>"),
   dashboard.button("f",  "󰈞  Find file", ":Telescope find_files <CR>"),
   dashboard.button("t",  "󰈬  Find word", ":Telescope live_grep <CR>"),
   dashboard.button("b",  "  Jump to Bookmarks", "<leader>fm<CR>"),
   dashboard.button("s",  "  Change colorscheme", ":qa<CR>"),
   dashboard.button("s",  "  Calendar", ":Calendar<CR>"),
   dashboard.button("c",  "  Configuration", ":e ~/.config/nvim/init.vim<CR>"),
   dashboard.button("p",  "  Plugins", ":e ~/.config/nvim/lua/plugins/packer_plugins.lua<CR>"),
   dashboard.button("q",  "  Quit Neovim", ":qa<CR>"),
} --  󰷾   󰄉 󰅚

local fortune = require("alpha.fortune")
dashboard.section.footer.val = fortune()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
-- {
--   kind = {
--     Array = " ",
--     Boolean = " ",
--     Class = " ",
--     Color = " ",
--     Constant = " ",
--     Constructor = " ",
--     Copilot = " ",
--     Enum = " ",
--     EnumMember = " ",
--     Event = " ",
--     Field = " ",
--     File = " ",
--     Folder = " ",
--     Function = " ",
--     Interface = " ",
--     Key = " ",
--     Keyword = " ",
--     Method = " ",
--     Module = " ",
--     Namespace = " ",
--     Null = " ",
--     Number = " ",
--     Object = " ",
--     Operator = " ",
--     Package = " ",
--     Property = " ",
--     Reference = " ",
--     Snippet = " ",
--     String = " ",
--     Struct = " ",
--     Text = " ",
--     TypeParameter = " ",
--     Unit = " ",
--     Value = " ",
--     Variable = " ",
--   },
--   git = {
--     LineAdded = "",
--     LineModified = "",
--     LineRemoved = "",
--     FileDeleted = "",
--     FileIgnored = "◌",
--     FileRenamed = "",
--     FileStaged = "S",
--     FileUnmerged = "",
--     FileUnstaged = "",
--     FileUntracked = "U",
--     Diff = "",
--     Repo = "",
--     Octoface = "",
--     Branch = "",
--   },
--   ui = {
--     ArrowCircleDown = "",
--     ArrowCircleLeft = "",
--     ArrowCircleRight = "",
--     ArrowCircleUp = "",
--     BoldArrowDown = "",
--     BoldArrowLeft = "",
--     BoldArrowRight = "",
--     BoldArrowUp = "",
--     BoldClose = "",
--     BoldDividerLeft = "",
--     BoldDividerRight = "",
--     BoldLineLeft = "▎",
--     BookMark = "",
--     BoxChecked = "",
--     Bug = "",
--     Stacks = "",
--     Scopes = "",
--     Watches = "",
--     DebugConsole = "",
--     Calendar = "",
--     Check = "",
--     ChevronRight = ">",
--     ChevronShortDown = "",
--     ChevronShortLeft = "",
--     ChevronShortRight = "",
--     ChevronShortUp = "",
--     Circle = "",
--     Close = "",
--     CloudDownload = "",
--     Code = "",
--     Comment = "",
--     Dashboard = "",
--     DividerLeft = "",
--     DividerRight = "",
--     DoubleChevronRight = "»",
--     Ellipsis = "",
--     EmptyFolder = "",
--     EmptyFolderOpen = "",
--     File = "",
--     FileSymlink = "",
--     Files = "",
--     FindFile = "",
--     FindText = "",
--     Fire = "",
--     Folder = "",
--     FolderOpen = "",
--     FolderSymlink = "",
--     Forward = "",
--     Gear = "",
--     History = "",
--     Lightbulb = "",
--     LineLeft = "▏",
--     LineMiddle = "│",
--     List = "",
--     Lock = "",
--     NewFile = "",
--     Note = "",
--     Package = "",
--     Pencil = "",
--     Plus = "",
--     Project = "",
--     Search = "",
--     SignIn = "",
--     SignOut = "",
--     Tab = "",
--     Table = "",
--     Target = "",
--     Telescope = "",
--     Text = "",
--     Tree = "",
--     Triangle = "契",
--     TriangleShortArrowDown = "",
--     TriangleShortArrowLeft = "",
--     TriangleShortArrowRight = "",
--     TriangleShortArrowUp = "",
--   },
--   diagnostics = {
--     BoldError = "",
--     Error = "",
--     BoldWarning = "",
--     Warning = "",
--     BoldInformation = "",
--     Information = "",
--     BoldQuestion = "",
--     Question = "",
--     BoldHint = "",
--     Hint = "",
--     Debug = "",
--     Trace = "✎",
--   },
--   misc = {
--     Robot = "ﮧ",
--     Squirrel = "",
--     Tag = "",
--     Watch = "",
--     Smiley = "",
--     Package = "",
--     CircuitBoard = "",
--   },
--   dap = {
--     Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
--     Breakpoint = " ",
--     BreakpointCondition = " ",
--     BreakpointRejected = { " ", "DiagnosticError" },
--     LogPoint = ".>",
--   },
-- }
