// Generated by CoffeeScript 1.8.0
(function() {
  var Panel, panel;

  Panel = (function() {
    function Panel() {
      var body;
      this.el = document.createElement('div');
      body = document.body;
      console.log(body);
      body.appendChild(this.el);
      console.log('started');
    }

    Panel.prototype.show = function() {
      return this.el.style.visibility = 'visible';
    };

    Panel.prototype.hide = function() {
      var Banner;
      this.el.style.visibility = 'hidden';
      return Banner = (function() {
        function Banner() {}

        return Banner;

      })();
    };

    Panel.prototype.a = 1;

    return Panel;

  })();

  panel = void 0;

  this.onload = function() {
    return console.log('initializintg');
  };

}).call(this);
