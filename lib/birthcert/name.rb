module Birthcert
  class Name

    @first_names = %w(
      thomas amy joseph alex guy minnie james ben ted lisa bonnie robert cindy 
      wendy gloria rodney rita ian stella arnold jared calvin brent tom roland 
      isaac connie tyrone kurt julian maria sue erik joy curtis julia warren 
      dawn tony andrea ruben corey marcus tracy harvey darren annie lester allen 
      nancy jesse jim janet linda betty susan floyd hector anna virgil teresa 
      karen todd lloyd derek pedro bob helen shane lucy casey bill tara tyler 
      carmen kathy david rose beth john norman mary 
    )

    @last_names = %w(
      foster miller scott young james lewis ross murphy cruz baker adams cole 
      webb ward wilson russel graham jones smith allen hayes parker rivera owens 
      cook fisher rogers hill hall bryant ward white brown long nelson lee 
      morgan howard reed baily clark ford king carter jordan flores hughes 
      myers wood ellis bell turner kelly west barnes watson butler green west 
      evans moore morris wright perez hicks henry perry hayes price taylor 
      walker gray powell davis brooks cole
    )

    def self.random_first
      return @first_names.sample(1)
    end

    def self.random_last
      return @last_names.sample(1)
    end

    def self.random_full
      return "#{self.random_first()} #{self.random_last()}"
    end
  end
end