class Matriz

	attr_accessor :tam, :mat
	
	def initialize(m)
		@tam = m.size-1
		@matr = m
	end
	
	def to_s
		#@matr.each do |celda|
		#	puts celda
		#end
		for i in 0..(@tam) do
			print @matr[i].to_s + "\n"
		end
	end
	
	def +(o)
		for i in 0..@tam do
			for j in 0..@tam do
				o[i][j] = (@matr[i][j]).to_i + (o[i][j]).to_i
			end
		end
	end
end

if __FILE__ == $0
	m1 = Matriz.new([[1,1], [1,1]])
	m2 = Matriz.new([[2,2], [2,2]])
	m1 + m2
end