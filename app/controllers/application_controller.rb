class ApplicationController < ActionController::Base
    def hello
        render html: "hellloooo"
    end

    def bai
        render html: "i say baibaibai"
    end
end