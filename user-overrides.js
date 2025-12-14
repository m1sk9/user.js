// アドレスバーに "https://" や "http://" を表示する (愚かなブラウザ Chrome のマネせんといてくれ)
user_pref("browser.urlbar.trimURLs", false);

// 終了時のサニタイズ機能を全て無効化
user_pref("privacy.sanitize.sanitizeOnShutdown", false);
user_pref("privacy.clearOnShutdown_v2.cache", false);
user_pref("privacy.clearOnShutdown_v2.cookiesAndStorage", false);
user_pref("privacy.clearOnShutdown_v2.formdata", false);
