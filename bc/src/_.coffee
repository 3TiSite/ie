> @3-/on:On

< HOOK = new Map

< BC = new BroadcastChannel ''

On BC,{
  message:(e)=>
    {data} = e
    kind = data.pop()
    HOOK.get(kind)(...data)
    return
}
