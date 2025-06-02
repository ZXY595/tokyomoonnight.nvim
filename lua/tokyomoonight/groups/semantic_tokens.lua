local Util = require("tokyomoonight.util")

local M = {}

---@type tokyomoonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    ["@lsp.type.boolean"]                      = "@boolean",
    ["@lsp.type.builtinType"]                  = "@type.builtin",
    ["@lsp.type.comment"]                      = "@comment",
    ["@lsp.type.decorator"]                    = "@attribute",
    ["@lsp.type.deriveHelper"]                 = "@attribute",
    ["@lsp.type.enum"]                         = "@type",
    ["@lsp.type.enum.defaultLibrary"]          = "@type",
    ["@lsp.type.enumMember"]                   = "@constant",
    ["@lsp.type.enumMember.defaultLibrary"]    = "@constant.builtin",
    ["@lsp.type.escapeSequence"]               = "@string.escape",
    ["@lsp.type.formatSpecifier"]              = "@markup.list",
    ["@lsp.type.generic"]                      = "@variable",
    ["@lsp.type.interface"]                    = { fg = c.blue6, underdouble = true, bold = true },
    ["@lsp.type.keyword"]                      = "@keyword",
    ["@lsp.type.lifetime"]                     = "@keyword.storage",
    ["@lsp.type.namespace"]                    = "@module",
    ["@lsp.type.namespace.python"]             = "@variable",
    ["@lsp.type.number"]                       = "@number",
    ["@lsp.type.operator"]                     = "@operator",
    ["@lsp.type.parameter"]                    = "@variable.parameter",
    ["@lsp.type.property"]                     = "@property",
    ["@lsp.type.selfKeyword"]                  = "@keyword",
    ["@lsp.type.selfTypeKeyword"]              = "@keyword",
    ["@lsp.type.string"]                       = "@string",
    ["@lsp.type.typeAlias"]                    = "@type.definition",
    ["@lsp.type.unresolvedReference"]          = { undercurl = true, sp = c.error },
    ["@lsp.type.variable"]                     = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.enum"]                      = { underdashed = true },
    ["@lsp.typemod.enumMember"]                = { underdashed = true },
    ["@lsp.typemod.enum.defaultlibrary"]       = { underdashed = true },
    ["@lsp.typemod.enumMember.defaultlibrary"] = { underdashed = true },
    ["@lsp.typemod.function.defaultLibrary"]   = "@function.builtin",
    ["@lsp.typemod.keyword.async"]             = "@keyword.coroutine",
    ["@lsp.typemod.keyword.injected"]          = "@keyword",
    ["@lsp.typemod.keyword.unsafe"]            = { fg = c.error }, -- unsafe
    ["@lsp.typemod.macro.defaultLibrary"]      = "@function.builtin",
    ["@lsp.typemod.method.defaultLibrary"]     = "@function.builtin",
    ["@lsp.typemod.operator.injected"]         = "@operator",
    ["@lsp.typemod.string.injected"]           = "@string",
    ["@lsp.typemod.struct.defaultLibrary"]     = "@type",
    ["@lsp.typemod.class.defaultLibrary"]      = "@type",
    -- ["@lsp.typemod.type.defaultLibrary"]       = { fg = Util.blend_bg(c.blue1, 0.8) },
    -- ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = Util.blend_bg(c.blue1, 0.8) },
    ["@lsp.typemod.variable.callable"]         = "@function",
    ["@lsp.typemod.variable.defaultLibrary"]   = "@variable.builtin",
    ["@lsp.typemod.variable.injected"]         = "@variable",
    ["@lsp.typemod.variable.static"]           = "@constant",
    ["@lsp.typemod.variable.constant"]         = "@constant",
    ["@lsp.typemod.variable.mutable"]          = { fg = c.blue3, underline = true },
    ["@lsp.typemod.method.mutable"]            = { fg = c.blue3, underline = true },
    ["@lsp.mod.deprecated"]                    = { strikethrough = true },

    -- ["@type.qualifier.rust"] = { underline = true },
    -- ["@lsp.typemod.typealias.declaration.rust"] = { underline = true }, -- type alias lvalue
    -- ["@lsp.typemod.parameter.declaration.rust"] = { fg = c.pink },
    -- ["@lsp.mod.async"] = { italic = true }
  }
end

return M
