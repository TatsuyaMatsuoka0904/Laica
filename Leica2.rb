require 'Leica'

def prompt(leica)
    retrun leica.name + ":" + leica.responder_name + ">"
end

puts ("Leica System prototype : proto")
proto = Leica.new('proto')
whule true
    print(">")
    input = gets
    input.chomp!
    break if input == ""

    response = proto.dialogue(input)
    puts (prompt(proto) + response)
end
