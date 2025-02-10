--- @param sc string
--- @param txt string
--- @param keybind string
--- @param hl string
local function buttons(sc, txt, keybind, hl)

  local opts = {
    position = "center",
    shortcut = sc,
    cursor = 0,
    width = 50,
    align_shortcut = "right",
    hl_shortcut = "Keyword",
    hl = hl,
    keymap = { "n", sc, keybind, { noremap = true, silent = true, nowait = true } }
  }

  local function on_press()
    local key = vim.api.nvim_replace_termcodes(keybind, true, false, true)
    vim.api.nvim_feedkeys(key, "n", false)
  end

  return {
    type = "button",
    val = txt,
    on_press = on_press,
    opts = opts,
  }
end

return buttons
