> ./_.js > BC

< (kind, msg...)=>
  BC.postMessage [...msg,kind]
  return
