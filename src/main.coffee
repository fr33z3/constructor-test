@constructorPanel = new ConstructorPanel()
$dom.onready =>
  @constructorPanel.attachTo(document.body)

# For tests

@firstBanner = ->
  new Banner('https://s3-ap-southeast-1.amazonaws.com/asia-user-profile/pictures/1045/original.gif?1419598643')

@secondBanner = ->
  new Banner('http://static.aforextrading.com/pictures/1036/original.gif')

@constructorPanel.addBanner(@firstBanner())
@constructorPanel.addBanner(@secondBanner())