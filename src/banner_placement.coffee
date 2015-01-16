class BannerPlacement
  constructor: (@docElement, @type)->
    @el = $dom.create('div.placement')
    if @type == 'before'
      @placeBefore()
    else
      @placeAfter()

  placeAfter: ()->
    parent = @docElement.parentNode
    next = @docElement.nextSibling
    if next
      parent.insertBefore(@el, next)
    else
      parent.appendChild(@el)

  placeBefore: ()->
    parent = @docElement.parentNode
    parent.insertBefore(@el, @docElement)
