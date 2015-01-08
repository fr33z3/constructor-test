documentReadyHandler = (fn) ->
  unless documentIsReady
    documentIsReady = true
    if document.addEventListener
      document.removeEventListener "DOMContentLoaded", (->
        documentReadyHandler fn
        return
      ), false
    else if document.attachEvent
      if document.readyState is "complete"
        document.detachEvent "onreadystatechange", ->
          documentReadyHandler fn
          return

    fn()
  return
documentReady = (fn) ->
  
  # Mozilla, Opera and webkit nightlies currently support this event
  if document.addEventListener
    
    # Use the handy event callback
    document.addEventListener "DOMContentLoaded", (->
      documentReadyHandler fn
      return
    ), false
    
    # A fallback to window.onload, that will always work
    window.addEventListener "load", (->
      documentReadyHandler fn
      return
    ), false
  
  # If IE event model is used
  else if document.attachEvent
    
    # ensure firing before onload,
    # maybe late but safe also for iframes
    document.attachEvent "onreadystatechange", ->
      documentReadyHandler fn
      return
     
    # A fallback to window.onload, that will always work
    window.attachEvent "onload", ->
      documentReadyHandler fn
      return
     
    # If IE and not a frame
    # continually check to see if the document is ready
    toplevel = false
    try
      toplevel = not window.frameElement?
    if document.documentElement.doScroll and toplevel
      doScrollCheck ->
        documentReadyHandler fn
        return

  return
doScrollCheck = (fn) ->
  return  if documentIsReady
  try
    
    # If IE is used, use the trick by Diego Perini
    # http://javascript.nwbox.com/IEContentLoaded/
    document.documentElement.doScroll "left"
  catch error
    window.setTimeout (->
      doScrollCheck fn
      return
    ), 1
    return
  fn()
  return
documentIsReady = false
window.$pb = {}
window.$pb.documentReady = documentReady
