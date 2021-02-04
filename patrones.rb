=begin
Escribir un  programa llamado patrones.rb
con  métodos que  reciban la  cantidad de  lineas y muestren por pantalla los siguientes patrones de *:

a. Método letra_o(n) n = 5
******
*    *
*    *
******
=end

def letter_o(n)
    n.times do |i|
        print '*'
    end
    puts
    (n - 2).times do
        print '*'
        (n - 2).times do |i|
            print " "
        end
        print '*'
        puts
    end
    n.times do |i|
        print '*'
    end
    puts
end

letter_o(5)
puts

=begin
b. Método letra_i(n) n = 5
*****
  *
  *  
  *
*****
=end

def letter_i(n)
    n.times do |i|
        print '*'
    end
    puts
    (n - 2).times do
        print " "
        print " "
        (n - 4).times do |i|
            print "*"
        end
        print " "
        print " "
        print "\n"
    end
    n.times do |i|
        print '*'
    end
    puts
end

letter_i(5)
puts

=begin
c. Método letra_z(n) n = 5
*****
   *
  * 
 *
*****
=end

def letter_z(n)
    n.times do |i|
        n.times do |x|
            if i%(n-1)==0
                print "*"
            elsif i%(n-2)==1 && x%(n-1)==3
                print "*"
            elsif i%(n-3)==0 && x%(n-2)==2
                print "*"
            elsif i%(n-1)==3 && x%(n-1)==1
                print "*"
            else
                print " "
            end
        end
        puts
    end
end

letter_z(5)
puts

=begin
d. Método letra_x(n) n = 5
*   *
 * *
  *
 * *
*   *
=end

def letter_x(n)
    c = 1

    for i in 1..n
        if i == 1 || i == n
            for j in 1..n
                if j == 1 || j == n
                    print "*"
                else
                    print " "
                end
            end
            else
                for j in 1..n
                    place = n - c
                    place2 = 1 + c
                    if j == place || j == place2
                        print "*"
                    else
                        print " "
                    end
                end
                c = c + 1
            end
            puts
        end
        puts
    end

letter_x(5) 
puts

=begin
e. Método numero_cero(n)n = 5
*****
**  *
* * *
*  **
*****
=end
def numero_cero (n) 
    n.times do
        print "*"
    end
    puts
    j = 1
    (n-2).times do |i|
        n.times do |i|
            if i == 0 || i == n-1 || i == j
                print "*"
            else
                print " "
            end
        end
        j += 1
        puts
    end
    n.times do
        print "*"
    end
    puts
end

numero_cero(5) 
puts


=begin
e. Método arbolito(n)n = 5
   *
  * *
 * * *
* * * *
   *
   *
 * * *
=end

def christmas_tree(size)
    top(size)
    trunk(size)
    base(size)
    puts
  end
  def top(size)
    1.upto(size - 1) do |i|
      line = ''
      (size - i).times { line += ' ' }
      i.times { line += '* ' }
      puts line.to_s
    end
  end
  def trunk(size)
    ((size - 1) / 2).times do
      (size - 1).times { print ' ' }
      puts '*'
    end
  end
  def base(size)
    (size / 4.0).round.times { print ' '}
    (3 * size / 4.0).round.times { print '* ' }
  end
  christmas_tree(5)
  puts