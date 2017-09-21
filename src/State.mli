open Type
val getState : model -> state
val representation: model -> actionMsg Vdom.t
val nextAction : model -> model * actionMsg Tea_cmd.t