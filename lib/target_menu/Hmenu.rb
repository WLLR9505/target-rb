module Hmenu
    def Hmenu.update(menu, control, cl)
        i = 0
        for i in i...menu.length do
            if control.pos1 == i
                print("#{Palette.colors[cl][2]}#{menu[i][0]}   #{Palette.colors[15][1]}")
            else
                print("#{menu[i][0]}")
            end
        end
        print("\n")
    end
end