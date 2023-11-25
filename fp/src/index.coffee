< =>
  {
    screen: {
      width
      height
    }
    MobileDevice:m
    devicePixelRatio
  } = window
  r = [
    [
      width
      height
      devicePixelRatio or 0
    ]
  ]

  if m
    canvas = doc 'canvas'
    gl = canvas.getContext('webgl')
    d = gl.getExtension('WEBGL_debug_renderer_info')
    if d
      r.push 'm'+gl.getParameter(d.UNMASKED_RENDERER_WEBGL)
  r
