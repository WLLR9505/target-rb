require "target/menu/version"
require "target/menu/controls"
require "target/menu/colors"
require "target/menu/"
require "target/menu/Hmenu"
require "target/menu/Vmenu"
require "target/menu/VsubMenu"

module Target
  module Menu
    def simpleMenu(control, color, menuItems, submenuitems)
      control.resetPos()

      # TODO :selecionar cor

      def subMenu(submenu)
        updatesubMenuV(menuItems, submenuitems, control, cl)

        def showMenu
          if input == control.up
            control.pos2--;
          elsif input == control.down
            control.pos2++;
          end
  
          if control.pos2 == subMenu.length
            control.pos2 = 0;
          elsif control.pos2 < 0
            control.pos2 = subMenu.length - 1;
          end
  
          system("cls")
          updatesubMenuV(menuItems, submenuitems, control, cl)
        end
      end

      updateMenuV(menuItems, control, cl)

      def showMenu
        if input == control.up
          control.pos1--;
        elsif input == control.down
          control.pos1++;
        end

        if control.pos1 == menu.length
          control.pos1 = 0;
        elsif control.pos1 < 0
          control.pos1 = menu.length - 1;
        end

        system("cls")
        updateMenuV(menuItems, control, cl)
      end

      do
        showMenu;
        input = gets.strip

        if input == control.back
          control.pos = -1
          return control;
        then

        if input != control.elect
          break
        end
      end

      if submenuitems
        subMenu(submenuitems)
      end
    end
#-----------------------
#-----------------------
#-----------------------
    def flexMenu(control, color, menu, mode)
      
      def subMenu(menu, submenu)
      end

      #------------------------

      # TODO :selecionar cor

      mode == 'h'? MenuH.updateH(menu, control, cl) : MenuV.updateV(menu, control, cl)

      def showMenu
        if input == control.up
          control.pos1--;
        elsif input == control.down
          control.pos1++;
        end

        if control.pos1 == menu.length
          control.pos1 = 0;
        elsif control.pos1 < 0
          control.pos1 = menu.length - 1;
        end

        system("cls")
        updateMenuV(menuItems, control, cl)
      end

      do
        showMenu;
        input = gets.strip

        if input == control.back
          control.pos = -1
          return control;
        then

        if input != control.elect
          break
        end
      end

      if submenuitems
        subMenu(submenuitems)
      end
    end
  end
end
