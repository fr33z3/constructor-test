// constructorListener = function(event) {
//   alert(event.origin + ' ' + event.data);
// }

// if (window.addEventListener) {
//   addEventListener("message", constructorListener, false)
// } else {
//   attachEvent("onmessage", constructorListener)
// }

dragOverHandler = function(event) {
  console.log(event);
}

dropHandler = function(event) {
  event.preventDefault();
}

var body = Document.getElementsByTagName("body")[0];
console.log(body);

body.addEventListener('ondragover', dragOverHandler);
body.addEventListener('ondrop', dropHandler);

