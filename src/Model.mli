open Type
val initModel : model
val init : unit -> model * action Tea_cmd.t
val present : model -> model -> model