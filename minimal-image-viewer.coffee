class MinimalImageViewer

# Image Zooming
overlay_elm = document.getElementById('overlay')
overlay_img_elm = document.getElementById('overlay-img')
overlay_caption_elm = document.getElementById('overlay-caption')

hide_overlay = ->
  overlay_elm.classList.add('out') if overlay_elm

if overlay_elm
  overlay_elm.onclick = (e)-> hide_overlay()

  img_elms = document.querySelectorAll('img')
  for img_elm in img_elms
    img_elm.onclick = (e)->
      overlay_img_elm.src = this.src
      overlay_caption_elm.textContent = this.alt
      overlay_elm.classList.remove('out')


# Scrolling and Image Zooming
window.onscroll = (e)->
  hide_overlay()