// Generated by CoffeeScript 1.8.0
(function() {
  var Panel, doScrollCheck, documentIsReady, documentReady, documentReadyHandler, panel;

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

    return Panel;

  })();

  documentReadyHandler = function(fn) {
    var documentIsReady;
    if (!documentIsReady) {
      documentIsReady = true;
      if (document.addEventListener) {
        document.removeEventListener("DOMContentLoaded", (function() {
          documentReadyHandler(fn);
        }), false);
      } else if (document.attachEvent) {
        if (document.readyState === "complete") {
          document.detachEvent("onreadystatechange", function() {
            documentReadyHandler(fn);
          });
        }
      }
      fn();
    }
  };

  documentReady = function(fn) {
    var toplevel;
    if (document.addEventListener) {
      document.addEventListener("DOMContentLoaded", (function() {
        documentReadyHandler(fn);
      }), false);
      window.addEventListener("load", (function() {
        documentReadyHandler(fn);
      }), false);
    } else if (document.attachEvent) {
      document.attachEvent("onreadystatechange", function() {
        documentReadyHandler(fn);
      });
      window.attachEvent("onload", function() {
        documentReadyHandler(fn);
      });
      toplevel = false;
      try {
        toplevel = window.frameElement == null;
      } catch (_error) {}
      if (document.documentElement.doScroll && toplevel) {
        doScrollCheck(function() {
          documentReadyHandler(fn);
        });
      }
    }
  };

  doScrollCheck = function(fn) {
    var error;
    if (documentIsReady) {
      return;
    }
    try {
      document.documentElement.doScroll("left");
    } catch (_error) {
      error = _error;
      window.setTimeout((function() {
        doScrollCheck(fn);
      }), 1);
      return;
    }
    fn();
  };

  documentIsReady = false;

  window.$pb = {};

  window.$pb.documentReady = documentReady;

  panel = void 0;

  $pb.documentReady(function() {
    console.log('initializintg');
    return panel = new Panel();
  });

}).call(this);
