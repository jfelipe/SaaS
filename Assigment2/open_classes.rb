class Numeric
  
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}

    def in (currency)
      if currency.to_s.match(/dollar/)
        self.send(currency)
      else
        self / 1.send(currency)
      end
    end

    def method_missing(method_id)
      singular_currency = method_id.to_s.gsub( /s$/, '')
      if @@currencies.has_key?(singular_currency)
        self * @@currencies[singular_currency]
      else
        super
      end
    end

end
  
p 5.euros.in(:euros)
p 8.euros.in(:rupees)
p 8.euros

class String

  def palindrome?
    string = self
    str1 = string.gsub(/(\W|\b)+/, "").downcase
    str1 == str1.reverse
  end
    
end


