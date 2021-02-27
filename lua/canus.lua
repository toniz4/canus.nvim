
vim.cmd("highlight clear")
if (vim.g.syntax_on) then
	vim.cmd("syntax reset")
end

vim.g.colorname = "canus"

local black =     {"#f3f1d8", 0 }
local red =       {"#9c1616", 1 }
local green =     {"#194d19", 2 }
local yellow =    {"#65651a", 3 }
local blue =      {"#2f2f9d", 4 }
local magenta =   {"#5f2475", 5 }
local cyan =      {"#105670", 6 }
local white =     {"#eae8c8", 7 }

local brblack =   {"#000000", 8 }
local brred =     {"#e96363", 9 }
local brgreen =   {"#46b946", 10}
local bryellow =  {"#e0e085", 11}
local brblue =    {"#a4a4f4", 12}
local brmagenta = {"#c58adb", 13}
local brcyan =    {"#d2eef9", 14}
local brwhite =   {"#737373", 15}

local function hl(hlGroup, fg, bg, attr)
	if (fg == nil) then
		ctermfg = "NONE"
		guifg = "NONE"
	else
		ctermfg = fg[2]
		guifg = fg[1]
	end
	
	if (bg == nil) then
		ctermbg = "NONE"
		guibg = "NONE"
	else
		ctermbg = bg[2]
		guibg = bg[1]
	end

	if (attr == nil) then
		attr = "NONE"
	end

	vim.cmd("highlight " .. hlGroup ..
			" ctermfg='" .. ctermfg .. "'" ..
			" ctermbg='" .. ctermbg .. "'" ..
			" guifg='"   .. guifg   .. "'" ..
			" guibg='"   .. guibg   .. "'" ..
			" gui='"     .. attr .. "'")
end

-- highlight text  background
local hiGroups = {
	--  highlight text  background attribute
	{"Normal", brblack, black, nil},
	{"Constant", nil, nil, nil},
	{"Identifier", nil, nil, nil},
	{"Ignore", nil, nil, nil},
	{"type", blue, nil, "bold"},
	{"Statement", nil, nil, nil},
	{"Comment", brwhite, nil, nil},
	{"String", green, nil, nil},
	{"Special", magenta, nil, nil},
	{"SpecialComment", magenta, nil, nil},
	{"PreProc", nil, nil, nil},
	{"Underlined", nil, nil, "underline"},
	{"Error", red, nil, nil},
	{"MatchParen", brblack, brcyan, "bold"},
	{"Delimiter", magenta, nil, nil},
	{"Todo", magenta, nil, "bold,underline"},

	-- Vim ui
	{"NonText", brwhite, black, nil},
	{"EndOfBuffer", brwhite, nil, "bold"},
	{"SpecialKey", cyan, brcyan, nil},
	{"Conceal", nil, nil, nil},
	{"LineNr", brwhite, white, nil},
	{"CursorLineNr", brblack, white, "bold"},
	{"ErrorMsg", black, red, "bold"},
}

for _, map in pairs(hiGroups) do
	hl(unpack(map))
end

-- call s:Style('NonText',        s:cyan,        s:pale_cyan,    '')
-- call s:Style('EndOfBuffer',    [],            [],             'bold')
-- call s:Style('SpecialKey',     s:cyan,        s:pale_cyan,    '')
-- call s:Style('Conceal',        [],            [],             '')
-- call s:Style('LineNr',         [],            s:pale_gray,    '')
-- call s:Style('CursorLineNr',   [],            s:pale_gray,    '')
-- call s:Style('ErrorMsg',       s:pale_yellow, s:red,          'bold')
-- call s:Style('MoreMsg',        [],            [],             'bold')
-- call s:Style('ModeMsg',        [],            [],             'bold')
-- call s:Style('Question',       [],            [],             'bold')
-- call s:Style('Title',          s:magenta,     [],             '')
-- call s:Style('WarningMsg',     s:red,         [],             '')
-- call s:Style('Cursor',         [],            [],             'reverse')
-- call s:Style('lCursor',        s:pale_yellow, s:magenta,      '')
-- call s:Style('TermCursor',     [],            [],             'reverse')
-- call s:Style('TermCursorNC',   s:pale_yellow, s:cyan,         '')
-- call s:Style('Visual',         [],            s:yellow,       '')
-- call s:Style('VisualNOS',      [],            [],             'bold,underline')
-- call s:Style('TabLine',        [],            s:pale_gray,    '')
-- call s:Style('TabLineSel',     [],            s:pale_gray,    'bold')
-- call s:Style('TabLineFill',    [],            s:pale_gray,    '')
-- call s:Style('ColorColumn',    [],            s:pale_red,     '')
-- call s:Style('CursorColumn',   [],            s:beige,        '')
-- call s:Style('CursorLine',     [],            s:beige,        '')
-- call s:Style('VertSplit',      [],            s:pale_gray,    '')
-- call s:Style('StatusLine',     [],            s:pale_gray,    'bold')
-- call s:Style('StatusLineNC',   s:shadow,      s:pale_gray,    '')
-- call s:Style('WildMenu',       s:pale_yellow, s:cyan,         'bold')
-- call s:Style('Search',         [],            [],             'bold')
-- call s:Style('IncSearch',      [],            s:pale_blue,    'bold')
-- call s:Style('Directory',      s:blue,        [],             'bold')
-- call s:Style('DiffAdd',        s:green,       s:pale_green,   '')
-- call s:Style('DiffDelete',     s:red,         s:pale_red,     '')
-- call s:Style('DiffChange',     s:magenta,     s:pale_magenta, '')
-- call s:Style('DiffText',       s:magenta,     s:pale_magenta, 'bold')
-- call s:Style('Folded',         [],            s:pale_gray,    '')
-- call s:Style('FoldColumn',     [],            s:pale_gray,    '')
-- call s:Style('SignColumn',     [],            s:pale_gray,    '')
-- call s:Style('Pmenu',          [],            s:pale_cyan,    '')
-- call s:Style('PmenuSel',       s:pale_yellow, s:cyan,         'bold')
-- call s:Style('PmenuSbar',      [],            s:pale_cyan,    '')
-- call s:Style('PmenuThumb',     [],            s:cyan,         '')
-- call s:Style('SpellBad',       s:red,         [],             'undercurl')
-- call s:Style('SpellCap',       s:green,       [],             'undercurl')
-- call s:Style('SpellRare',      s:green,       [],             'undercurl')
-- call s:Style('SpellLocal',     s:green,       [],             'undercurl')
-- call s:Style('QuickFixLine',   [],            s:pale_blue,    '')
