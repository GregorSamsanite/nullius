local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "custom-input",
    name = "nullius-prioritize",
    order = "nullius-ibb",
    key_sequence = "PAD +",
	include_selected_prototype = true
  },
  {
    type = "custom-input",
    name = "nullius-mirror",
    order = "nullius-ibc",
    key_sequence = "PAD *",
	include_selected_prototype = true
  },
  {
    type = "custom-input",
    name = "nullius-upload-mind",
    order = "nullius-icb",
    key_sequence = "U",
    include_selected_prototype = true
  },
  {
    type = "custom-input",
    name = "nullius-previous-body",
    order = "nullius-icc",
    key_sequence = "SHIFT + U"
  },
  {
    type = "custom-input",
    name = "nullius-next-body",
    order = "nullius-icd",
    key_sequence = "CONTROL + U"
  }
})
