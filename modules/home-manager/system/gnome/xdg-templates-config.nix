{
  pkgs,
  lib,
  config,
  ...
}: {
  options = {
    xdg-templates-config.enable = lib.mkEnableOption "Enable XDG Templates configuration";
  };

  config = lib.mkIf config.xdg-templates-config.enable (
    let
      templates = [
        {
          name = "New File";
          text = "";
        }
        /*
        {
          name = "New Text File.txt";
          text = "";
        }
        {
          name = "New Shell Script.sh";
          text = "";
        }
        {
          name = "New CSS File.css";
          text = "";
        }
        {
          name = "New Dockerfile";
          text = "";
        }
        {
          name = "New HTML File.html";
          text = "";
        }
        {
          name = "New Java File.java";
          text = "";
        }
        {
          name = "New JavaScript File.js";
          text = "";
        }
        {
          name = "New Markdown File.md";
          text = "";
        }
        {
          name = "New Python File.py";
          text = "";
        }
        {
          name = "New TypeScript File.ts";
          text = "";
        }
        {
          name = "New XML File.xml";
          text = "";
        }
        */
      ];
    in {
      home.file = lib.listToAttrs (map (t: {
          name = "Templates/${t.name}";
          value = {text = t.text;};
        })
        templates);
    }
  );
}
