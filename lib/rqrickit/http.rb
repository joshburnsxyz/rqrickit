require 'net/http'
require 'erb'
require 'cgi'

module Rqrickit
  module Http

    class Vcard
      def initialize(last_name, first_name, company_name, job_position, email, phone, website)
        @last_name = ERB::Util.url_encode(last_name)
        @first_name = ERB::Util.url_encode(first_name)
        @company_name = ERB::Util.url_encode(company_name)
        @job_position = ERB::Util.url_encode(job_position)
        @email = ERB::Util.url_encode(email)
        @phone = ERB::Util.url_encode(phone)
        @website = ERB::Util.url_encode(website)
      end
      def create_qrcode
        notes = "Created by Rqrickit"
        "https://qrickit.com/api/qr.php?d=BEGIN%3aVCARD%0d%0aVERSION%3a3.0%0d%0aN%3a#{@last_name}%3b#{@first_name}%0d%0aORG%3a#{@company_name}%0d%0aTITLE%3a#{@job_position}%0d%0aEMAIL%3a#{@email}%0d%0aTEL%3bTYPE%3dCELL%3a#{@phone}%0d%0aTEL%3bTYPE%3dWORK%2cVOICE%3a%0d%0aNOTE%3a#{notes}%0d%0aURL%3a#{@website}%0d%0aADR%3a%3b%3b%0d%0aEND%3aVCARD%0A&addtext=&txtcolor=000000&fgdcolor=000000&bgdcolor=FFFFFF&qrsize=200"
      end
    end

    class Link
      def initialize(url, notes, size=150)
        @url = url
        @notes = CGI.escape(notes)
        @size = size
      end 

      def create_qrcode
        "https://qrickit.com/api/qr.php?d=#{@url}&addtext=#{notes}&txtcolor=442EFF&fgdcolor=76103C
&bgdcolor=C0F912&qrsize=#{size}&t=p&e=m"
      end
    end

  end
end
