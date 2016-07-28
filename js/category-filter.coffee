---
---
navList = document.getElementsByClassName 'trigger'
navItems = navList[0].getElementsByTagName 'a'
bookList = document.getElementsByClassName 'post-list'
bookItems = bookList[0].getElementsByTagName 'li'

addEventHandler = (targetEl, eventType, handlerFn) ->
  if targetEl.addEventListener
    targetEl.addEventListener eventType, handlerFn, false
  else if targetEl.attachEvent
    targetEl.attachEvent 'on' + eventType, handlerFn
  else
    targetEl['on' + eventType] = handlerFn

toggleDisplay = (item, show) ->
  style = item.getAttribute 'style'
  value = if show then 'block' else 'none'

  if style.indexOf('display:') >= 0
    style = style.replace /display:\s*\w+/, 'display: ' + value
  else
    style = 'display: ' + value + '; ' + style

  item.setAttribute 'style', style

filter = (event) ->
  target = event.target
  text = target.innerHTML.toLowerCase()

  for item in bookItems
    toggleDisplay item, item.getAttribute('data-category') == text

for item in navItems
  if item.getAttribute('href').indexOf('javascript') == 0
    addEventHandler item, 'click', filter
