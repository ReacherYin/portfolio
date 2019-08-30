lang = window.navigator.userLanguage || window.navigator.language
relang = lang.toLowerCase()
if relang == "zh-tw" then $('html').attr('lang',lang) else $('html').attr('lang','en')