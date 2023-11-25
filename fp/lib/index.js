import New from '@~3/new';

export default () => {
  var canvas, d, devicePixelRatio, gl, height, m, r, width;
  ({
    screen: {width, height},
    MobileDevice: m,
    devicePixelRatio
  } = window);
  r = [[width, height, devicePixelRatio || 0]];
  if (m) {
    canvas = New('canvas');
    gl = canvas.getContext('webgl');
    d = gl.getExtension('WEBGL_debug_renderer_info');
    if (d) {
      r.push('m' + gl.getParameter(d.UNMASKED_RENDERER_WEBGL));
    }
  }
  return r;
};
