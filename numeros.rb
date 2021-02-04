=begin
Escribir un programa llamado numeros.rb, que reciba por línea de comandos la cantidad de líneas, y dibuje el siguiente patrón:
Uso:ruby numeros.rb 5
1 12 123 1234 12345
=end

n = ARGV[0].to_i

n.times do |i|
    (i + 1).times do |x|
        print (x + 1)
    end
    print " "
end