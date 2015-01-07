constructorListener = function(event) {
  body = document.body
  body.innerHTML = body.innerHTML + 'some data'
}

if (window.addEventListener) {
  addEventListener("message", constructorListener, false)
} else {
  attachEvent("onmessage", constructorListener)
}