class Responder
    def initialize(name)
        @name = name
    end

    def response(input)
        return  ""
    end

    def name
        return @name
    end

end


class WhatResponder < Responder
    def response(input)
        super
        @responses = ["今日は寒いね","チョコ食べたいよ","にゃっはろ〜"]
    end

    def response(input)
        return @responses[rand(@responses.size)]
    end
end
