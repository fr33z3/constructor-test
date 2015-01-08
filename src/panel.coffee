class Panel
  constructor: ->
    @el = document.createElement('div')
    body = document.body
    console.log(body)
    body.appendChild(@el)
    console.log('started')

  show: ->
    @el.style.visibility = 'visible';

  hide: ->
    @el.style.visibility = 'hidden';