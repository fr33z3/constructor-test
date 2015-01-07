console.log(123);
constructorListener = function(event) {
  // data = event.data
  // body = document.body
  // if (data.type == 'setUp') {
  // }
  console.log(event.data)
}

if (window.addEventListener) {
  addEventListener("message", constructorListener, false)
} else {
  attachEvent("onmessage", constructorListener)
}