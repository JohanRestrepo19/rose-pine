local palette = require('rose-pine.palette')
local config = require('rose-pine.config')
local util = require('rose-pine.util')

local group = config.colors

local maybe_italic = 'italic'
if config.disable_italics == true then
	maybe_italic = nil
end

local background = palette.base
if config.disable_background then
	background = palette.none
end

local float_background = palette.surface
if config.disable_float_background then
	float_background = palette.none
end

local inactive_background = palette.none
if config.inactive_background then
	inactive_background = util.blend('#000000', palette.base, palette.opacity)
end

local vert_split_background = palette.none
if config.bold_vertical_split_line then
	vert_split_background = palette.overlay
end

local theme = {
	ColorColumn = { bg = palette.highlight_high },
	Conceal = { bg = palette.none },
	-- Cursor = {},
	CursorColumn = { bg = group.border },
	-- CursorIM = {},
	CursorLine = { bg = palette.highlight_low },
	CursorLineNr = { fg = palette.text },
	DarkenedPanel = { bg = palette.surface },
	DarkenedStatusline = { bg = palette.surface },
	DiffAdd = { bg = util.blend(group.git_add, palette.base, 0.5) },
	DiffChange = { bg = palette.overlay },
	DiffDelete = { bg = util.blend(group.git_delete, palette.base, 0.5) },
	DiffText = { bg = util.blend(group.git_text, palette.base, 0.5) },
	diffAdded = { link = 'DiffAdd' },
	diffChanged = { link = 'DiffChange' },
	diffRemoved = { link = 'DiffDelete' },
	Directory = { fg = palette.foam, bg = palette.none },
	-- EndOfBuffer = {},
	ErrorMsg = { fg = palette.love, style = 'bold' },
	FloatBorder = { fg = group.border },
	FoldColumn = { fg = palette.muted },
	Folded = { fg = palette.text, bg = palette.surface },
	IncSearch = { bg = palette.highlight_high },
	LineNr = { fg = palette.muted },
	MatchParen = { fg = palette.text, bg = palette.highlight_med },
	ModeMsg = { fg = palette.subtle },
	MoreMsg = { fg = palette.iris },
	NonText = { fg = palette.muted },
	Normal = { fg = palette.text, bg = background },
	NormalNC = { fg = palette.text, bg = inactive_background },
	NormalFloat = { fg = palette.text, bg = float_background },
	Pmenu = { fg = palette.subtle, bg = float_background },
	PmenuSbar = { bg = palette.overlay },
	PmenuSel = { fg = palette.text, bg = palette.overlay },
	PmenuThumb = { bg = palette.muted },
	Question = { fg = palette.gold },
	-- QuickFixLine = {},
	Search = { bg = palette.highlight_med },
	SpecialKey = { fg = palette.foam },
	SpellBad = { sp = palette.love, style = 'undercurl' },
	SpellCap = { sp = palette.subtle, style = 'undercurl' },
	SpellLocal = { sp = palette.subtle, style = 'undercurl' },
	SpellRare = { sp = palette.subtle, style = 'undercurl' },
	SignColumn = { fg = palette.text, bg = background },
	StatusLine = { fg = palette.subtle, bg = palette.surface },
	StatusLineNC = { fg = palette.muted, bg = palette.base },
	-- StatusLineTerm = {},
	-- StatusLineTermNC = {},
	TabLine = { fg = palette.subtle, bg = palette.overlay },
	TabLineFill = { bg = palette.surface },
	TabLineSel = { fg = palette.text, bg = palette.muted },
	Title = { fg = palette.text },
	VertSplit = { fg = palette.overlay, bg = vert_split_background },
	Visual = { bg = palette.highlight_med },
	-- VisualNOS = {},
	WarningMsg = { fg = palette.gold },
	-- Whitespace = {},
	-- WildMenu = {},

	Boolean = { fg = palette.gold },
	Character = { fg = palette.gold },
	Comment = { fg = group.comment, style = maybe_italic },
	Conditional = { fg = palette.pine },
	Constant = { fg = palette.gold },
	Debug = { fg = palette.rose },
	Define = { fg = palette.iris },
	Delimiter = { fg = palette.subtle },
	Error = { fg = palette.love },
	Exception = { fg = palette.pine },
	Float = { fg = palette.gold },
	Function = { fg = palette.rose },
	Identifier = { fg = palette.rose },
	-- Ignore = {},
	Include = { fg = palette.iris },
	Keyword = { fg = palette.pine },
	Label = { fg = palette.foam },
	Macro = { fg = palette.iris },
	Number = { fg = palette.gold },
	Operator = { fg = palette.subtle },
	PreCondit = { fg = palette.iris },
	PreProc = { fg = palette.iris },
	Repeat = { fg = palette.pine },
	Special = { fg = palette.rose },
	SpecialChar = { fg = palette.rose },
	SpecialComment = { fg = palette.iris },
	Statement = { fg = palette.pine },
	StorageClass = { fg = palette.foam },
	String = { fg = palette.gold },
	Structure = { fg = palette.foam },
	Tag = { fg = palette.rose },
	Todo = { fg = palette.iris },
	Type = { fg = palette.foam },
	Typedef = { fg = palette.foam },
	Underlined = { fg = palette.foam, style = 'underline' },

	htmlArg = { fg = palette.iris },
	htmlBold = { fg = palette.text, style = 'bold' },
	htmlEndTag = { fg = palette.subtle },
	htmlH1 = { fg = group.headings.h1, style = 'bold' },
	htmlH2 = { fg = group.headings.h2, style = 'bold' },
	htmlH3 = { fg = group.headings.h3, style = 'bold' },
	htmlH4 = { fg = group.headings.h4, style = 'bold' },
	htmlH5 = { fg = group.headings.h5, style = 'bold' },
	htmlItalic = { fg = palette.text, style = maybe_italic },
	htmlLink = { fg = group.link },
	htmlTag = { fg = palette.subtle },
	htmlTagN = { fg = palette.text },
	htmlTagName = { fg = palette.foam },

	markdownH1 = { fg = group.headings.h1, style = 'bold' },
	markdownH1Delimiter = { fg = group.headings.h1 },
	markdownH2 = { fg = group.headings.h2, style = 'bold' },
	markdownH2Delimiter = { fg = group.headings.h2 },
	markdownH3 = { fg = group.headings.h3, style = 'bold' },
	markdownH3Delimiter = { fg = group.headings.h3 },
	markdownH4 = { fg = group.headings.h4, style = 'bold' },
	markdownH4Delimiter = { fg = group.headings.h4 },
	markdownH5 = { fg = group.headings.h5, style = 'bold' },
	markdownH5Delimiter = { fg = group.headings.h5 },
	markdownH6 = { fg = group.headings.h6, style = 'bold' },
	markdownH6Delimiter = { fg = group.headings.h6 },
	markdownDelimiter = { fg = palette.subtle },
	markdownLinkText = { fg = group.link, style = 'underline' },
	markdownUrl = { fg = palette.iris, style = 'underline' },
	mkdCode = { fg = palette.foam, style = maybe_italic },
	mkdCodeDelimiter = { fg = palette.rose },
	mkdCodeEnd = { fg = palette.foam },
	mkdCodeStart = { fg = palette.foam },
	mkdFootnotes = { fg = palette.foam },
	mkdID = { fg = palette.foam, style = 'underline' },
	mkdInlineURL = { fg = group.link, style = 'underline' },
	mkdLink = { fg = group.link, style = 'underline' },
	mkdLinkDef = { fg = group.link, style = 'underline' },
	mkdListItemLine = { fg = palette.text },
	mkdRule = { fg = palette.subtle },
	mkdURL = { fg = palette.foam, style = 'underline' },

	-- Fix background mismatch if user sets custom float background
	-- In LSP hover float: (paramater)
	--                     ^         ^
	typescriptParens = { bg = palette.none },

	DiagnosticHint = { fg = group.hint },
	DiagnosticInfo = { fg = group.info },
	DiagnosticInformation = { link = 'DiagnosticInfo' },
	DiagnosticWarn = { fg = group.warn },
	DiagnosticWarning = { link = 'DiagnosticWarn' },
	DiagnosticError = { fg = group.error },
	DiagnosticDefaultHint = { fg = group.hint },
	DiagnosticDefaultInfo = { fg = group.info },
	DiagnosticDefaultWarn = { fg = group.warn },
	DiagnosticDefaultError = { fg = group.error },
	DiagnosticFloatingHint = { fg = group.hint },
	DiagnosticFloatingInfo = { fg = group.info },
	DiagnosticFloatingWarn = { fg = group.warn },
	DiagnosticFloatingError = { fg = group.error },
	DiagnosticSignHint = { fg = group.hint },
	DiagnosticSignInfo = { fg = group.info },
	DiagnosticSignWarn = { fg = group.warn },
	DiagnosticSignError = { fg = group.error },
	DiagnosticUnderlineHint = { sp = group.hint, style = 'undercurl' },
	DiagnosticUnderlineInfo = { sp = group.info, style = 'undercurl' },
	DiagnosticUnderlineWarn = { sp = group.warn, style = 'undercurl' },
	DiagnosticUnderlineError = { sp = group.error, style = 'undercurl' },
	DiagnosticVirtualTextHint = { fg = group.hint },
	DiagnosticVirtualTextInfo = { fg = group.info },
	DiagnosticVirtualTextWarn = { fg = group.warn },
	DiagnosticVirtualTextError = { fg = group.error },

	LspReferenceText = { fg = palette.rose, bg = palette.highlight_med },
	LspReferenceRead = { fg = palette.rose, bg = palette.highlight_med },
	LspReferenceWrite = { fg = palette.rose, bg = palette.highlight_med },

	-- TODO: Deprecate in favour of 0.6.0 groups
	LspDiagnosticsSignWarning = { link = 'DiagnosticSignWarn' },
	LspDiagnosticsDefaultWarning = { link = 'DiagnosticDefaultWarn' },
	LspDiagnosticsFloatingWarning = { link = 'DiagnosticFloatingWarn' },
	LspDiagnosticsVirtualTextWarning = { link = 'DiagnosticVirtualTextWarn' },
	LspDiagnosticsUnderlineWarning = { link = 'DiagnosticUnderlineWarn' },
	LspDiagnosticsSignHint = { link = 'DiagnosticSignHint' },
	LspDiagnosticsDefaultHint = { link = 'DiagnosticDefaultHint' },
	LspDiagnosticsVirtualTextHint = { link = 'DiagnosticFloatingHint' },
	LspDiagnosticsFloatingHint = { link = 'DiagnosticVirtualTextHint' },
	LspDiagnosticsUnderlineHint = { link = 'DiagnosticUnderlineHint' },
	LspDiagnosticsSignError = { link = 'DiagnosticSignError' },
	LspDiagnosticsDefaultError = { link = 'DiagnosticDefaultError' },
	LspDiagnosticsFloatingError = { link = 'DiagnosticFloatingError' },
	LspDiagnosticsVirtualTextError = { link = 'DiagnosticVirtualTextError' },
	LspDiagnosticsUnderlineError = { link = 'DiagnosticUnderlineError' },
	LspDiagnosticsSignInformation = { link = 'DiagnosticSignInfo' },
	LspDiagnosticsDefaultInformation = { link = 'DiagnosticDefaultInfo' },
	LspDiagnosticsFloatingInformation = { link = 'DiagnosticFloatingInfo' },
	LspDiagnosticsVirtualTextInformation = { link = 'DiagnosticVirtualTextInfo' },
	LspDiagnosticsUnderlineInformation = { link = 'DiagnosticUnderlineInfo' },

	-- RedrawDebugNormal
	RedrawDebugClear = { fg = '#ffffff', bg = palette.gold },
	RedrawDebugComposed = { fg = '#ffffff', bg = palette.pine },
	RedrawDebugRecompose = { fg = '#ffffff', bg = palette.love },

	NvimInternalError = { fg = '#ffffff', bg = palette.love },

	-- TSAnnotation = {},
	-- TSAttribute = {},
	TSBoolean = { fg = palette.rose },
	-- TSCharacter = {},
	TSComment = { fg = group.comment, style = maybe_italic },
	-- TSConditional = {},
	TSConstBuiltin = { fg = palette.love },
	-- TSConstMacro = {},
	TSConstant = { fg = palette.foam },
	TSConstructor = { fg = palette.foam },
	-- TSEmphasis = {},
	-- TSError = {},
	-- TSException = {},
	TSField = { fg = palette.foam },
	-- TSFloat = {},
	TSFuncBuiltin = { fg = palette.love },
	-- TSFuncMacro = {},
	TSFunction = { fg = palette.rose },
	TSInclude = { fg = palette.pine },
	TSKeyword = { fg = palette.pine },
	-- TSKeywordFunction = {},
	TSKeywordOperator = { fg = palette.subtle },
	TSLabel = { fg = palette.foam },
	-- TSLiteral = {},
	-- TSMethod = {},
	-- TSNamespace = {},
	-- TSNone = {},
	-- TSNumber = {},
	TSOperator = { fg = palette.subtle },
	TSParameter = { fg = palette.iris, style = maybe_italic },
	-- TSParameterReference = {},
	TSProperty = { fg = palette.iris, style = maybe_italic },
	TSPunctBracket = { fg = group.punctuation },
	TSPunctDelimiter = { fg = group.punctuation },
	TSPunctSpecial = { fg = group.punctuation },
	-- TSRepeat = {},
	-- TSStrike = {},
	TSString = { fg = palette.gold },
	TSStringEscape = { fg = palette.pine },
	-- TSStringRegex = {},
	TSStringSpecial = { link = 'TSString' },
	-- TSSymbol = {},
	TSTag = { fg = palette.foam },
	TSTagDelimiter = { fg = palette.subtle },
	TSText = { fg = palette.text },
	TSTitle = { fg = group.headings.h1, style = 'bold' },
	-- TSType = {},
	-- TSTypeBuiltin = {},
	TSURI = { fg = palette.gold },
	-- TSUnderline = {},
	TSVariable = { fg = palette.text, style = maybe_italic },
	TSVariableBuiltin = { fg = palette.love },

	-- romgrk/barbar.nvim
	BufferTabpageFill = { fg = palette.base, bg = palette.base },
	BufferCurrent = { fg = palette.text, bg = palette.overlay },
	BufferCurrentIndex = { fg = palette.text, bg = palette.overlay },
	BufferCurrentMod = { fg = palette.foam, bg = palette.overlay },
	BufferCurrentSign = { fg = palette.subtle, bg = palette.overlay },
	BufferCurrentTarget = { fg = palette.gold, bg = palette.overlay },
	BufferInactive = { fg = palette.subtle },
	BufferInactiveIndex = { fg = palette.subtle },
	BufferInactiveMod = { fg = palette.foam },
	BufferInactiveSign = { fg = palette.muted },
	BufferInactiveTarget = { fg = palette.gold },
	BufferVisible = { fg = palette.subtle },
	BufferVisibleIndex = { fg = palette.subtle },
	BufferVisibleMod = { fg = palette.foam },
	BufferVisibleSign = { fg = palette.muted },
	BufferVisibleTarget = { fg = palette.gold },

	-- lewis6991/gitsigns.nvim
	SignAdd = { fg = group.git_add },
	SignChange = { fg = group.git_change },
	SignDelete = { fg = group.git_delete },
	GitSignsAdd = { fg = group.git_add },
	GitSignsChange = { fg = group.git_change },
	GitSignsDelete = { fg = group.git_delete },

	-- mvllow/modes.nvim
	ModesCopy = { bg = palette.gold },
	ModesDelete = { bg = palette.love },
	ModesInsert = { bg = palette.foam },
	ModesVisual = { bg = palette.iris },

	-- kyazdani42/nvim-tree.lua
	NvimTreeNormal = { fg = palette.text },
	NvimTreeFileDeleted = { fg = palette.love },
	NvimTreeFileDirty = { fg = palette.rose },
	NvimTreeFileMerge = { fg = palette.iris },
	NvimTreeFileNew = { fg = palette.foam },
	NvimTreeFileRenamed = { fg = palette.pine },
	NvimTreeFileStaged = { fg = palette.iris },
	NvimTreeEmptyFolderName = { fg = palette.muted },
	NvimTreeFolderIcon = { fg = palette.subtle },
	NvimTreeFolderName = { fg = palette.foam },
	NvimTreeImageFile = { fg = palette.text },
	NvimTreeOpenedFile = { fg = palette.text, bg = palette.highlight_med },
	NvimTreeOpenedFolderName = { fg = palette.foam },
	NvimTreeRootFolder = { fg = palette.iris },
	NvimTreeSpecialFile = { link = 'NvimTreeNormal' },
	NvimTreeGitDeleted = { fg = group.git_delete },
	NvimTreeGitDirty = { fg = group.git_dirty },
	NvimTreeGitIgnored = { fg = group.git_ignore },
	NvimTreeGitMerge = { fg = group.git_merge },
	NvimTreeGitNew = { fg = group.git_add },
	NvimTreeGitRenamed = { fg = group.git_rename },
	NvimTreeGitStaged = { fg = group.git_stage },
	NvimTreeWindowPicker = { fg = palette.base, bg = palette.iris },

	-- folke/which-key.nvim
	WhichKey = { fg = palette.iris },
	WhichKeyGroup = { fg = palette.foam },
	WhichKeySeparator = { fg = palette.subtle },
	WhichKeyDesc = { fg = palette.gold },
	WhichKeyFloat = { bg = palette.surface },
	WhichKeyValue = { fg = palette.rose },

	-- luka-reineke/indent-blankline.nvim
	IndentBlanklineChar = { fg = palette.muted },

	-- hrsh7th/nvim-cmp
	CmpItemKind = { fg = palette.iris },
	CmpItemAbbr = { fg = palette.subtle },
	CmpItemAbbrMatch = { fg = palette.text, style = 'bold' },
	CmpItemAbbrMatchFuzzy = { fg = palette.text, style = 'bold' },
	CmpItemAbbrDeprecated = { fg = palette.subtle, style = 'strikethrough' },
	CmpItemKindVariable = { fg = palette.foam },
	CmpItemKindClass = { fg = palette.gold },
	CmpItemKindInterface = { fg = palette.gold },
	CmpItemKindFunction = { fg = palette.iris },
	CmpItemKindMethod = { fg = palette.iris },
	CmpItemKindSnippet = { fg = palette.iris },

	-- TimUntersberger/neogit
	NeogitDiffAddHighlight = { fg = palette.foam, bg = palette.highlight_med },
	NeogitDiffDeleteHighlight = { fg = palette.love, bg = palette.highlight_med },
	NeogitDiffContextHighlight = { bg = palette.highlight_low },
	NeogitHunkHeader = { bg = palette.highlight_low },
	NeogitHunkHeaderHighlight = { bg = palette.highlight_low },

	-- vimwiki/vimwiki
	VimwikiHR = { fg = palette.subtle },
	VimwikiHeader1 = { fg = group.headings.h1, style = 'bold' },
	VimwikiHeader2 = { fg = group.headings.h2, style = 'bold' },
	VimwikiHeader3 = { fg = group.headings.h3, style = 'bold' },
	VimwikiHeader4 = { fg = group.headings.h4, style = 'bold' },
	VimwikiHeader5 = { fg = group.headings.h5, style = 'bold' },
	VimwikiHeader6 = { fg = group.headings.h6, style = 'bold' },
	VimwikiHeaderChar = { fg = palette.pine },
	VimwikiLink = { fg = group.link, style = 'underline' },
	VimwikiList = { fg = palette.iris },
	VimwikiNoExistsLink = { fg = palette.love },

	-- nvim-neorg/neorg
	NeorgHeading1Prefix = { fg = group.headings.h1, style = 'bold' },
	NeorgHeading1Title = { fg = group.headings.h1, style = 'bold' },
	NeorgHeading2Prefix = { fg = group.headings.h2, style = 'bold' },
	NeorgHeading2Title = { fg = group.headings.h2, style = 'bold' },
	NeorgHeading3Prefix = { fg = group.headings.h3, style = 'bold' },
	NeorgHeading3Title = { fg = group.headings.h3, style = 'bold' },
	NeorgHeading4Prefix = { fg = group.headings.h4, style = 'bold' },
	NeorgHeading4Title = { fg = group.headings.h4, style = 'bold' },
	NeorgHeading5Prefix = { fg = group.headings.h5, style = 'bold' },
	NeorgHeading5Title = { fg = group.headings.h5, style = 'bold' },
	NeorgHeading6Prefix = { fg = group.headings.h6, style = 'bold' },
	NeorgHeading6Title = { fg = group.headings.h6, style = 'bold' },
	NeorgMarkerTitle = { fg = palette.text, style = 'bold' },

	-- tami5/lspsaga.nvim (fork of glepnir/lspsaga.nvim)
	DefinitionCount = { fg = palette.rose },
	DefinitionIcon = { fg = palette.rose },
	DefintionPreviewTitle = { fg = palette.rose, style = 'bold' },
	LspFloatWinBorder = { fg = group.border },
	LspFloatWinNormal = { bg = palette.base },
	LspSagaAutoPreview = { fg = palette.subtle },
	LspSagaCodeActionBorder = { fg = group.border },
	LspSagaCodeActionContent = { fg = palette.foam },
	LspSagaCodeActionTitle = { fg = palette.gold, style = 'bold' },
	LspSagaCodeActionTruncateLine = { link = 'LspSagaCodeActionBorder' },
	LspSagaDefPreviewBorder = { fg = group.border },
	LspSagaDiagnosticBorder = { fg = group.border },
	LspSagaDiagnosticHeader = { fg = palette.gold, style = 'bold' },
	LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
	LspSagaDocTruncateLine = { link = 'LspSagaHoverBorder' },
	LspSagaFinderSelection = { fg = palette.gold },
	LspSagaHoverBorder = { fg = group.border },
	LspSagaLspFinderBorder = { fg = group.border },
	LspSagaRenameBorder = { fg = palette.pine },
	LspSagaRenamePromptPrefix = { fg = palette.love },
	LspSagaShTruncateLine = { link = 'LspSagaSignatureHelpBorder' },
	LspSagaSignatureHelpBorder = { fg = palette.pine },
	ReferencesCount = { fg = palette.rose },
	ReferencesIcon = { fg = palette.rose },
	SagaShadow = { bg = palette.overlay },
	TargetWord = { fg = palette.iris },

	-- ray-x/lsp_signature.nvim
	LspSignatureActiveParameter = { bg = palette.overlay },

	-- rlane/pounce.nvim
	PounceAccept = { fg = palette.love, bg = palette.highlight_high },
	PounceAcceptBest = { fg = palette.base, bg = palette.gold },
	PounceGap = { link = 'Search' },
	PounceMatch = { link = 'Search' },

	-- nvim-telescope/telescope.nvim
	TelescopeBorder = { fg = group.border },
	TelescopeMatching = { fg = palette.rose },
	TelescopeNormal = { fg = palette.subtle },
	TelescopePromptNormal = { fg = palette.text },
	TelescopePromptPrefix = { fg = palette.subtle },
	TelescopeSelection = { fg = palette.text, bg = palette.highlight_low },
	TelescopeSelectionCaret = { fg = palette.rose, bg = palette.highlight_low },
	TelescopeTitle = { fg = palette.subtle },
}

vim.g.terminal_color_0 = palette.overlay -- black
vim.g.terminal_color_8 = palette.subtle -- bright black
vim.g.terminal_color_1 = palette.love -- red
vim.g.terminal_color_9 = palette.love -- bright red
vim.g.terminal_color_2 = palette.pine -- green
vim.g.terminal_color_10 = palette.pine -- bright green
vim.g.terminal_color_3 = palette.gold -- yellow
vim.g.terminal_color_11 = palette.gold -- bright yellow
vim.g.terminal_color_4 = palette.foam -- blue
vim.g.terminal_color_12 = palette.foam -- bright blue
vim.g.terminal_color_5 = palette.iris -- magenta
vim.g.terminal_color_13 = palette.iris -- bright magenta
vim.g.terminal_color_6 = palette.rose -- cyan
vim.g.terminal_color_14 = palette.rose -- bright cyan
vim.g.terminal_color_7 = palette.text -- white
vim.g.terminal_color_15 = palette.text -- bright white

return theme
