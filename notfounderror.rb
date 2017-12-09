class NotFoundError < StandardError
	
	def initialize()
		super("Item não encontrado. Verifique o código e o nome correto.")
	end
end
