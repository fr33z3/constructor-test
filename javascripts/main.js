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

var body = document.getElementsByTagName("body")[0]

body.addEventListener('ondragover', dragOverHandler);
body.addEventListener('ondrop', dropHandler);

