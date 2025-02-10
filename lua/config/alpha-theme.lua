local header = {
  type = "text",
  val = {
    [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
    [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
    [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
    [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
    [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
    [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]]
  },
  opts = {
    position = "center",
    hl = "Boolean",
  },
}

local footer = {
  type = "text",
  val = "BOOP THE SNOOT! 🐶👃",
  opts = {
    position = "center",
    hl = "Type",
  },
}

local top_margin = {
  type = "padding",
  val = 7,
}

local spacer = {
  type = "padding",
  val = 5,
}

local buttons = {
  type = "group",
  opts = { spacing = 1 },
}

return {
  buttons = buttons,
  header = header,
  footer = footer,
  spacer = spacer,
  top_margin = top_margin
}
