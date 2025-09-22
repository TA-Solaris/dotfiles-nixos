{ pkgs, lib, config, ... }: let
  defaultSettings = {
    "app.shield.optoutstudies.enabled" = false;
    "browser.bookmarks.restore_default_bookmarks" = false;
    "browser.bookmarks.showMobileBookmarks" = false;
    "browser.download.panel.shown" = true;
    "browser.ml.chat.provider" = "https://chatgpt.com";
    "browser.ml.chat.shortcuts" = false;
    "browser.newtabpage.activity-stream.feeds.section.topstories" = false;
    "browser.newtabpage.activity-stream.feeds.topsites" = false;
    "browser.newtabpage.activity-stream.showSponsored" = false;
    "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
    "browser.startup.page" = 3;
    "browser.toolbarbuttons.introduced.sidebar-button" = true;
    "browser.toolbars.bookmarks.visibility" = "never";
    "browser.urlbar.placeholderName" = "Google";
    "browser.urlbar.placeholderName.private" = "Google";
    "browser.urlbar.shortcuts.bookmarks" = false;
    "browser.urlbar.shortcuts.history" = false;
    "browser.urlbar.shortcuts.tabs" = false;
    "browser.warnOnQuitShortcut" = false;
    "privacy.donottrackheader.enabled" = true;
    "sidebar.main.tools" = "history,bookmarks,aichat";
    "sidebar.revamp" = true;
    "sidebar.verticalTabs" = true;
    "sidebar.visibility" = "expand-on-hover";
  };
in {

  # This is kinda a trial of using firefox with home manager
  
  options = {
    firefox-config.enable = lib.mkEnableOption "enables firefox config";
  };

  config = lib.mkIf config.firefox-config.enable {
    programs.firefox = {
      enable = true;
      profiles.default = {
        id = 0;
        name = "Ed";
        isDefault = true;
        settings = defaultSettings;
      };
    };
  };

}
