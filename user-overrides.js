// アドレスバーに "https://" や "http://" を表示する (愚かなブラウザ Chrome のマネせんといてくれ)
user_pref("browser.urlbar.trimURLs", false);

// 終了時のサニタイズ機能を全て無効化
user_pref("privacy.sanitize.sanitizeOnShutdown", false);
user_pref("privacy.clearOnShutdown_v2.cache", false);
user_pref("privacy.clearOnShutdown_v2.cookiesAndStorage", false);
user_pref("privacy.clearOnShutdown_v2.formdata", false);

// ダウンロード時に保存場所を尋ねず、自動的にダウンロードフォルダに保存する
user_pref("browser.download.useDownloadDir", true);

// 起動時にホームページを表示する
user_pref("browser.startup.page", 1);
user_pref("browser.startup.homepage", "https://www.perplexity.ai/");

