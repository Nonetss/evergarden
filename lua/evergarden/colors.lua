---@type evergarden.types.colors
_G.evergarden_colors = {
  text = '#e5e9f0', -- Texto principal más claro para mejor legibilidad
  subtext1 = '#d8dee9', -- Subtexto ligeramente más oscuro
  subtext0 = '#b9c1cd', -- Subtexto adicional menos prominente
  overlay2 = '#7e8b96', -- Comentarios oscuros mejorados
  overlay1 = '#6c7985', -- Subtexto más tenue
  overlay0 = '#596673', -- Resaltado suave
  surface2 = '#4d4d48', -- Fondo menos prominente (sin cambios)
  surface1 = '#393936', -- Fondo intermedio (sin cambios)
  surface0 = '#2d353b', -- Fondo principal (sin cambios)
  base = '#2d353b', -- Base color (sin cambios)
  mantle = '#1f2528', -- Fondo más oscuro (sin cambios)
  crust = '#13191c', -- Fondo profundo (sin cambios)
  softbase = '#2b3538', -- Fondo secundario suave (sin cambios)
  red = '#e88388', -- Rojo ligeramente más brillante
  orange = '#e6a57e', -- Naranja con mejor contraste
  yellow = '#e5c07b', -- Amarillo más cálido
  green = '#a3be8c', -- Verde ajustado para mejor contraste
  aqua = '#88c0d0', -- Aqua/Turquesa más vibrante
  skye = '#81a1c1', -- Cyan más definido
  blue = '#5e81ac', -- Azul más profundo
  purple = '#b48ead', -- Púrpura ligeramente más claro
  pink = '#d08770', -- Rosa ajustado
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
