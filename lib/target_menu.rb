require "target_menu/version"
require "target_menu/VsubMenu"
require "target_menu/Hmenu"
require "target_menu/Vmenu"
require "target_menu/showMenu"
require "target_menu/colors"

require 'io/console'

class Controls
  def initialize(aElect='e', aBack='q', aUp='w', aDown='s', aRight='d', aLeft='a')
      @elect = aElect
      @back = aBack
      @up = aUp
      @down = aDown
      @right = aRight
      @left = aLeft

      @pos1 = 0
      @pos2 = 0
  end

  def resetPos
      @pos1 = 0
      @pos2 = 0
  end

  def getPos1
    return @pos1
  end
  
  def getPos2
    return @pos2
  end

  def getUp
    return @up
  end

  def getDown
    return @down
  end

  def getLeft
    return @left
  end

  def getRight
    return @right
  end

  def getElect
    return @elect
  end
  
  def getBack
    return @back
  end

  def setPos1(p)
    @pos1 = p
  end
  
  def setPos2(p)
    @pos2 = p
  end
end

module Target

  def Target.simpleMenu(control, color, menuItems, submenuitems=nil)
    input = ''
    control.resetPos()

    cl = Palette.selectColor(color)

    Vmenu.update(menuItems, control, cl)

    loop do
      Show.menuV(control, cl, input, menuItems)
      input = STDIN.getch

      if input == control.getBack()
        control.setPos1(-1)
        return control
      end
      puts "\e[H\e[2J"
      break if input == control.getElect()
    end

    if submenuitems.nil? == false
      VsubMenu.update(menuItems, submenuitems, control, cl)
      loop do
        Show.subMenuV(control, cl, input, menuItems, submenuitems)
        input = STDIN.getch
  
        if input == control.getBack()
          control.setPos2(-1)
          return control
        end
        puts "\e[H\e[2J"
        break if input == control.getElect
      end
    end
  end
end
