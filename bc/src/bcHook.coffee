> ./_.js > HOOK

< (kind, func)=>
  HOOK.set kind, func
  =>
    HOOK.delete kind
    return

