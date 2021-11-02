## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:
kod = 0
file = File.open('data/3.txt')
#mas = [] 
IO.foreach(file) do |line|
	mas = line.split(' ').map { |n| n.to_i } 
	razn = mas.max - mas.min  
	kod +=razn 
	mas.clear
end
puts kod 

 

