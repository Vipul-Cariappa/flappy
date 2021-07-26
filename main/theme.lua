-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local theme = 0
-- 0: default
-- 1: dark
-- 2: light
-- 3: rainbow

function set_theme(x)
	theme = x
end

function get_theme()
	return theme
end