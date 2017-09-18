open Type
val getState : model -> state
val representation: model -> action Vdom.t
val nextAction : model -> model * action Tea_cmd.t