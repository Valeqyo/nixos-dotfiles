{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Valeqyo";
        email = "comariusdorel@gmail.com";
      };

      init.defaultBranch = "main";
    };
  };
}
