=begin
Product.seed(:id) do |product|
	product.id = 1
	product.name = "picture"
	product.price = 10000
	product.description = "written by mk"
	product.image = "No.1"
end

Product.seed(:id) do |product|
	product.id = 2
	product.name = "picture"
	product.price = 10000
	product.description = "written by mk"
	product.image = "No.1"
end

Product.seed(:id) do |product|
	product.id = 3
	product.name = "picture"
	product.price = 10000
	product.description = "written by mk"
	product.image = "No.1"
end
=end

100.times do |i|
	Product.seed_once(:id) do |product|
		product.id = i + 1
		product.name = "picture#{i + 1}"
		product.price = (i + 1) * 100
		product.description = "written by #{i + 1}"
		product.image = "No.1"
	end
end
