require './unit_conversion'

def helping_guide
    help_text = "\n"
    help_text += "The application uses a simple syntax to do conversion from metric to imperial and vice versa.\n"
    help_text += "An example of conversion: 40 kg to lbs (This will convert 40 kg to lbs)\n"
    help_text += "\n"
    help_text += "*************** USAGE ***************\n\n"
    help_text += "[Number] [Unit] to [Target Unit]\n\n"
    help_text += "[Unit] and [Target Unit] may have values such as: lbs, kg, ft, cm\n"
    help_text += "Conversion of weight unit to length/height unit is impossible\n"
    help_text += "\n"
    puts help_text
end

def operation(arguments)
    puts "inside arguments"
    if ARGV.length == 1 && (ARGV[0] == '-h' || ARGV[0] == '--help')
        helping_guide
    elsif ARGV.length == 4
        #if(UnitConversion::UNITS)
    else
        puts "The application takes 4 parameters.\nPlease invoke the command help (-h or --help) to see how it works."
    end
end

if $PROGRAM_NAME == __FILE__
    if !ARGV.empty?
        operation ARGV
    else
        puts "You must provide arguments"
    end
end

#puts UnitConversion.lbs_to_kg(200)