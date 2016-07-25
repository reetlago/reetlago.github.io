---
---
list = document.getElementsByClassName 'post-list'
items = list[0].getElementsByTagName 'li'
zIndex = 100 + items.length

for item in items
  degrees = Math.round Math.random() * 1
  dsign = if Math.random() > .5 then 1 else -1

  offset = Math.round Math.random() * 40
  osign = if Math.random() > .5 then 1 else -1

  item.setAttribute 'style',
    'z-index: ' + zIndex + ';' +
    ' transform: rotate(' + (dsign * degrees) + 'deg);' +
    ' left: ' + (osign * offset) + 'px;';

  zIndex -= 1
