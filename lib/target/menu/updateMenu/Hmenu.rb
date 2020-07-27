require "../colors"
require "../controls"

module MenuH
    def updateH(menu, control, cl)
        for i = 0 in i...menu.length do
            if control.pos1 == i
                print("#{cl[0][2]}#{menu[i][0]   ${Palette.colors[15][1]}}")
            else
                print("#{menu[i][0]}")
            end
        end
        print("\n")
    end
end