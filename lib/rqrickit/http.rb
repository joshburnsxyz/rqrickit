require 'net/http'

module Rqrickit
  module Http

    class Client
      def initialize(base_url)
        @base_url = base_url
      end

      def get_vcard_qr_code(last_name, first_name, company_name, job_position, email, phone, website, address)
        notes = "Created by Contactify"
        api_string = "https://qrickit.com/api/qr.php?d=BEGIN%3aVCARD%0d%0aVERSION%3a3.0%0d%0aN%3a#{ERB::Util.url_encode(last_name)}%3b#{ERB::Util.url_encode(first_name)}%0d%0aORG
%3a#{ERB::Util.url_encode(company_name)}%0d%0aTITLE%3a#{ERB::Util.url_encode(job_position)}%0d%0aEMAIL%3a#{ERB::Util.url_encode(email)}%0d%0aTEL%3bTYPE%3d
CELL%3a#{ERB::Util.url_encode(phone)}%0d%0aTEL%3bTYPE%3dWORK%2cVOICE%3a%0d%0aNOTE%3a#{ERB::Uil.url_encode(notes)}%0d%0a
URL%3a#{website}%0d%0aADR%3a%3b%3b%0d%0aEND%3aVCARD%0A&addtext=&txtcolor=000000&fgdcolor=000000&bgdcolor=FFFFFF&qrsize=200"
      end
    end

  end
end
