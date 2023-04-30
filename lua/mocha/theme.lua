local M = {}

function M.get(config)
	local p = require("mocha.palette")

	local theme = {}

	local background = (config.transparent_background and p.none) or p.base00
	local generate_color = require("mocha.theme").change_hex_lightness

	theme = {
		-- Syntax
		Boolean = {
			fg = p.base09,
		},

		Character = {
			fg = p.base08,
		},

		Conditional = {
			fg = p.base0E,
			italic = true,
		},

		Constant = {
			fg = p.base08,
		},

		Define = {
			fg = p.base0E,
			sp = "none",
		},

		Delimiter = {
			fg = p.base0F,
		},

		Float = {
			fg = p.base09,
		},

		Variable = {
			fg = p.base05,
			italic = true,
		},

		Function = {
			fg = p.base0D,
		},

		Identifier = {
			fg = p.base08,
			sp = "none",
		},

		Include = {
			fg = p.base0D,
		},

		Keyword = {
			fg = p.base0E,
		},

		Label = {
			fg = p.base0A,
		},

		Number = {
			fg = p.base09,
		},

		Operator = {
			fg = p.base05,
			sp = "none",
		},

		PreProc = {
			fg = p.base0A,
		},

		Repeat = {
			fg = p.base0A,
		},

		Special = {
			fg = p.base0C,
		},

		SpecialChar = {
			fg = p.base0F,
		},

		Statement = {
			fg = p.base08,
		},

		StorageClass = {
			fg = p.base0A,
		},

		String = {
			fg = p.base0B,
		},

		Structure = {
			fg = p.base0E,
		},

		Tag = {
			fg = p.base0A,
		},

		Todo = {
			fg = p.base0A,
			bg = p.base01,
		},

		Type = {
			fg = p.base0A,
			sp = "none",
		},

		Typedef = {
			fg = p.base0A,
		},

		-- Lsp Semantic Tokens
		["@lsp.type.class"] = { link = "Structure" },
		["@lsp.type.decorator"] = { link = "Function" },
		["@lsp.type.enum"] = { link = "Type" },
		["@lsp.type.enumMember"] = { link = "Constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { link = "Structure" },
		["@lsp.type.macro"] = { link = "@macro" },
		["@lsp.type.method"] = { link = "@method" },
		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.struct"] = { link = "Structure" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeParamater"] = { link = "TypeDef" },
		["@lsp.type.variable"] = { link = "@variable" },

		-- Indent Blankline
		IndentBlankLineIndent1 = { fg = p.base0B },
		IndentBlankLineIndent2 = { fg = p.base0D },
		IndentBlankLineIndent3 = { fg = p.base0E },
		IndentBlankLineIndent4 = { fg = p.base0A },
		IndentBlankLineIndent5 = { fg = p.base0F },

		-- Cmp Item Kinds
		CmpItemKindAbbr = { fg = p.white, italic = true },
		CmpItemKindConstant = { fg = p.base09 },
		CmpItemKindFunction = { fg = p.base0D },
		CmpItemKindIdentifier = { fg = p.base08 },
		CmpItemKindField = { fg = p.base08 },
		CmpItemKindVariable = { fg = p.base0E },
		CmpItemKindSnippet = { fg = p.red },
		CmpItemKindText = { fg = p.base0B },
		CmpItemKindStructure = { fg = p.base0E },
		CmpItemKindType = { fg = p.base0A },
		CmpItemKindKeyword = { fg = p.base07 },
		CmpItemKindMethod = { fg = p.base0D },
		CmpItemKindConstructor = { fg = p.blue },
		CmpItemKindFolder = { fg = p.base07 },
		CmpItemKindModule = { fg = p.base0A },
		CmpItemKindProperty = { fg = p.base08 },
		CmpItemKindEnum = { fg = p.blue },
		CmpItemKindUnit = { fg = p.base0E },
		CmpItemKindClass = { fg = p.teal },
		CmpItemKindFile = { fg = p.base07 },
		CmpItemKindInterface = { fg = p.green },
		CmpItemKindColor = { fg = p.white },
		CmpItemKindReference = { fg = p.base05 },
		CmpItemKindEnumMember = { fg = p.purple },
		CmpItemKindStruct = { fg = p.base0E },
		CmpItemKindValue = { fg = p.cyan },
		CmpItemKindEvent = { fg = p.yellow },
		CmpItemKindOperator = { fg = p.base05 },
		CmpItemKindTypeParameter = { fg = p.base08 },
		CmpItemKindCopilot = { fg = p.green },

		MatchWord = {
			bg = p.grey,
			fg = p.white,
		},

		Pmenu = { bg = p.one_bg },
		PmenuSbar = { bg = p.one_bg },
		PmenuSel = { bg = p.pmenu_bg, fg = p.black },
		PmenuThumb = { bg = p.grey },

		MatchParen = { link = "MatchWord" },

		Comment = { fg = p.base03 },

		CursorLineNr = { fg = p.yellow },
		LineNr = { fg = p.light_grey },
		EndOfBuffer = { fg = p.black },

		-- floating windows
		FloatBorder = { fg = p.grey_fg },
		NormalFloat = { bg = p.darker_black },

		NvimInternalError = { fg = p.red },
		WinSeparator = { fg = p.blue },

		Normal = {
			fg = p.base05,
			bg = background,
		},

		Bold = {
			bold = true,
		},

		Debug = {
			fg = p.base08,
		},

		Directory = {
			fg = p.base0D,
		},

		Error = {
			fg = p.base00,
			bg = p.base08,
		},

		ErrorMsg = {
			fg = p.base08,
			bg = p.base00,
		},

		Exception = {
			fg = p.base08,
		},

		FoldColumn = {
			fg = p.base0C,
			bg = p.base01,
		},

		Folded = {
			fg = p.base03,
			bg = p.base01,
		},

		IncSearch = {
			fg = p.base01,
			bg = p.base09,
		},

		Italic = {
			italic = true,
		},

		Macro = {
			fg = p.base08,
		},

		ModeMsg = {
			fg = p.base0B,
		},

		MoreMsg = {
			fg = p.base0B,
		},

		Question = {
			fg = p.base0D,
		},

		Search = {
			fg = p.base01,
			bg = p.base0A,
		},

		Substitute = {
			fg = p.base01,
			bg = p.base0A,
			sp = "none",
		},

		SpecialKey = {
			fg = p.base03,
		},

		TooLong = {
			fg = p.base08,
		},

		UnderLined = {
			underline = true,
		},

		Visual = {
			bg = p.blue,
		},

		VisualNOS = {
			fg = p.base08,
		},

		WarningMsg = {
			fg = p.base08,
		},

		WildMenu = {
			fg = p.base08,
			bg = p.base0A,
		},

		Title = {
			fg = p.base0D,
			sp = "none",
		},

		Conceal = {
			bg = "NONE",
		},

		Cursor = {
			fg = p.base00,
			bg = p.base05,
		},

		NonText = {
			fg = p.base03,
		},

		SignColumn = {
			fg = p.base03,
			sp = "NONE",
		},

		ColorColumn = {
			bg = p.base01,
			sp = "none",
		},

		CursorColumn = {
			bg = p.base01,
			sp = "none",
		},

		CursorLine = {
			bg = "none",
			sp = "none",
		},

		QuickFixLine = {
			bg = p.base01,
			sp = "none",
		},

		-- spell
		SpellBad = {
			undercurl = true,
			sp = p.base08,
		},

		SpellLocal = {
			undercurl = true,
			sp = p.base0C,
		},

		SpellCap = {
			undercurl = true,
			sp = p.base0D,
		},

		SpellRare = {
			undercurl = true,
			sp = p.base0E,
		},

		healthSuccess = {
			bg = p.green,
			fg = p.black,
		},

		-- lazy.nvim
		LazyH1 = {
			bg = p.green,
			fg = p.black,
		},

		LazyButton = {
			bg = p.one_bg,
			fg = p.light_grey,
		},

		LazyH2 = {
			fg = p.red,
			bold = true,
			underline = true,
		},

		LazyReasonPlugin = { fg = p.red },
		LazyValue = { fg = p.teal },
		LazyDir = { fg = p.base05 },
		LazyUrl = { fg = p.base05 },
		LazyCommit = { fg = p.green },
		LazyNoCond = { fg = p.red },
		LazySpecial = { fg = p.blue },
		LazyReasonFt = { fg = p.purple },
		LazyOperator = { fg = p.white },
		LazyReasonKeys = { fg = p.teal },
		LazyTaskOutput = { fg = p.white },
		LazyCommitIssue = { fg = p.pink },
		LazyReasonEvent = { fg = p.yellow },
		LazyReasonStart = { fg = p.white },
		LazyReasonRuntime = { fg = p.nord_blue },
		LazyReasonCmd = { fg = p.sun },
		LazyReasonSource = { fg = p.cyan },
		LazyReasonImport = { fg = p.white },
		LazyProgressDone = { fg = p.green },

		-- Devicons
		DevIconDefault = { fg = p.red },
		DevIconc = { fg = p.blue },
		DevIconcss = { fg = p.blue },
		DevIcondeb = { fg = p.cyan },
		DevIconDockerfile = { fg = p.cyan },
		DevIconhtml = { fg = p.baby_pink },
		DevIconjpeg = { fg = p.dark_purple },
		DevIconjpg = { fg = p.dark_purple },
		DevIconjs = { fg = p.sun },
		DevIconkt = { fg = p.orange },
		DevIconlock = { fg = p.red },
		DevIconlua = { fg = p.blue },
		DevIconmp3 = { fg = p.white },
		DevIconmp4 = { fg = p.white },
		DevIconout = { fg = p.white },
		DevIconpng = { fg = p.dark_purple },
		DevIconpy = { fg = p.cyan },
		DevIcontoml = { fg = p.blue },
		DevIconts = { fg = p.teal },
		DevIconttf = { fg = p.white },
		DevIconrb = { fg = p.pink },
		DevIconrpm = { fg = p.orange },
		DevIconvue = { fg = p.vibrant_green },
		DevIconwoff = { fg = p.white },
		DevIconwoff2 = { fg = p.white },
		DevIconxz = { fg = p.sun },
		DevIconzip = { fg = p.sun },
		DevIconZig = { fg = p.orange },
		DevIconMd = { fg = p.blue },
		DevIconTSX = { fg = p.blue },
		DevIconJSX = { fg = p.blue },
		DevIconSvelte = { fg = p.red },

		-- Git
		DiffAdd = {
			fg = p.blue,
		},

		DiffAdded = {
			fg = p.green,
		},

		DiffChange = {
			fg = p.light_grey,
		},

		DiffChangeDelete = {
			fg = p.red,
		},

		DiffModified = {
			fg = p.orange,
		},

		DiffDelete = {
			fg = p.red,
		},

		DiffRemoved = {
			fg = p.red,
		},

		DiffText = {
			fg = p.white,
			bg = p.black2,
		},

		-- git commits
		gitcommitOverflow = {
			fg = p.base08,
		},

		gitcommitSummary = {
			fg = p.base08,
		},

		gitcommitComment = {
			fg = p.base03,
		},

		gitcommitUntracked = {
			fg = p.base03,
		},

		gitcommitDiscarded = {
			fg = p.base03,
		},

		gitcommitSelected = {
			fg = p.base03,
		},

		gitcommitHeader = {
			fg = p.base0E,
		},

		gitcommitSelectedType = {
			fg = p.base0D,
		},

		gitcommitUnmergedType = {
			fg = p.base0D,
		},

		gitcommitDiscardedType = {
			fg = p.base0D,
		},

		gitcommitBranch = {
			fg = p.base09,
			bold = true,
		},

		gitcommitUntrackedFile = {
			fg = p.base0A,
		},

		gitcommitUnmergedFile = {
			fg = p.base08,
			bold = true,
		},

		gitcommitDiscardedFile = {
			fg = p.base08,
			bold = true,
		},

		gitcommitSelectedFile = {
			fg = p.base0B,
			bold = true,
		},

		-- LSP References
		LspReferenceText = { fg = p.darker_black, bg = p.white },
		LspReferenceRead = { fg = p.darker_black, bg = p.white },
		LspReferenceWrite = { fg = p.darker_black, bg = p.white },

		-- Lsp Diagnostics
		DiagnosticHint = { fg = p.purple },
		DiagnosticError = { fg = p.red },
		DiagnosticWarn = { fg = p.yellow },
		DiagnosticInformation = { fg = p.green },
		DiagnosticHeader = { fg = "#2cb27f", italic = true, bold = true },
		LspSignatureActiveParameter = { fg = p.black, bg = p.green },

		RenamerTitle = { fg = p.black, bg = p.yellow, bold = true, italic = true },
		RenamerBorder = { fg = p.yellow },
		InlayHints = { fg = p.grey_fg },

		-- LspSaga
		LspSagaCodeActionTitle = { fg = p.purple },
		LspSagaCodeActionBorder = { fg = p.vibrant_green },
		LspSagaCodeActionContent = { fg = p.white },
		LSOutlinePreviewBorder = { fg = p.white },
		OutlineIndentEven = { fg = p.orange },
		OutlineIndentOdd = { fg = p.dark_purple },
		OutlineFoldPrefix = { fg = p.red },
		OutlineDetail = { fg = p.grey },

		-- Mason
		MasonHeader = { bg = p.red, fg = p.black },
		MasonHighlight = { fg = p.blue },
		MasonHighlightBlock = { fg = p.black, bg = p.green },
		MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
		MasonHeaderSecondary = { link = "MasonHighlightBlock" },
		MasonMuted = { fg = p.light_grey },
		MasonMutedBlock = { fg = p.light_grey, bg = p.one_bg },

		-- Telescope
		TelescopeNormal = { bg = p.darker_black },

		TelescopePreviewTitle = {
			fg = p.black,
			bg = p.green,
		},

		TelescopePromptTitle = {
			fg = p.black,
			bg = p.red,
			italic = true,
		},

		TelescopeSelection = { bg = p.black2, fg = p.white },
		TelescopeResultsDiffAdd = { fg = p.green },
		TelescopeResultsDiffChange = { fg = p.yellow },
		TelescopeResultsDiffDelete = { fg = p.red },

		TelescopeBorder = { fg = p.darker_black, bg = p.darker_black },
		TelescopePromptBorder = { fg = p.black2, bg = p.black2 },
		TelescopePromptNormal = { fg = p.white, bg = p.black2 },
		TelescopeResultsTitle = { fg = p.darker_black, bg = p.darker_black, italic = true },
		TelescopePromptPrefix = { fg = p.red, bg = p.black2 },
		TelescopePreviewLine = { bg = p.light_grey },

		-- Treesitter
		-- `@annotation` is not one of the default capture group, should we keep it
		["@annotation"] = {
			fg = p.base0F,
		},

		["@attribute"] = {
			fg = p.base0A,
		},

		["@character"] = {
			fg = p.base08,
		},

		["@constructor"] = {
			fg = p.base0C,
		},

		["@constant"] = {
			fg = p.base08,
		},

		["@constant.builtin"] = {
			fg = p.base09,
		},

		["@constant.macro"] = {
			fg = p.base08,
		},

		["@error"] = {
			fg = p.base08,
		},

		["@exception"] = {
			fg = p.base08,
		},

		["@float"] = {
			fg = p.base09,
		},

		["@keyword"] = {
			fg = p.base0E,
		},

		["@keyword.function"] = {
			fg = p.base0E,
		},

		["@keyword.export"] = {
			fg = p.base0D,
			bold = true,
		},

		["@keyword.return"] = {
			fg = p.base0E,
		},

		["@function"] = {
			fg = p.base0D,
		},

		["@function.builtin"] = {
			fg = p.base0D,
		},

		["@function.macro"] = {
			fg = p.base08,
		},

		["@function.call"] = {
			fg = p.base0D,
		},

		["@operator"] = {
			fg = p.base05,
		},

		["@keyword.operator"] = {
			fg = p.base0E,
		},

		["@method"] = {
			fg = p.base0D,
		},

		["@method.call"] = {
			fg = p.base0D,
		},

		["@namespace"] = {
			fg = p.base08,
		},

		["@none"] = {
			fg = p.base05,
		},

		["@parameter"] = {
			fg = p.base08,
		},

		["@reference"] = {
			fg = p.base05,
		},

		["@punctuation.bracket"] = {
			fg = p.base0F,
		},

		["@punctuation.delimiter"] = {
			fg = p.base0F,
		},

		["@punctuation.special"] = {
			fg = p.base08,
		},

		["@string"] = {
			fg = p.base0B,
		},

		["@string.regex"] = {
			fg = p.base0C,
		},

		["@string.escape"] = {
			fg = p.base0C,
		},

		["@string.special"] = {
			fg = p.base0C,
		},

		["@symbol"] = {
			fg = p.base0B,
		},

		["@tag"] = {
			link = "Tag",
		},

		["@tag.attribute"] = {
			link = "@property",
		},

		["@tag.delimiter"] = {
			fg = p.base0F,
		},

		["@text"] = {
			fg = p.base05,
		},

		["@text.strong"] = {
			bold = true,
		},

		["@text.emphasis"] = {
			fg = p.base09,
			italic = true,
		},

		["@text.strike"] = {
			fg = p.base0F,
			strikethrough = true,
		},

		["@text.literal"] = {
			fg = p.base09,
		},

		["@text.underline"] = {
			fg = p.base05,
			underline = true,
		},

		["@text.uri"] = {
			fg = p.base09,
			underline = true,
		},

		["@type.builtin"] = {
			fg = p.base0A,
		},

		["@text.environment"] = {
			fg = p.base0D,
		},

		["@text.math"] = {
			fg = p.base0C,
		},

		["@text.reference"] = {
			fg = p.base05,
		},

		["@text.todo"] = {
			fg = p.base0A,
		},

		["@text.note"] = {
			fg = p.base0D,
		},

		["@text.warning"] = {
			fg = p.base0A,
		},

		["@text.danger"] = {
			fg = p.base0F,
			bg = p.base00,
		},

		["@text.diff.add"] = {
			fg = p.base0B,
		},

		["@text.diff.delete"] = {
			fg = p.base08,
		},

		["@text.environment.name"] = {
			fg = p.base05,
			italic = true,
		},

		["@variable"] = {
			fg = p.base05,
			italic = true,
		},

		["@variable.builtin"] = {
			fg = p.base09,
		},

		-- variable.global

		["@definition"] = {
			sp = p.base04,
			underline = true,
		},

		["@scope"] = {
			bold = true,
		},

		["@field"] = {
			fg = p.base08,
		},

		["@field.key"] = {
			fg = p.base08,
		},

		["@property"] = {
			fg = p.base08,
		},

		["@include"] = {
			link = "Include",
		},

		["@conditional"] = {
			link = "Conditional",
			italic = true,
		},
		["@event"] = { fg = p.base0F },
		["@modifier"] = { fg = p.base0F },
		["@regexp"] = { fg = p.base08 },
		["@typeParamater"] = { fg = p.base0A },
		["@decorator"] = { fg = p.base0F },
		["@rust_path"] = { fg = p.base0B },
		["@code"] = { fg = p.base03 },
		["@utils"] = { fg = p.base0D },
		["@require_call"] = { fg = p.base0E },
		["@quantifier"] = { fg = p.base0C },
		markdownBold = { fg = p.base0A, bold = true },

		-- TOML
		["@property.toml"] = { fg = p.base0D },

		-- Rainbow bracket
		rainbowcol1 = { fg = p.base08 },
		rainbowcol2 = { fg = p.base09 },
		rainbowcol3 = { fg = p.base0A },
		rainbowcol4 = { fg = p.base0B },
		rainbowcol5 = { fg = p.base0D },
		rainbowcol6 = { fg = p.base0E },

		-- Neogit
		NeogitNotificationInfo = { fg = p.green },
		NeogitNotificationWarning = { fg = p.yellow },
		NeogitNotificationError = { fg = p.red },

		-- Neotree
		NeoTreeDirectoryIcon = { fg = p.folder_bg },
		NeoTreeDirectoryName = { fg = p.folder_bg },
		NeoTreeRootName = { fg = p.red, underline = true },
		NeoTreeDirectoryOpened = { fg = p.folder_bg },

		-- Notify
		NotifyERRORBorder = { fg = p.red },
		NotifyERRORIcon = { fg = p.red },
		NotifyERRORTitle = { fg = p.red },
		NotifyWARNBorder = { fg = p.orange },
		NotifyWARNIcon = { fg = p.orange },
		NotifyWARNTitle = { fg = p.orange },
		NotifyINFOBorder = { fg = p.green },
		NotifyINFOIcon = { fg = p.green },
		NotifyINFOTitle = { fg = p.green },
		NotifyDEBUGBorder = { fg = p.grey },
		NotifyDEBUGIcon = { fg = p.grey },
		NotifyDEBUGTitle = { fg = p.grey },
		NotifyTRACEBorder = { fg = p.purple },
		NotifyTRACEIcon = { fg = p.purple },
		NotifyTRACETitle = { fg = p.purple },

		-- Bufferline
		BufferLineBackground = {
			fg = p.light_grey,
			bg = p.black2,
		},

		BufferlineIndicatorVisible = {
			fg = p.black2,
			bg = p.black2,
		},

		-- buffers
		BufferLineBufferSelected = {
			fg = p.white,
			bg = p.black,
			italic = true,
			bold = true,
		},

		BufferLineBufferVisible = {
			fg = p.light_grey,
			bg = p.black2,
			italic = true,
			bold = true,
		},

		-- for diagnostics = "nvim_lsp"
		BufferLineError = {
			fg = p.light_grey,
			bg = p.black2,
		},
		BufferLineErrorDiagnostic = {
			fg = p.light_grey,
			bg = p.black2,
		},

		-- close buttons
		BufferLineCloseButton = {
			fg = p.light_grey,
			bg = p.black2,
		},
		BufferLineCloseButtonVisible = {
			fg = p.light_grey,
			bg = p.black2,
		},
		BufferLineCloseButtonSelected = {
			fg = p.red,
			bg = p.black,
		},
		BufferLineFill = {
			fg = p.grey_fg,
			bg = p.black2,
		},
		BufferlineIndicatorSelected = {
			fg = p.black,
			bg = p.black,
		},

		-- modified
		BufferLineModified = {
			fg = p.red,
			bg = p.black2,
		},
		BufferLineModifiedVisible = {
			fg = p.red,
			bg = p.black2,
		},
		BufferLineModifiedSelected = {
			fg = p.green,
			bg = p.black,
		},

		-- separators
		BufferLineSeparator = {
			fg = p.black2,
			bg = p.black2,
		},
		BufferLineSeparatorVisible = {
			fg = p.black2,
			bg = p.black2,
		},
		BufferLineSeparatorSelected = {
			fg = p.black2,
			bg = p.black2,
		},

		-- tabs
		BufferLineTab = {
			fg = p.light_grey,
			bg = p.one_bg3,
		},
		BufferLineTabSelected = {
			fg = p.black2,
			bg = p.nord_blue,
		},
		BufferLineTabClose = {
			fg = p.red,
			bg = p.black,
		},

		BufferLineDevIconDefaultSelected = {
			bg = "none",
		},

		BufferLineDevIconDefaultInactive = {
			bg = "none",
		},

		BufferLineDuplicate = {
			fg = "NONE",
			bg = p.black2,
			italic = true,
			bold = true,
		},
		BufferLineDuplicateSelected = {
			fg = p.red,
			bg = p.black,
			italic = true,
			bold = true,
		},
		BufferLineDuplicateVisible = {
			fg = p.blue,
			bg = p.black2,
			italic = true,
			bold = true,
		},

		-- custom area
		BufferLineRightCustomAreaText1 = {
			fg = p.white,
		},

		BufferLineRightCustomAreaText2 = {
			fg = p.red,
		},

		-- Neorg
		["@neorg.markup.italic"] = { italic = true },
		NeorgCodeBlock = { bg = p.darker_black },

		-- Gitsigns
		GitSignsCurrentLineBlame = { fg = p.light_grey, italic = true, bold = true },

		-- Custom Statusline
		StatusLine = { fg = p.base04 },
		StatusLineNC = { fg = p.base03 },
		StatusNormal = { fg = p.green, bold = true },
		StatusReplace = { fg = p.yellow, bold = true },
		StatusInsert = { fg = p.nord_blue, bold = true },
		StatusCommand = { fg = p.teal, bold = true },
		StatusVisual = { fg = p.purple, bold = true },
		StatusTerminal = { fg = p.red, bold = true },
		Filename = { fg = "#a9b1d6" },
		Branch = { fg = p.pink, italic = true },
		GitInfo = { fg = "#8b919c" },
		SError = { fg = p.red, bold = true },
		SWarning = { fg = p.yellow, bold = true },
		SHint = { fg = p.purple, bold = true },
		SInfo = { fg = p.green, bold = true },
		Clock = { fg = p.cyan },
		SearchCount = { fg = p.base0E },
	}
	vim.g.terminal_color_0 = p.base00
	vim.g.terminal_color_1 = p.base08
	vim.g.terminal_color_2 = p.base0B
	vim.g.terminal_color_3 = p.base0A
	vim.g.terminal_color_4 = p.base0D
	vim.g.terminal_color_5 = p.base0E
	vim.g.terminal_color_6 = p.base0C
	vim.g.terminal_color_7 = p.base05
	vim.g.terminal_color_8 = p.base03
	vim.g.terminal_color_9 = p.base08
	vim.g.terminal_color_10 = p.base0B
	vim.g.terminal_color_11 = p.base0A
	vim.g.terminal_color_12 = p.base0D
	vim.g.terminal_color_13 = p.base0E
	vim.g.terminal_color_14 = p.base0C
	vim.g.terminal_color_15 = p.base07

	return theme
end

return M
