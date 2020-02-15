module UnitConversion

    def self.lbs_to_kg(weight)
        new_weight = weight * 0.45359237
    end
    
    def self.kg_to_lbs(weight)
        new_weight = weight / 0.45359237
    end
    
    def self.ft_to_cm(measure)
        new_measure = measure * 30.48
    end
    
    def self.cm_to_ft(measure)
        new_measure = measure / 30.48
    end
    
end