client/verb/help()
   var/html = file2text('dist/index.html')

   var/polyfill = file2text('dist/polyfills-legacy.js')
   polyfill = "<script>\n[polyfill]\n</script>"
   html = replacetextEx(html, "<!-- polyfill -->", polyfill)

   usr << browse(html, "window=tgui;can_minimize=0;auto_format=0;")