module Palette
    def Palette.colors
        @colors = [
            ["gray", "\e[01;40m","\e[01;40m"],
            ["red", "\e[01;41m","\e[01;31m"],
            ["green", "\e[01;42m","\e[01;32m"],
            ["yellow", "\e[01;43m","\e[01;33m"],
            ["blue", "\e[01;44m","\e[01;34m"],
            ["magenta", "\e[01;45m","\e[01;35m"],
            ["cyan", "\e[01;46m","\e[01;36m"],
            ["black", "\e[22;40m","\e[22;30m"],
            ["white", "\e[01;47m","\e[01;37m"],
            ["darkred", "\e[22;41m","\e[22;31m"],
            ["darkgreen", "\e[22;42m","\e[22;32m"],
            ["darkyellow", "\e[22;43m","\e[22;33m"],
            ["darkblue", "\e[22;44m","\e[22;34m"],
            ["darkmagenta", "\e[22;45m","\e[22;35m"],
            ["darkcyan", "\e[22;46m","\e[22;36m"],
            ["reset", "\e[0m" ,"\e[0m"]
        ]
    end
    
    def Palette.selectColor(color)
        return colors.index { |x| x[0] == color }
    end
end