local M = {}

---@param theme evergarden.types.theme
---@param config evergarden.types.config
M.get = function(theme, config)
  local colors = {
    folder = theme.overlay2,
  }

  return {
    NvimTreeFolderName = { fg = colors.folder },
    NvimTreeFolderIcon = { fg = colors.folder },
    NvimTreeNormal = {
      fg = theme.subtext1,
      bg = config.transparent_background and theme.none or theme.mantle,
    },
    NvimTreeOpenedFolderName = { fg = colors.folder },
    NvimTreeEmptyFolderName = { fg = theme.overlay0 },
    NvimTreeIndentMarker = { fg = theme.overlay0 },
    NvimTreeWinSeparator = {
      fg = theme.text,
      bg = config.transparent_background and theme.none or theme.base,
    },
    NvimTreeRootFolder = { fg = theme.pink },
    NvimTreeSymlink = { fg = theme.pink },
    NvimTreeStatuslineNc = { fg = theme.mantle, bg = theme.mantle },
    NvimTreeGitDirty = { fg = theme.yellow },
    NvimTreeGitNew = { fg = theme.blue },
    NvimTreeGitDeleted = { fg = theme.red },
    NvimTreeSpecialFile = { fg = theme.pink },
    NvimTreeImageFile = { fg = theme.subtext1 },
    NvimTreeOpenedFile = { fg = theme.pink },

    -- Ventanas flotantes (borde y fondo)
    NormalFloat = {
      bg = config.transparent_background and theme.none or theme.base, -- Fondo de las ventanas flotantes
      fg = theme.subtext1, -- Texto dentro de las ventanas flotantes
    },
    FloatBorder = {
      fg = theme.text, -- Color del borde de las ventanas flotantes
    },
  }
end

return M
