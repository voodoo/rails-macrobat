imageIsLoaded =  (e) -> 
  console.log(e)
  thumb = document.getElementById('meal_pic_thumb')
  thumb.style.display = 'block'
  thumb.src =  e.target.result
fileChange = (e) ->
  file = e.target.files[0]
  reader = new FileReader();
  reader.onload = imageIsLoaded;
  reader.readAsDataURL(file);
 
if document.getElementById('meal_pic')
  document.addEventListener "turbolinks:load", () ->
    document.getElementById('meal_pic').addEventListener 'change', fileChange, false
