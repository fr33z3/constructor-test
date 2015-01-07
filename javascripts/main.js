console.log(123);

previewDiv = function(objectSize) {
  div = "<div width=" + objectSize.width + " height=" + objectSize.height + ">" + "</div>"
  return div;
}

constructorListener = function(event) {
  body = document.body
  body.innerHTML = previewDiv(event.data);
}

if (window.addEventListener) {
  addEventListener("message", constructorListener, false)
} else {
  attachEvent("onmessage", constructorListener)
}