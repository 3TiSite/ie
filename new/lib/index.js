export default new Proxy({}, {
  get: (_, tag) => {
    return document.createElement(tag);
  }
});
