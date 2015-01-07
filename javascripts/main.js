console.log(123);

previewDiv = function(objectSize) {
  "<div width=" + objectSize.width + " height=" + objectSize.height + ">"
  "</div>"
}

constructorListener = function(event) {
  alert(prepareDiv(event.data))
}

if (window.addEventListener) {
  addEventListener("message", constructorListener, false)
} else {
  attachEvent("onmessage", constructorListener)
}