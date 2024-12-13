---@type evergarden.types.colors
_G.evergarden_colors = {
  text = '#d3c6aa', -- Foreground color
  subtext1 = '#b9b9ab', -- Ligeramente más claro
  subtext0 = '#a0a290', -- Comentarios claros
  overlay2 = '#8c8c7e', -- Comentarios oscuros
  overlay1 = '#76766c', -- Línea de subtexto más oscuro
  overlay0 = '#616159', -- Resaltado débil
  surface2 = '#4d4d48', -- Fondo menos prominente
  surface1 = '#393936', -- Fondo intermedio
  surface0 = '#2d353b', -- Background
  base = '#2d353b', -- Base color
  mantle = '#1f2528', -- Fondo más oscuro
  crust = '#13191c', -- Fondo profundo
  softbase = '#2b3538', -- Fondo secundario suave
  red = '#e67e80', -- Rojo
  orange = '#e69875', -- Naranja
  yellow = '#dbbc7f', -- Amarillo
  green = '#a7c080', -- Verde
  aqua = '#83c092', -- Aqua/Turquesa
  skye = '#7fbbb3', -- Cyan
  blue = '#9bb5cf', -- Azul
  purple = '#d699b6', -- Púrpura
  pink = '#e67e99', -- Rosa
}

local M = {}

function M.colors()
  return _G.evergarden_colors
end

---@param config evergarden.types.config?
---@return evergarden.types.theme
function M.setup(config)
  ---@type evergarden.types.config
  config = vim.tbl_extend('force', _G.evergarden_config, config or {})
  return require('evergarden.theme').setup(M.colors(), config)
end

return M
