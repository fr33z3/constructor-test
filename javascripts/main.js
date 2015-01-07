constructorListener = function(event) {
  console.log(event.origin + ' ' + event.data);
}

if (window.addEventListener) {
  addEventListener("message", constructorListener, false)
} else {
  attachEvent("onmessage", constructorListener)
}