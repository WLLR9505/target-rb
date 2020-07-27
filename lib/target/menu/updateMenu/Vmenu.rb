require "../colors"
require "../controls"

module MenuV
    def updateV(menu, control, cl)
        for i = 0 in i...menu.length do
            if menu.kindof?(Array) # se for menu flexível
                if control.pos1 == i
                    print("#{cl[0][2]}#{menu[i][0]}   #{Palette.colors[15][1]}}")
                else
                    print("#{menu[i][0]}\n")
                end
            else
                if control.pos1 == i
                    print("#{cl[0][2]}#{menu[i][0]   ${Palette.colors[15][1]}}\n")
                else
                    print("#{menu[i][0]}\n")
            end
        end
        print("\n")
    end
end