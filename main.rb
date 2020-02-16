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
    if arguments.length == 1 && (arguments[0] == '-h' || arguments[0] == '--help')
        helping_guide
    elsif arguments.length == 4
        if !UnitConversion.is_numeric? arguments[0]
            puts "The first argument should be a number"
        elsif !UnitConversion::UNITS.include?(arguments[1]) || !UnitConversion::UNITS.include?(arguments[3]) || !arguments[2].casecmp('to')
            puts "Incorrect command. The syntax is as follows [value] [Unit] to [Unit]"
        elsif arguments[1].casecmp?(arguments[3])
            puts "#{arguments[0]+arguments[1]} (No conversion needed)"
        elsif (UnitConversion::WEIGHT.include?(arguments[1]) && UnitConversion::HEIGHT.include?(arguments[3])) || (UnitConversion::WEIGHT.include?(arguments[3]) && UnitConversion::HEIGHT.include?(arguments[1]))
            puts "We cannot convert an unit of weight to/from height"
        else
            method_call ="#{arguments[1].downcase}_to_#{arguments[3].downcase}"
            UnitConversion.send method_call, arguments[0].to_f
        end
    else
        puts "The application takes 4 parameters.\nPlease invoke the command help (-h or --help) to see how it works."
    end
end

if $PROGRAM_NAME == __FILE__
    if !ARGV.empty?
        operation ARGV
    else
        puts "You must provide arguments"
        puts "Check the help guide for more information (-h or --help)"
    end
end