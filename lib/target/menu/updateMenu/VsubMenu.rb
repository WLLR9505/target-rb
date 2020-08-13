module VsubMenu
    def VsubMenu.update(menu, submenu, control, cl)
        puts "\e[H\e[2J"
        mTam = 0, subTam = 0, i = 0, i2 = 0
        meiosub = (submenu.length / 2).to_i - 1
        mTam = menu.length
        subTam = submenu.length

        menuBaixo = (mTam - control.getPos1).to_i
        menuCima = (control.getPos1).to_i
        subBaixo = (subTam - meiosub).to_i
        subCima = (meiosub - 1).to_i

        if subCima > menuCima
            #Se faltar espaço a cima
            until subCima > menuCima
                #Move o SubMenu para baixo
                subBaixo = subBaixo +1
                subCima = subCima -1
                meiosub = meiosub -1
            end
        elsif subBaixo > menuBaixo
            #Se faltar espaço a baixo
            until subBaixo > menuBaixo
                #Move o SubMenu para cima
                subCima
                subBaixo
                meiosub
            end
        end

        nAselecionado = control.getPos1
        nAmeio = meiosub
        inicioSubmenu = nAselecionado - nAmeio

        for i in i...menu.length do
            if i == inicioSubmenu || (i > inicioSubmenu && i < (subTam + inicioSubmenu))
                for i2 in i2...subTam do
                    if menu[i].kind_of?(Array)
                        if i2 == control.getPos2
                            if i == control.getPos1
                                print("#{Palette.colors[cl][2]}#{menu[i2]}   #{Palette.colors[15][1]}")
                                print("#{Palette.colors[cl][2]}#{submenu[i2]}   #{Palette.colors[15][1]}\n")
                            else
                                print("#{Palette.colors[cl][2]}#{menu[i2]}   #{Palette.colors[15][1]}")
                                print("#{Palette.colors[cl][2]}#{submenu[i2]}   #{Palette.colors[15][1]}\n")
                            end
                        elsif i == control.getPos1
                            print("#{Palette.colors[cl][2]}#{menu[i2]}   #{Palette.colors[15][1]}")
                            print("#{Palette.colors[cl][2]}#{submenu[i2]}   #{Palette.colors[15][1]}\n")
                        else
                            print("#{Palette.colors[cl][2]}#{menu[i2]}   #{Palette.colors[15][1]}")
                            print("#{Palette.colors[cl][2]}#{submenu[i2]}   #{Palette.colors[15][1]}\n")
                        end
                    else
                        if i2 == control.getPos2
                            if i == control.getPos1
                                print("#{Palette.colors[cl][2]}#{menu[i2]}   #{Palette.colors[15][1]}")
                                print("#{Palette.colors[cl][2]}#{submenu[i2]}   #{Palette.colors[15][1]}\n")
                            else
                                print("#{Palette.colors[cl][2]}#{menu[i2]}   #{Palette.colors[15][1]}")
                                print("#{Palette.colors[cl][2]}#{submenu[i][0]}   #{Palette.colors[15][1]}\n")
                            end
                        elsif i == control.getPos1
                            print("#{Palette.colors[cl][2]}#{menu[i2]}   #{Palette.colors[15][1]}")
                            print("#{Palette.colors[cl][2]}#{submenu[i2]}   #{Palette.colors[15][1]}\n")
                        else
                            print("#{Palette.colors[cl][2]}#{menu[i2]}   #{Palette.colors[15][1]}")
                            print("#{Palette.colors[cl][2]}#{submenu[i2]}   #{Palette.colors[15][1]}\n")
                        end
                    end
                end
            end
        end
    end
end