module UnitConversion

    UNITS = ['lbs', 'kg', 'cm', 'ft']
    WEIGHT = ['lbs', 'kg']
    HEIGHT = ['cm', 'ft']

    def self.lbs_to_kg(weight)
        new_weight = weight * 0.45359237
        print_to_screen(new_weight, "kg")
    end
    
    def self.kg_to_lbs(weight)
        new_weight = weight / 0.45359237
        print_to_screen(new_weight, "lbs")
    end
    
    def self.ft_to_cm(height)
        new_height = height * 30.48
        print_to_screen(new_height, "cm")
    end
    
    def self.cm_to_ft(height)
        new_height = height / 30.48
        print_to_screen(new_height, "ft")
    end
    
    def self.is_numeric?(value)
        !!Float(value) rescue false
    end

    def self.print_to_screen(value, unit)
        puts "=> #{value.round(2)} #{unit}"
    end
end