draggedElement = undefined

class @Banner
  constructor: (@uri)->
    @previewImage = $dom.create('img.banner')
    $dom.style(@previewImage, BANNER_IMG_STYLE)
    @previewImage.onload = @normalizePreview.bind(@)
    @previewImage.src = @uri
    @previewImage.draggable = true

    @_image = $dom.create('img.banner')
    @_image.src = @uri

    @previewImage.addEventListener 'dragstart', @previewElementDragStart.bind(@), false
    @_image.addEventListener 'dragstart', @previewElementDragStart.bind(@), false

  previewWidth: ->
    @previewImage.naturalWidth

  previewHeight: ->
    @previewImage.naturalHeight

  normalizePreview: ->
    if @previewWidth() > 400
      @previewImage.width = 400
    else if @previewHeight() > 100
      @previewImage.height = 100

  previewElementDragStart: (event) ->
    draggedElement = @
    setTimeout ->
      constructorPanel.hide()
    , 1
  
  image: ->
    @_image

dragEnter = (event)->
  target = event.target
  target.appendChild(draggedElement.image())

$dom.onready ->
  placementElements = $dom.get('.placement')
  for el in placementElements
    el.addEventListener 'dragenter', dragEnter, false
