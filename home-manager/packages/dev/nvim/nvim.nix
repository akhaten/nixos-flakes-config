{pkgs, fetchPypi, lib, ...} : 

let 

	# github-nvim-theme = pkgs.vimUtils.buildVimPluginFrom2Nix {
	# 	name = "github-nvim-theme";
	# 	src = pkgs.fetchFromGitHub {
	# 	  owner = "projekt0n";
	# 	  repo = "github-nvim-theme";
	# 	  rev = "b3f15193d1733cc4e9c9fe65fbfec329af4bdc2a";
	# 	  sha256 = "wLX81wgl4E50mRig9erbLyrxyGbZllFbHFAQ9+v60W4=";
	# 	  #sha256 = lib.fakeSha256;
	# 	};
	# 	meta.homepage = "https://github.com/projekt0n/github-nvim-theme";
	# };

	# cmp-nvim-lsp-signature-help = pkgs.vimUtils.buildVimPluginFrom2Nix {
	# 	name = "cmp-nvim-lsp-signature-help";
	# 	src = pkgs.fetchFromGitHub {
	# 		owner = "hrsh7th";
	# 		repo = "cmp-nvim-lsp-signature-help";
	# 		rev = "d2768cb1b83de649d57d967085fe73c5e01f8fd7";
	# 		sha256 = "13imcdv0yws084z2x2lmdj17zy4ngf126i7djknnwp2jfkca1120";
	# 	};
	# 	meta.homepage = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help/";
  	# };

	toggletasks = pkgs.vimUtils.buildVimPluginFrom2Nix {
		name = "toggletasks";
		src = pkgs.fetchFromGitHub {
		  owner = "jedrzejboczar";
		  repo = "toggletasks.nvim";
		  rev = "7138dda86bd4ec908ef5342e78c60bfbd23f4506";
		  sha256 = "/WGoo6g5UCRnE+AzkAH1R/T2t2UuJNn9Fh49tGe+Jr4=";
		  #sha256 = lib.fakeSha256;
		};
		meta.homepage = "https://github.com/jedrzejboczar/toggletasks.nvim";
  	};

	#telescope = pkgs.vimUtils.buildVimPluginFrom2Nix {
	#	name = "telescope";
	#	src = pkgs.fetchFromGitHub {
	#		owner = "nvim-telescope";
	#		repo = "telescope.nvim";
	#		rev = "d88094fbfd84b297178252230f6faf0e7d2f7650";
	#		sha256 = "Dv3F51o9ETXgaTOhijF+K405K7Aup+wfeCQuF9zhVkw=";
	#		#sha256 = lib.fakeSha256;
	#	};
	#	nativeBuildInputs = with pkgs; [
	#		ripgrep
	#		fd
	#	];
	#};

	telescope-command-palette = pkgs.vimUtils.buildVimPluginFrom2Nix {
		name = "telescope-command-palette";
		#src = pkgs.fetchgit {
		#	url = "https://github.com/LinArcX/telescope-command-palette.nvim.git";
		#	sha256 = "9NzrBoSYuOAMTQLcMSDhZoz1ZHLppeqtiYyHfDd2Ft8=";
		#};
		src = pkgs.fetchFromGitHub {
			owner = "LinArcX";
			repo = "telescope-command-palette.nvim";
			rev = "9ce81be757b71785bde9272c947e76b4743dceeb";
			sha256 = "9NzrBoSYuOAMTQLcMSDhZoz1ZHLppeqtiYyHfDd2Ft8=";
			#sha256 = lib.fakeSha256;
		};
		meta.homepage = "https://github.com/LinArcX/telescope-command-palette.nvim.git";
  	};

	#nvim-ide = pkgs.vimUtils.buildVimPluginFrom2Nix {
	#	name = "nvim-ide";
	#	src = pkgs.fetchFromGitHub {
	#		owner = "ldelossa";
	#		repo = "nvim-ide";
	#		rev = "7a98449f7b3331b215473857d36a93d4d0de3ec5";
	#		sha256 = "sDKTFFtuFJXvOXXEcYk7QndOOFYsXmVfrTaH0l19dn8=";
	#		#sha256 = lib.fakeSha256;
	#	};
	#	meta.homepage = "https://github.com/ldelossa/nvim-ide";
	#};

	#nvim-dev-container = pkgs.vimUtils.buildVimPluginFrom2Nix {
	#	name = "nvim-dev-container";
	#	src = pkgs.fetchFromGitHub {
	#		owner = "esensar";
	#		repo = "nvim-dev-container";
	#		#rev = "ide5ca3b31b8305969f5740d10badd0a6c167d0d7";
	#		rev = "fda41b477f0ea4dae8baa1c4137fa25e9429ceb4";
	#		sha256 = "XNpyauug5Kuzat04AZcECM4mK0eKd7J47VjcXQfPyfE=";
	#		#sha256 = lib.fakeSha256;
	#	};
	#	meta.homepage = "https://github.com/esensar/nvim-dev-container";
	#};


	nvim-neo-tree = pkgs.vimUtils.buildVimPluginFrom2Nix {
	 	name = "nvim-neo-tree";
	# 	src = pkgs.fetchgit {
	# 		url = "https://github.com/nvim-neo-tree/neo-tree.nvim.git";
	# 		sha256 = "n3rTAr7O+5nQy/iDlYQG/aIKxeS1OeQN/2ghO3qc2B8=";
	# 	};
		src = pkgs.fetchFromGitHub {
			owner = "";
			repo = "";
			rev = "";
			sha256 = lib.fakeSha256;
		};
		meta.homepage = "";
	};

	# nvim-cmp-buffer-lines = pkgs.vimUtils.buildVimPluginFrom2Nix {
	# 	name = "nvim-cmp-buffer-lines";
	# 	src = pkgs.fetchgit {
	# 		url = "https://github.com/hrsh7th/cmp-buffer.git";
	# 		sha256 = "dG4U7MtnXThoa/PD+qFtCt76MQ14V1wX8GMYcvxEnbM=";
	# 	};
	# };

	# cmake4vim = pkgs.vimUtils.buildVimPluginFrom2Nix {
	# 	name = "cmake4vim";
	# 	src = pkgs.fetchgit {
	# 		url = "https://github.com/ilyachur/cmake4vim.git";
	# 		sha256 = "FPaVz4eBlaQRDVXdgCDYVokhmfmPShIkI12b5fnnBEI=";
	# 	};
	# };


	# nvim-material-icon = pkgs.vimUtils.buildVimPluginFrom2Nix {
	# 	name = "nvim-material-icon";
	# 	src = pkgs.fetchgit {
	# 		url = "https://github.com/DaikyXendo/nvim-material-icon.git";
	# 		sha256 = "hVTDAmSPoHfrvMuWc81kwZRBskVeTuAIPauVlfjd6gc=";
	# 	};
	# };

	
	#pnglatex = pkgs.python310Packages.buildPythonPackage rec {

	#	pname = "pnglatex";
	# 	version = "1.1";

	# 	src = pkgs.python3Packages.fetchPypi {
	# 		inherit pname version;
	# 		# sha256 = lib.fakeSha256;
	# 		sha256 = "CZUGDUkmttO0BzFYbGFSNMPkWzFC/BW4NmAeOwz4Y9M=";
	# 	};

	# 	doCheck = false;

	 #};

	 #magma-nvim = pkgs.vimUtils.buildVimPluginFrom2Nix {
	 #	name = "magma-nvim";
	 #	version = "2023-03-03";
	 #	src = pkgs.fetchgit {
	 #		url = "https://github.com/dccsillag/magma-nvim.git";
	 #		sha256 = "Fk4SqfdvfLKb7eSpuKlnN5W08MV3ldqbgD90On7Iwjo=";
	 #	};
	 #	buildInputs = with pkgs.python310Packages; [
	 #		pynvim
	 #		jupyter-client
	 #		ueberzug
	 #		pillow
	 #		cairosvg
	 #		plotly
	 #		pnglatex
	 #	];
	 #};

  #magma-nvim-goose = buildVimPluginFrom2Nix {
  #  pname = "magma-nvim-goose";
  #  version = "2023-03-13";
  #  src = fetchFromGitHub {
  #    owner = "WhiteBlackGoose";
  #    repo = "magma-nvim-goose";
  #    rev = "5d916c39c1852e09fcd39eab174b8e5bbdb25f8f";
  #    sha256 = "10d6dh0czdpgfpzqs5vzxfffkm0460qjzi2mfkacgghqf3iwkbja";
  #  };
  #  passthru.python3Dependencies = ps: with ps; [
  #    pynvim
  #    jupyter-client
  #    ueberzug
  #    pillow
  #    cairosvg
  #    plotly
  #    ipykernel
  #    pyperclip
  #    pnglatex
  #  ];
  #  meta.homepage = "https://github.com/WhiteBlackGoose/magma-nvim-goose/";
  #};



in {


	home.packages = with pkgs; [
		gcc
		nodePackages.pyright
		ccls #clangd
		ranger
		ctags

		python310Packages.pynvim

		# Telescope dependencies
		#ripgrep
		#fd
	];

	# programs.ranger = {

    #     enable = true;
      

    # };

	programs.neovim = {

		enable = true;
        
		plugins = with pkgs.vimPlugins; [

			dracula-nvim
			#nvim-tree-lua
			nvim-web-devicons
			telescope-nvim # -> telescope.lua
			#telescope-media-files-nvim
			#telescope-manix
			telescope-file-browser-nvim
			telescope-dap-nvim
			#telescope
			# vim-ccls
			#(nvim-treesitter.withPlugins (plugins: pkgs.tree-sitter.allGrammars))
			(nvim-treesitter.withPlugins 
				(plugins: [
					plugins.tree-sitter-nix
					plugins.tree-sitter-bash
					plugins.tree-sitter-c
					plugins.tree-sitter-cpp
					plugins.tree-sitter-cmake
					plugins.tree-sitter-glsl
					plugins.tree-sitter-rust
					plugins.tree-sitter-python
					plugins.tree-sitter-lua
					plugins.tree-sitter-latex
					plugins.tree-sitter-json
					plugins.tree-sitter-yaml
					plugins.tree-sitter-toml
				])
			)

			nvim-tree-lua
			nvim-lspconfig
			nvim-cmp
			cmp-buffer
			cmp-nvim-lsp
			toggleterm-nvim
			rnvimr
			lualine-nvim
			tagbar
			barbar-nvim
			
			gitsigns-nvim
			nvim-dap
			nvim-dap-ui
			symbols-outline-nvim
			#neo-tree-nvim
			#alpha-nvim
			
			#cmp-nvim-lsp-document-symbol	
			#nvim-material-icon
			#nvim-cmp-buffer-lines

			# Packaging
			# github-nvim-theme # -> github-theme.lua
			cmp-nvim-lsp-signature-help 
			telescope-command-palette # -> telescope.lua
			toggletasks # -> telescope.lua
			#nvim-ide
			#nvim-dev-container
			#magma-nvim
      
      
      
      
		
		];

		# extraConfig = ''
		#     luafile ./nvim_init.lua
		# '';
        extraConfig = ''
          luafile ${builtins.toString ./nvim.lua}
		  luafile ${builtins.toString ./plugins/theme.lua}
		  luafile ${builtins.toString ./plugins/tree.lua}
		  luafile ${builtins.toString ./plugins/telescope.lua}
		  luafile ${builtins.toString ./plugins/toggleterm.lua}
		  luafile ${builtins.toString ./plugins/lspconfig.lua}
		  luafile ${builtins.toString ./plugins/treesitter.lua}
		  luafile ${builtins.toString ./plugins/tagbar.lua}
		  luafile ${builtins.toString ./plugins/lualine.lua}
		  luafile ${builtins.toString ./plugins/cmp.lua}
		  luafile ${builtins.toString ./plugins/barbar.lua}
        '';

		# luafile ${builtins.toString ./plugins/github-theme.lua}
		#   
		#   
		#   
		#   
		#   
		  
		#   

		# TODO
		# luafile ${builtins.toString ./plugins/rnvimr.lua}
		# luafile ${builtins.toString ./plugins/magma.lua}
		# luafile ${builtins.toString ./plugins/dev-container.lua}
		# luafile ${builtins.toString ./plugins/tagbar.lua}
		# https://github.com/lewis6991/gitsigns.nvim	

    };

}
