rule = {
  matches = {
    {
      { "node.name", "matches", "bluez_card.*" },
    },
  },
  actions = {
    update-props = {
      ["bluez5.enable-hfp"] = false,
    },
  },
}
