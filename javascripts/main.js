constructorListener = function(event) {
  alert(event.origin + ' ' + event.data);
}

if (window.addEventListener) {
  addEventListener("message", constructorListener, false)
} else {
  attachEvent("onmessage", constructorListener)
}