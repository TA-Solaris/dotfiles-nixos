{config, ...}: {
  sops = {
    defaultSopsFile = ./secrets.yaml;
    defaultSopsFormat = "yaml";
    age.keyFile = "/home/ed/.config/sops/age/key.txt";

    secrets = {
      avante-anthropic-api-key = {
        key = "avante_anthropic_api_key";
        owner = "ed";
        group = "users";
        mode = "0400";
      };

      automwrite-anthropic-api-key = {
        key = "automwrite_anthropic_api_key";
        owner = "ed";
        group = "users";
        mode = "0400";
      };

      ngrok-authtoken = {
        key = "ngrok_authtoken";
        owner = "ed";
        group = "users";
        mode = "0400";
      };
    };

    templates.ngrok-yml = {
      owner = "ed";
      group = "users";
      mode = "0400";
      content = ''
        version: "3"
        agent:
            authtoken: ${config.sops.placeholder.ngrok-authtoken}
      '';
    };
  };
}
