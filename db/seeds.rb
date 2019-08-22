puts 'Destroy items'

Cocktail.destroy_all
Ingredient.destroy_all

puts 'Create Cocktails'
ca = Cocktail.create(name: 'Caipirinha')
cb = Cocktail.create(name: 'Geladinho')
cc = Cocktail.create(name: 'Mentolada')

puts 'Create Ingredients'
ia = Ingredient.create(name: "lemon")
ib = Ingredient.create(name: "ice")
ic = Ingredient.create(name: "mint leaves")

puts 'Create Doses'
Dose.create(description: "Mistrura tudo", cocktail: ca, ingredient: ia)
Dose.create(description: "Mistrura tudo", cocktail: cb, ingredient: ib)
Dose.create(description: "Mistrura tudo", cocktail: cc, ingredient: ic)


puts 'Finish'
