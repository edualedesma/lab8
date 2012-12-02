class Racional
	
	attr_accessor :numerador, :denominador
    
    def minimo(x,y)
        y == 0 ? x: minimo(y, x%y)
    end

	def initialize(num, den)
        raise TypeError, "El denominador no puede ser cero" if den.eql? 0
        
		min = minimo(num, den)
        @numerador = num / min
		@denominador = den / min
		#self.reduce
	end
	
	#def reduce
	#	a = @numerador
	#	b = @denominador
	#	x = 0
	#	if a < b
	#		x = a
	#	else
	#		x = b
	#	end
	#
	#	reducida = false
	#	while (x > 1 && !reducida) do
	#		if (a % x) == 0 && (b % x == 0)
	#			a = a/x
	#			b = b/x
	#			reducida = true
	#		else
	#			x = x-1
	#		end
	#	end
	#	@numerador = a
	#	@denominador = b
	#	self.to_s
	#end
	
	def to_s
		"#@numerador/#@denominador"
    end
	
	def to_f
		@numerador/@denominador
	end
	
	def ==(o)
		return @numerador == o.numerador && @denominador == o.denominador if o.instance_of? Racional
		false
	end
	
	def abs
		#a = @numerador
		#b = @denominador
		#if @numerador < 0
		#	a = -1 * @numerador
		#end
		#if @denominador < 0
		#	b = -1 * @denominador
		#end
		#Racional.new(a,b)
        Racional.new(@numerador.abs, @denominador)
        
	end
	
	def reciprocal
		Racional.new(@denominador,@numerador)
	end
	
	def -@
		Racional.new(-@numerador,@denominador)
	end
	
	def +(o)
        denomTotal = @denominador * o.denominador
        Racional.new(((denomTotal / @denominador) * @numerador) +
                     ((denomTotal / o.denominador) * o.numerador), denomTotal)
        
	end
	
	def -(o)
        #denomTotal = @denominador * o.denom
        #(Racional.new(((denomTotal / @denominador) * @numerador) -
        #((denomTotal / o.denom) * o.num), denomTotal)).reduce
        self + (-o)
	end
	
	def *(o)
		Racional.new(@numerador * o.numerador, @denominador * o.denominador)
	end
	
	def /(o)
        #self * o.reciprocal    # Otra forma de dividir
        Racional.new(@numerador * o.denominador, @denominador * o.numerador)
	end
	
	def %(o)
        l = @numerador * o.denominador
        r = @denominador * o.numerador
        n = l/r
        Racional.new( l - n * r, @denominador * o.denominador)
	end

	def <(o)
        #(@numerador/@denominador) < (o.numerador/o.denominador)
        (@numerador * o.denominador) < (@denominador * o.numerador)
	end
	
	def >(o)
        #(@numerador/@denominador) > (o.numerador/o.denominador)
        (@numerador * o.denominador) > (@denominador * o.numerador)
	end
	
	def <=(o)
        #(@numerador/@denominador) <= (o.numerador/o.denominador)
        (@numerador * o.denominador) <= (@denominador * o.numerador)
	end
	
	def >=(o)
        #(@numerador/@denominador) >= (o.numerador/o.denominador)
        (@numerador * o.denominador) >= (@denominador * o.numerador)
	end
end

if __FILE__ == $0
	ra = Racional.new(-1,2)
    ra2 = Racional.new(2,3)
	ra3 = Racional.new(-1,2)
	ra4 = Racional.new(16,12)
	ra5 = Racional.new(6,3)
	ra6 = Racional.new(1,5)
    	
	puts ra == ra2
	puts ra == ra3
	puts ra
	puts -ra
	puts ra.reciprocal
	puts ra.abs
	puts ra4
	puts ra5
	puts ra2 + ra6
	puts ra2 + ra3
	puts ra2 + ra5
	puts ra2 - ra6
	puts ra2 - ra5
	puts ra2 * ra5
	puts ra2 / ra6
	puts ra2 % ra5
	puts ra2 < ra5
	puts ra5 < ra2
	puts ra5 > ra2
	puts ra2 <= ra5
	puts ra2 <= ra2
	puts ra2 >= ra5
end