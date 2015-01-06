// constructorListener = function(event) {
//   alert(event.origin + ' ' + event.data);
// }

// if (window.addEventListener) {
//   addEventListener("message", constructorListener, false)
// } else {
//   attachEvent("onmessage", constructorListener)
// }

dragOverHandler = function(event) {
  event.preventDefault();
}

dropHandler = function(event) {
  console.log(event);
}

window.onload = function(){
  var body = document.body;
  body.addEventListener('dragover', dragOverHandler);
  body.addEventListener('drop', dropHandler);
}

