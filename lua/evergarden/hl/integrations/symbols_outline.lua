local M = {}

---@param theme evergarden.types.theme
---@param _ evergarden.types.config
M.get = function(theme, _)
  return {
    ['FocusedSymbol'] = { theme.syntax.call },
  }
end

return M
