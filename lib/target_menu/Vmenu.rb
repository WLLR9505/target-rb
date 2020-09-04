require "target_menu/colors"

module Vmenu
    def Vmenu.update(menu, control, cl)
        i = 0
        for i in i...menu.length do
            if menu.kind_of?(Array) && control.getPos1 == i # se for menu flexível
                print("#{Palette.colors[cl][2]}#{menu[i]}#{Palette.colors[15][1]}\n")
            elsif control.getPos1 == i
                print("#{Palette.colors[cl][2]}#{menu[i]}#{Palette.colors[15][1]}\n")
            else
                print("#{menu[i]}\n")
            end


            # if menu.kind_of?(Array) # se for menu flexível
            #     if control.getPos1 == i
            #         print("#{Palette.colors[cl][2]}#{menu[i]}#{Palette.colors[15][1]}\n")
            #     else
            #         print("#{menu[i]}\n")
            #     end
            # else
            #     if control.getPos1 == i
            #         print("#{Palette.colors[cl][2]}#{menu[i]}#{Palette.colors[15][1]}\n")
            #     else
            #         print("#{menu[i]}\n")
            #     end
            # end
        end
        print("\n")
    end
end