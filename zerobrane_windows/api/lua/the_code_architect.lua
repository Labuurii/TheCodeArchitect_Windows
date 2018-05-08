return {
  grid = {
    type = "lib",
    description = "The grid in which you place blocks.",
    childs = {
      set_slot = {
        type = "method",
        description = "Sets a slot in the grid with a specific block. If there are any block there already it is overridden.",
        args = "(type: BlockType, x: number, y: number, z: number)",
        returns = "void"
      },
      delete_slot = {
        type = "method",
        description = "Deletes a slot at a specific spot in the grid.",
        args = "(x: number, y: number, z: number, [log_if_empty: bool = true])",
        returns = "void"
      },
      clear = {
        type = "method",
        description = "Clears the grid. Behaves exactly the same as when any script is rerun",
        returns = "void"
      }
    }
  },
  block_types = {
    type = "lib",
    description = "Here you can get all the block types which is used with grid.set_slot to add blocks to the grid.",
    childs = {
      __index = {
        type = "method",
        description = "Get block type by name or index.",
        args = ("index: string|number"),
        returns = "BlockType"
      },
      count = {
        type = "value",
        description = "The amount of block types.",
        valuetype = "number"
      },
      getn = {
        type = "value",
        description = "The amount of block types.",
        valuetype = "number"
      },
      length = {
        type = "value",
        description = "The amount of block types.",
        valuetype = "number"
      }
    }
  },
  sleep = {
    type = "function",
    description = "Sleeps for x milliseconds.",
    args = "(ms: number)",
    returns = "void"
  }
}