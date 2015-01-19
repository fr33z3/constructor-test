@bannerPlacements = []

class BannerPlacement
  constructor: (@docElement, @type)->
    @banners = []
    @el = $dom.create('div.placement')
    if @type == 'before'
      @placeBefore()
    else
      @placeAfter()

    @el.addEventListener 'dragenter', @dragEnter.bind(@), false
    @el.addEventListener 'drop', @drop.bind(@), false
    bannerPlacements.push(@)

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
  
  dragEnter: (event)->
    @el.appendChild(draggingElement.image())
  
  drop: (event)->
    console.log(1)
    @addBanner(draggingElement)
    for placement in bannerPlacements
      if placement != @
        placement.removeBanner(draggingElement)
    
  addBanner: (banner)->
    @removeBanner(banner)
    @banners.push(banner)

  removeBanner: (banner)->
    @banners = @banners.delete(banner)
