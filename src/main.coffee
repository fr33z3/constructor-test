@constructorPanel = new ConstructorPanel()
@draggingElement = undefined
@placements = []

checkForInterest = (el)->
  el &&
  el.nodeName != '#text' &&
  el.id != 'constructor-panel' &&
  el.id != 'constructor-panel-background' &&
  el.classList[0] != 'banner'

childArray = (node)->
  array = []
  for node in node.childNodes
    array.push node
  array

generatePlacements = (parent)->
  childNodes = childArray(parent)
  lastNode = undefined
  for node in childNodes
    if checkForInterest(node)
      generatePlacements(node)
      new BannerPlacement(node, 'before')
      lastNode = node
  if lastNode
    new BannerPlacement(lastNode, 'after')


$dom.onready =>
  @constructorPanel.attachTo(document.body)
  generatePlacements(document.body)

# For tests

@firstBanner = ->
  new Banner('https://s3-ap-southeast-1.amazonaws.com/asia-user-profile/pictures/1045/original.gif?1419598643')

@secondBanner = ->
  new Banner('http://static.aforextrading.com/pictures/1036/original.gif')

@constructorPanel.addBanner(@firstBanner())
@constructorPanel.addBanner(@secondBanner())
