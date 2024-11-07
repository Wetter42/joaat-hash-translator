local filename = "path/to/inputfile"
local outputname = '/path/to/outputfile'
local found = false

joaathashes = {}

for k, v in pairs(files2joaat) do
        if joaat(v) > 0 then
                finjoaat = "0x" .. string.upper(string.format("%08x", joaat(v, true)))
                joaathashes[k] = finjoaat

        elseif joaat(v) < 0 then
                finjoaat = "0x" .. string.upper(string.format("%08x", joaat(v, true) - (-2 ^ 32))) --This line basically twos-compliments the result if it's below 0;
                joaathashes[k] = finjoaat
        end
end





replxml(filename, outputname, blocksize)
