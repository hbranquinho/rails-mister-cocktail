# puts 'Destroy items'

# Cocktail.destroy_all
# Ingredient.destroy_all

# puts 'Create Cocktails'
# ca = Cocktail.create(name: 'Caipirinha')
# cb = Cocktail.create(name: 'PiñaColada')
# cc = Cocktail.create(name: 'GinTônica')
# cd = Cocktail.create(name: 'Orange')
# ce = Cocktail.create(name: 'Pineaple')

# puts 'Create Ingredients'
# ia = Ingredient.create(name: "lemon")
# ib = Ingredient.create(name: "ice")
# ic = Ingredient.create(name: "mint leaves")
# id = Ingredient.create(name: "orange")
# ie = Ingredient.create(name: "pineaple")

# puts 'Create Doses'
# Dose.create(description: "Corte as pontas do limão.
#     Corte o limão ao meio.
#     Faça um corte em V e retire a parte central, pois ela faz a caipirinha adquirir um sabor amargo (veja no vídeo abaixo)
#     Corte o limão em pedaços menores.
#     Misture o limão e o açúcar em um copo.
#     Amasse suavemente a mistura com um pilão.
#     Acrescente o gelo.
#     Complete com a cachaça.", cocktail: ca, ingredient: ia)
# Dose.create(description: "Em uma taça: (350ml)
#     5 pedras de gelo.
#     2 doses de rum branco.
#     4 doses de suco de abacaxi.
#     1 dose de leite de coco.
#     Misture bem.
#     Decore usando:
#     Meia fatia de abacaxi na borda.", cocktail: cb, ingredient: ib)
# Dose.create(description: "
#     30 mL de gin;
#     60 mL de água tônica;
#     3 framboesas;
#     4 folhas de manjericão;
#     Gelo. Modo de preparo: Em um copo longo, coloque as folhas de manjericão, as framboesas, o gelo e o gin. Adicione a água tônica gentilmente para não perder o gás e sirva!",
#     cocktail: cc, ingredient: ic)
# Dose.create(description: "
#     30 mL de gin;
#     60 mL de água tônica;
#     3 framboesas;
#     4 folhas de manjericão;
#     Gelo. Modo de preparo: Em um copo longo, coloque as folhas de manjericão, as framboesas, o gelo e o gin. Adicione a água tônica gentilmente para não perder o gás e sirva!",
#     cocktail: cd, ingredient: id)
# Dose.create(description: "
#     30 mL de gin;
#     60 mL de água tônica;
#     3 framboesas;
#     4 folhas de manjericão;
#     Gelo. Modo de preparo: Em um copo longo, coloque as folhas de manjericão, as framboesas, o gelo e o gin. Adicione a água tônica gentilmente para não perder o gás e sirva!",
#     cocktail: ce, ingredient: ie)


# puts 'Finish'
require 'open-uri'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)
ingredients['drinks'].each do |ingredient|
   Ingredient.create(name: ingredient['strIngredient1'])
end
