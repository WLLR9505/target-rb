module Controls
    class Control
        public
            def initialize(aElect, aBack, aUp, aDown, aRight, aLeft)
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
    end
end