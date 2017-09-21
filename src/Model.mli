open Type
val initModel : model
val init : unit -> model * actionMsg Tea_cmd.t
val present : model -> proposal -> model