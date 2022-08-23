require "ingredient"
require "snack"
require "sandwich"

########## Partie RSpec ##########
RSpec.describe "Shit load of crap you were told would be 'state of the art' during the interview..." do
  # # Ingredient
  it 'has a name' do
    toto = Ingredient.new()
    expect(toto.name.length).to be > 0
  end

  # ## Ingredient's name
  it 'is gloubiboulga' do
    toto = Ingredient.new()
    expect(toto.name).to eq('gloubiboulga')
  end
  it 'or is the given name in argument' do
    arg = 'toto'
    toto = Ingredient.new(arg)
    expect(toto.name).to eq(arg)
  end

  context Snack do
    before(:context) do
      @toto = Snack.new()
    end
    it 'is shareable returns true' do
      expect(@toto.shareable?()).to be_truthy
    end
    it "has no '#brick' method" do
      expect(@toto.respond_to?(:brick)).to be_falsey
    end
  end
  
  # # Sandwich
  it 'knows how many have been made so far' do
    expect(Sandwich.respond_to?(:count)).to be_truthy
  end
  it 'can tell that no sanwich has been made so far' do
    expect(Sandwich.count).to eq(0)
  end

 
  context Sandwich do
     # ## Initialize
    before(:example) do
      @ingredient = Ingredient.new("jambon")
      @ingredients = []
      for i in 0..14
        @ingredients.push(i.to_s)
      end
    end
    before(:context) do
      @toto = Sandwich.new()
    end
    it "doesn't fail when no ingredient is given" do
      expect(Sandwich.count).to eq(1)
    end
    it 'Raises an error when loaded with more than 14 ingredients' do
      expect{Sandwich.new(*@ingredients)}.to raise_error('Too many ingredients') 
    end
    it 'contains the given ingredients' do
      @ingredients.delete("14")
      toto = Sandwich.new(*@ingredients)
      expect(toto.ingredients.map { |ingredient| ingredient.name }).to eq(@ingredients)
    end

    # ## Ingredients
    it 'has ingredients from Ingredients class' do
      toto = Sandwich.new("beurre")
      toto.ingredients.each { |ingredient| expect(ingredient).to be_a_kind_of(Ingredient)}
    end

    # ## taste
    it 'returns delicious' do
      expect(@toto.taste()).to include("delicious")
    end

    # ## Pain point
    it 'returns a string when there is at least one tomatoe' do
      toto = Sandwich.new("oeuf", "jambon", "tomatoe")
      expect(toto.pain_point()).to eq('tomatoes try to slip away on each bite')
    end
    it 'has no pain point when there is no tomatoe' do
      toto = Sandwich.new("oeuf", "jambon", "tomate")
      expect(toto.pain_point()).to be_falsey
    end

    # ## shareable
    it 'returns a truthy object' do
      toto = Sandwich.new()
      expect(toto.shareable?()).to be_truthy
    end
    it 'returns a string depending on the tomatoe situation' do
      random = [true, false].sample
      toto = Sandwich.new(random ? "tomatoe" : "tomato")
      expect(toto.shareable?).to eq(random ? 'With difficulty' : 'Yup... why not ?')
    end

    # ## add ingredient
    it 'does nothing when ingredient is not from class Ingredient' do
      expect(@toto.ingredients.length).to eq(0)
      @toto.add_ingredient("jambon")
      expect(@toto.ingredients.length).to eq(0)
    end
    it 'adds the given ingredient when ingredient is from class Ingredient' do
      expect(@toto.ingredients.length).to eq(0)
      @toto.add_ingredient(@ingredient)
      expect(@toto.ingredients.length).to eq(1)
    end
    it 'does not accepts a 14th ingredient nor more' do
      @ingredients.delete("14")
      toto = Sandwich.new(*@ingredients)
      expect{toto.add_ingredient(@ingredient)}.to raise_error('Please no more ingredient !')
    end

    # ## can be eaten
    it 'can be eaten' do
      expect(@toto.respond_to?(:can_be_eaten)).to be_truthy
    end
  end

  

  

  # # LegacyCodeFromHellYouNeedToTest
  it 'has two different sandwiches'

  # ## 'my sandwich'
  it 'has 3 ingredients'

  # ## 'your sandwich'
  it 'has more ingredients than my sandwich'

end

