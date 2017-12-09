class NotFoundError < StandardError
	
	def initialize()
		super("Item não encontrado.")
	end
end
