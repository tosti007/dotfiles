// Mozilla User Preferences
user_pref("browser.sessionstore.warnOnQuit", false); // Does this imply "Restore previous session"?
user_pref("browser.ctrlTab.recentlyUsedOrder", false);
user_pref("browser.link.open_newwindow", true);
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.loadInBackground", false);
user_pref("layout.spellcheckDefault", 1);
user_pref("accessibility.typeaheadfind", false);
user_pref("media.videocontrols.picture-in-picture.video-toggle.enabled", false);
user_pref("browser.search.widget.inNavBar", false);
user_pref("browser.contentblocking.category", "strict");
user_pref("signon.rememberSignons", false);

// Required for chrome
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("layers.acceleration.force-enabled", true);
user_pref("gfx.webrender.all", true);
user_pref("svg.context-properties.content.enabled", true);
