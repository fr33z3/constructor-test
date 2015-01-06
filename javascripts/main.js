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
  alert(1);
  console.log(event);
}