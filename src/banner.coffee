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

# insertElement = (target, insertingElement)->
#   unless target == insertingElement
#     if target.tagName == 'BODY'
#       console.log("appendChild:")
#       console.log(target)
#       target.appendChild(insertingElement)
#     else if target && target.parentNode
#       console.log("insertBefore:")
#       console.log(target)
#       target.parentNode.insertBefore(insertingElement, target)

# dragEnter = (event)->
#   target = event.target
#   if target && target != draggedElement.image()
#     insertElement(target, draggedElement.image())

# dragOver = (event)->
#   event.preventDefault()
#   false

# document.addEventListener 'dragenter', dragEnter, false
# document.addEventListener 'dragover', dragOver, false

dragEnter = (event)->
  target = event.target
  target.appendChild(draggedElement.image())

$dom.onready ->
  placementElements = $dom.get('.placement')
  console.log(placementElements)
  for el in placementElements
    el.addEventListener 'dragenter', dragEnter, false
