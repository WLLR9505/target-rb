require_relative '../colors'

module Vmenu
    def Vmenu.update(menu, control, cl)
        i = 0
        for i in i...menu.length do
            if menu.kind_of?(Array) # se for menu flexível
                if control.getPos1 == i
                    print("#{Palette.colors[cl][2]} #{menu[i]} #{Palette.colors[15][1]}\n")
                else
                    print("#{menu[i]}\n")
                end
            else
                if control.getPos1 == i
                    print("#{Palette.colors[cl][2]}#{menu[i]}   #{Palette.colors[15][1]}\n")
                else
                    print("#{menu[i]}\n")
                end
            end
        end
        print("\n")
    end
end