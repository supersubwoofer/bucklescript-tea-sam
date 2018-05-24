(* This line opens the Tea.App modules into the current scope for Program access functions and types *)
open Tea.App

(* These lines open the SAM modules into the current scope for SAM pattern functions and types *)
open State
open Action
open Model

(* This is the main function, SAM modules are wired to TEA.
  The Program returned here has a set of callbacks that can easily be called from
  Bucklescript or from javascript for running this main attached to an element,
  or even to pass a message into the event loop.  You can even expose the
  constructors to the messages to javascript via the above [@@bs.deriving {accessors}]
  attribute on the `msg` type or manually, that way even javascript can use it safely. *)
let main =
  standardProgram {
    init = init;
    update = (
      fun model actionMsg -> 
      (
        propose actionMsg 
        |> present model 
        |> nextAction
      )
    );
    view = representation;
    subscriptions = (fun _m -> Tea_sub.NoSub);
  }