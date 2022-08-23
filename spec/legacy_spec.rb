require "ingredient"
require "snack"

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
  it 'knows how many have been made so far'
  it 'can tell that no sanwich has been made so far'

  # ## Initialize
  it "doesn't fail when no ingredient is given"
  it 'Raises an error when loaded with more than 14 ingredients'
  it 'contains the given ingredients'

  # ## Ingredients
  it 'has ingredients from Ingredients class'

  # ## taste
  it 'returns delicious'

  # ## Pain point
  it 'returns a string when there is at least one tomatoe'
  it 'has no pain point when there is no tomatoe'

  # ## shareable
  it 'returns a truthy object'
  it 'returns a string depending on the tomatoe situation'

  # ## add ingredient
  it 'does nothing when ingredient is not from class Ingredient'
  it 'adds the given ingredient when ingredient is from class Ingredient'
  it 'does not accepts a 14th ingredient nor more'

  # ## can be eaten
  it 'can be eaten'

  # # LegacyCodeFromHellYouNeedToTest
  it 'has two different sandwiches'

  # ## 'my sandwich'
  it 'has 3 ingredients'

  # ## 'your sandwich'
  it 'has more ingredients than my sandwich'

end

