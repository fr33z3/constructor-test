draggedElement = undefined

class @Banner
  constructor: (@uri)->
    @previewImage = $dom.create('img.banner')
    $dom.style(@previewImage, BANNER_IMG_STYLE)
    @previewImage.onload = @normalizePreview.bind(@)
    @previewImage.src = @uri
    @previewImage.draggable = true

    @previewImage.addEventListener 'dragstart', @previewElementDragStart.bind(@), false
    
    @_image = $dom.create('img.banner')
    @_image.src = @uri

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

insertElement = (target, insertingElement)->
  unless target == insertingElement
    if target.tagName == 'BODY'
      console.log("appendChild:")
      console.log(target)
      target.appendChild(insertingElement)
    else if target && target.parentNode
      console.log("insertBefore:")
      console.log(target)
      target.parentNode.insertBefore(insertingElement, target)

dragEnter = (event)->
  target = event.target
  if target && target != draggedElement.image()
    insertElement(target, draggedElement.image())

dragOver = (event)->
  event.preventDefault()
  false

document.addEventListener 'dragenter', dragEnter, false
document.addEventListener 'dragover', dragOver, false
