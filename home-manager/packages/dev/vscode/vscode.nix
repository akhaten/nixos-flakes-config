{pkgs, config, lib, ...} :
{

    # pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    #         {
    #             name = "cpptools-extension-pack";
    #             publisher = "ms-vscode";
    #             version = "1.3.0";
    #             sha256 = "rHST7CYCVins3fqXC+FYiS5Xgcjmi7QW7M4yFrUR04U=";
    #         }
    #     ];

    programs.vscode = {

        enable = true;
        package = pkgs.vscode.fhs; # Solve cpptools server problem
        extensions = with pkgs.vscode-extensions; [
            bbenoist.nix
            ms-python.python
            # james-yu.latex-workshop
            ms-vscode-remote.remote-ssh
            # ms-vscode.cpptools-extension-pack
            # ms-vscode-remote.remote-containers
            # ms-vscode-remote.remote-containers
            # ms-vscode.cpptools
            # ms-vscode.cmake-tools
            # llvm-vs-code-extensions.vscode-clangd
            # ms-toolsai.jupyter
            # ms-toolsai.jupyter-keymap
            # ms-vscode-remote.remote-ssh
            # ms-toolsai.vscode-jupyter-slideshow
            # ms-toolsai.vscode-jupyter-cell-tags
            james-yu.latex-workshop
	        # ms-vscode.cmake-tools
            # ms-vscode.cpptools-extension-pack
            # twxs.cmake
            # spmeesseman.vscode-taskexplorer
        ];
        # ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        #     {
        #         name = "cpptools-extension-pack";
        #         publisher = "ms-vscode";
        #         version = "1.3.0";
        #         sha256 = "rHST7CYCVins3fqXC+FYiS5Xgcjmi7QW7M4yFrUR04U=";
        #         # sha256 = "0000000000000000000000000000000000000000000000000000";
        #     }
            # {
            #     name = "nightwatch";
            #     publisher = "browserstackcom";
            #     version = "0.1.1";
            #     sha256 = "P0zxonSNTHaTAa+vqw8SjcLbDpbtESyjZl1zft3rzoA=";
            # }
        # ];
    };
    

}

