(function() {
  var lang, relang;

  lang = window.navigator.userLanguage || window.navigator.language;

  relang = lang.toLowerCase();

  if (relang === "zh-tw") {
    $('html').attr('lang', lang);
  } else {
    $('html').attr('lang', 'en');
  }

}).call(this);
