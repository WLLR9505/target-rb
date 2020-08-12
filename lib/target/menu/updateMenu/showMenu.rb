require_relative "./Vmenu"
# require_relative "./VsubMenu"

module Show
    def Show.menuV(control, cl, input, menuItems, submenuitems=nil)
        if input == control.getUp
          control.setPos1(control.getPos1 - 1)
        elsif input == control.getDown
          control.setPos1(control.getPos1 + 1)
        end

        if control.getPos1 == menuItems.length
          control.setPos1(0)
        elsif control.getPos1 < 0
          control.setPos1(menuItems.length - 1)
        end
        puts "\e[H\e[2J"
        Vmenu.update(menuItems, control, cl)
    end

    def Show.subMenuV(control, cl, input, menuItems, submenuitems=nil)
        if input == control.getUp
          control.setPos2(control.getPos2 - 1)
        elsif input == control.getDown
          control.setPos2(control.getPos2 + 1)
        end

          if control.getPos2 == submenuitems.length
          control.setPos2(0)
        elsif control.getPos2 < 0
          control.setPos2(menuItems.length - 1)
        end
        puts "\e[H\e[2J"
        Vmenu.update(menuItems, control, cl)
    end
end