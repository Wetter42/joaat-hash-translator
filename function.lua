function replxml(inf, of, bsize)
        local tofile = io.open(of, 'w')
        io.output(tofile)
        for line in io.lines(inf) do
                if not string.match(line, "<archetypeName>0x") then
                        io.write(line, '\n')
                else
                        for i=1, #joaathashes do
                                print(joaathashes[i])
                                if string.match(line, joaathashes[i]) then
                                        print("Match found! Replacing line: \n" .. line)
                                        replaced = string.gsub(line, joaathashes[i], files2joaat[i])
                                        io.write(replaced, '\n')
                                        found = true
                                end
                        end
                        if not found then
                                io.write(line, '\n')
                                found = false
                        end
                end
        end

        tofile:close()

end
