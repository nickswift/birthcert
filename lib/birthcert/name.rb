module Birthcert
  class Name
    # note -- we can guarantee the names will be in a certain range by simply
    # reading a set number of lines from the name files into memory and
    # using that as the data set
    def initialize(size=500)
      @size = size
      @first_names = Array.new
      @last_names = Array.new

      # read data out of files that come with this gem
      fpat = File.expand_path('../data/first_names.txt', __FILE__)
      lpat = File.expand_path('../data/last_names.txt', __FILE__)

      File.open(fpat, 'r').each_line do |line|
        @first_names << line.chomp
      end
      File.open(lpat, 'r').each_line do |line|
        @last_names << line.chomp
      end
    end

    # get random first and last names from the data set
    def first(amount=1)
      return @first_names.sample(amount)
    end
    def last(amount=1)
      return @last_names.sample(amount)
    end

    # when getting a full name, we can specify if and when we don't want to
    # separate them with whitespace, ie. "first-last"
    def full(sep=' ')
      return "#{@first_names.sample(1).pop}#{sep}#{@last_names.sample(1).pop}"
    end
  end
end
