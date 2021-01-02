require 'net/http'
require 'erb'

module Rqrickit
  module Http

    class Link
      def initialize(url, size="150", colors={txt: "442EFF", fg: "76103C", bg: "C0F912"})
        @url = url
        @size = size
        @txtcolor = colors[:txt]
        @fgdcolor = colors[:fg] 
        @bgdcolor = colors[:bg]
      end 

      def create_qrcode
        "https://qrickit.com/api/qr.php?d=#{@url}&txtcolor=#{@txtcolor}&fgdcolor=#{@fgdcolor}&bgdcolor=#{@bgdcolor}&qrsize=#{@size}&t=p&e=m"
      end
    end

  end
end
