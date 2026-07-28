{ ... }:

{
  services.keyd = {
    enable = true;
    keyboards.default = {
      ids = [ "*" ];
	    settings = {
	      main = {
	      	leftalt = "layer(fkeys)";
	      };

	      fkeys = {
	      	"1" = "f1";
	      	"2" = "f2";
	      	"3" = "f3";
	      	"4" = "f4";
	      	"5" = "f5";
	      	"6" = "f6";
	      	"7" = "f7";
	      	"8" = "f8";
	      	"9" = "f9";
	      	"0" = "f10";
	      	minus = "f11";
	      	equal = "f12";
	      };
	    };
    };
  };

  environment.etc."libinput/local-overrides.quirks".text = ''
    [Serial Keyboards]
    MatchUdevType=keyboard
    MatchName=keyd virtual keyboard
    AttrKeyboardIntegration=internal
  '';
}
