# 応答のクラス。
class Resoponder

    def initialize(name)
     @name = name
    end

    def resoponse(input)
     return "What is #{input}?"
    end

    def name
     return @name
    end
 end
 # ライカ。
 class Leica
     def initialize(name)
         @name = name
         @resoponder = Resoponder.new('What')
     end

     def dialogue(input)
         return @resoponder.resoponse(input)
     end

     def resoponder_name
         return @resoponder.name
     end

     def name
         return @name
     end
 end

 def prompt(leica)
     return leica.name + ":" + leica.resoponder_name + ">"
 end


 puts("Leica System prototype : proto")
 proto = Leica.new("proto")
 while true
     print(">")
     input = gets
     input.chomp!
     break if input == ""

     response = proto.dialogue(input)
     puts(prompt(proto) + response)
 end