# features\domain\fortis_profile.rb
class BasicProfile
  attr_accessor :smid,
                :card_number

  def initialize
    @smid = ''
    @card_number = ''
  end
end
