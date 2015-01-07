constructorListener = function(event) {
  data = event.data
  body = document.body
  if (data.type == 'setUp') {
    alert(data)
  }
}

if (window.addEventListener) {
  addEventListener("message", constructorListener, false)
} else {
  attachEvent("onmessage", constructorListener)
}