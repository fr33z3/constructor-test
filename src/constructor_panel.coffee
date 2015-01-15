class @ConstructorPanel
  constructor: ->
    @banners = []

    @background = $dom.create("div#constructor-panel-background")
    @panel = $dom.create("div#constructor-panel")
    $dom.style(@background, PANEL_BACKGROUND_STYLE)
    $dom.style(@panel, PANEL_STYLE)

  addBanner: (banner) ->
    @banners.push(banner)
    @panel.appendChild banner.previewImage

  removeBanner: (banner) ->
    @banners.push(banner)
  
  width: ->
    @background.clientWidth

  show: ->
    $dom.style(@background, {left: "0px"})
    $dom.style(@panel, {left: "0px"})

  hide: ->
    $dom.style(@background, {left: "#{-@width()}px"})
    $dom.style(@panel, {left: "#{-@width()}px"})

  attachTo: (element)->
    element.appendChild(@background)
    element.appendChild(@panel)
