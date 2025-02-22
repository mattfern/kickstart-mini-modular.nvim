# mini.nvim Keybindings

## Mini.basics
- Various basic Neovim configurations and mappings
- Window management mappings enabled

## Mini.pairs
Auto-pairs brackets and quotes with smart behavior:
- `(` -> `()`
- `[` -> `[]`
- `{` -> `{}`
- `"` -> `""`
- `'` -> `''`
- `` ` `` -> ``` `` ```

## Mini.surround
Surround text with pairs:
- `sa` - Add surrounding in Normal and Visual modes
- `sd` - Delete surrounding
- `sf` - Find surrounding (to the right)
- `sF` - Find surrounding (to the left)
- `sh` - Highlight surrounding
- `sr` - Replace surrounding
- `sn` - Update `n_lines`

Examples:
- `saiw)` - Surround inner word with parentheses
- `sd)` - Delete surrounding parentheses
- `sr)"` - Replace surrounding parentheses with quotes

## Mini.comment
Comment operations:
- `gc` - Toggle comment (works with motions like `gcip` - comment inner paragraph)
- `gcc` - Toggle comment on current line
- `gc` - Comment text object (e.g., `dgc` to delete whole comment block)

## Integration with Existing Configuration
These keybindings complement the existing mappings:
- They don't conflict with <Space> leader key
- Work alongside LSP, telescope, and other plugins
- Maintain consistent usage patterns