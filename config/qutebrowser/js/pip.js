(() => {
  const v = document.querySelector('video');
  if (!v) return;
  document.title = '__PIP__' + Math.floor(v.currentTime) + '__' + document.title;
  v.pause();
})();
