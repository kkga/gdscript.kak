# http://godotengine.org
# ‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

# Detection
# ‾‾‾‾‾‾‾‾‾

hook global BufCreate .*[.](gd) %{
    set-option buffer filetype gdscript
}

# Initialization
# ‾‾‾‾‾‾‾‾‾‾‾‾‾‾

hook -group gdscript-highlight global WinSetOption filetype=gdscript %{
    require-module gdscript

    add-highlighter window/gdscript ref gdscript
    hook -once -always window WinSetOption filetype=.* %{ remove-highlighter window/gdscript }
}

provide-module asciidoc %{

# Highlighters
# ‾‾‾‾‾‾‾‾‾‾‾‾

add-highlighter shared/gdscript regions
add-highlighter shared/gdscript/code default-region group
add-highlighter shared/gdscript/string           region %{(?<!')"} (?<!\\)(\\\\)*"              fill string
add-highlighter shared/gdscript/raw_string       region -match-capture %{(?<!')r(#*)"} %{"(#*)} fill string

}
