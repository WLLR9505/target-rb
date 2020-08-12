require './lib/target/menu'

def test(t)
    puts(t)
    sleep(2)
end

def main
    menu = ['item1', 'item2', 'item3']
    control = Controls.new()

    loop do
        Target.simpleMenu(control, 'red', menu)
    
        if control.getPos1 == -1
            return 0
        end
    
        case control.getPos1
        when 0
            test(menu[control.getPos1])
        when 1
            test(menu[control.getPos1])
        when 2
            test(menu[control.getPos1])
        end
    end
end

main()
