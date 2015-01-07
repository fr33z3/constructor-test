console.log(123);
constructorListener = function(event) {
  // data = event.data
  // body = document.body
  // if (data.type == 'setUp') {
  // }
  alert(event.data.type)
}

if (window.addEventListener) {
  addEventListener("message", constructorListener, false)
} else {
  attachEvent("onmessage", constructorListener)
}