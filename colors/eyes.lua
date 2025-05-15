---@type eyes.Palette
local palette = nil

if vim.o.background == "dark" then
	palette = {
		hex00 = "#303030",
		hex01 = "#404040",
		hex02 = "#505050",
		hex03 = "#606060",
		hex04 = "#707070",
		hex05 = "#808080",
		hex06 = "#909090",
		hex07 = "#A0A0A0",
		hex08 = "#B0B0B0",
		hex09 = "#C0C0C0",
		hex10 = "#D0D0D0",
	}
else
	palette = {
		hex00 = "#FFFFFF",
		hex01 = "#EFEFEF",
		hex02 = "#DFDFDF",
		hex03 = "#CFCFCF",
		hex04 = "#BFBFBF",
		hex05 = "#AFAFAF",
		hex06 = "#9F9F9F",
		hex07 = "#8F8F8F",
		hex08 = "#7F7F7F",
		hex09 = "#6F6F6F",
		hex10 = "#5F5F5F",
	}
end

if palette ~= nil then
	require("eyes.palette").setup(palette)
	require("eyes.highlights").setup()
	vim.g.colors_name = "eyes"
end
