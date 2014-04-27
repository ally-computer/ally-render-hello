require 'ally/render'
require 'ally/render/hello/version'

module Ally
  module Render
    class Hello
      include Ally::Render

      def initialize
        super # do not delete
        @keywords = %w( hello hola hi aloha ) # set keywords
      end

      def process(inquiry, io)
        responses = %w(
          hello
          hi
          hey
        )
        io.say(responses.sample)
      end
    end
  end
end
