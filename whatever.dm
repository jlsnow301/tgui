client/verb/help()
   var/html = file2text('index.html')

   var/polyfill = file2text('dist/polyfills-legacy.js')
   polyfill = "<script>\n[polyfill]\n</script>"
   html = replacetextEx(html, "<!-- polyfill -->", polyfill)

   var/legacy_index = file2text('dist/index-legacy.js')
   legacy_index = "<script>\n[legacy_index]\n</script>"
   html = replacetextEx(html, "<!-- legacy index -->", legacy_index)

   usr << browse(html, "window=tgui;can_minimize=0;")