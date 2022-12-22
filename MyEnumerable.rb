module MyEnumerable
    def all?
      bool = true
      each { |n| bool = false unless yield n }
      bool
    end