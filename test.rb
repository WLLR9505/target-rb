require './lib/target/menu'

def delete(arr, item)
    puts 'deleting...'
    sleep(0.5)
    arr.delete(item)
end

def update(arr, index)
    puts 'updating...'
    sleep(0.5)
    arr[index] = gets.chomp()
    return arr
end
# ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---
def main
    menu = ['in2pos', 'wllr-server', 'cipher-vgnr', 'target', 'target-rb', 'korvo-bot']
    submenu = ['update', 'delete']
    control = Controls.new()

    loop do
        Target.simpleMenu(control, 'red', menu, submenu)

        if control.getPos1 == -1
            return 0
        end
    
        case control.getPos2
        when 0 # update
            menu = update(menu, control.getPos1)
        when 1 # delete
            delete(menu, menu[control.getPos1])
        end
    end
end

main()
