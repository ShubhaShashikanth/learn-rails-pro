class Contact < ActiveRecord::Base
    has_no_table
    column :name, :string
    column :email, :string
    column :content, :string
    validates_presence_of :name
    validates_presence_of :email
    validates_presence_of :content
    validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
    validates_length_of :content, :maximum => 500
    
    #require 'google/api_client'
    #require "google_drive"
    #require "googleauth"
     # credentials = Google::Auth::UserRefreshCredentials.new(
     # client_id: "107644491840186337890",
      #client_secret: "YnMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCxyQ4/x2WZYfn7\nFOnPDhKukImkGX+QERNYsZFlfexyRarJpk+WIMgrExq+Uc56hZVWSBn75ciKHi2H\nf49Tg64oDNpNzt0MNp9ZdocUaXiNHUmPPtXoigB/uYD/ldQvANt/mxIqmZW3H+Br\nonH3XDzvtA2OmekuIq4b1tC6ztfMpABBzhR+GwJMTwK/esOS5t50Hf1tlAX81lTI\nsXwlLTBdcp7KOyYvJH7q/YzhXQA90wFDkna7R982mhOqISIU4GKz/Atfe6rBQS1x\nst21BlrVcmd0+x4ov0Zmq6WlI5HwY8RMQ6hrsdHoysNe6gpon8gnuZDKN7WIpqq4\nP1ddfbnHAgMBAAECggEAVaak2EJCpt4mdnnxWKERjAszXJ0yMSCg3vKRN0Gu57C7\norGelxfNB7+I+1bjMHDp7OsIpaxi7HO0gJqKXPRMM5xZkfHO2eL46ztowYM8olOR\nTFM77++IZQBkbv3qfwidNwFpA6ABmntffcuBt2e3Lc5jV6e7yM/JbL0Vy2H6Ympy\n3mwiHwPHCD8CAJSxKjnS0RUZrGhvlqrPEbe7QEjBOfEMDWVNCS2ooLguntwrOkQ4\n2jYWbRTyo+P4IJAMm7IJN0Q8qgMdD4BGU1SvvzMNV4OdpWu5tHogOWl6APr0XYCK\nU/pLfqf02EqogT1wtx3f9hSkALtyfRItMmzKvVEegQKBgQD1rul7+b2RN5/pTilm\nHp9bZuOkjzbSbR0nR5FGQ+rlUgw22aMstd9MgTKkmK5xqD8DUO43tJ7KvARJK7IB\nT3zqwHgHQbo8y5oY4VEHT7N9lfQhm6NvoDu+AmBQXw4Mzh38Hq7rRSR/miO9VcOz\nmhL/RsJwYZKp5uv4AifeTlsugQKBgQC5QD5NlMOvHYu3w5nYWUzC9MZQiZn5tq3r\n/bMjEKWA2y3cREYtRbKHFCLxJUvBY9PRVW9OudVhczS1fFINFSqsGpnbECXjS2WT\noPFbk2Qrqy9W65QeRuea3Z4gD5YGqiTt7+oEAuzzu5WSlwJIayojJGUuRUHpDw6e\nUp89uTHURwKBgAT2n6jthrLkWMqx1YxGmhmSno64hfcCVVBx1bGBtcEkQzLoeq9w\njS5Sfd9tZjjNmVhLzkQ51etqmPuRcmssW+2yLbqXzVdlFZvjEWwAZDPpT6FOL6MV\nrZ9NFP0KrpH7qAdr50TBhNc/GfG9RdLfDfsyRsNWdUwRajr8cCnBk34BAoGASpQi\ngPkzDnzGkuScOw04agRBEotTAcUZn7gzNhqthoK2o8aYugElLlxc9Nge92xJCi1q\n8ja+QM0wmx/BqKKs2zyaVCbcGfVwn05b3JIp8aqpFEUjDE1fUGmID0A3FdfJpkC/\n5X2IB1etj6ZbtOvvutYcJdScBEebiwGYOjEkbmECgYBN/KQskTKYbsNqjAVasw1Q\n2oyW6pcsU+DW4Q/RruqUUSH2H9Jyf0/3MK7CoiRg3MQRg0xtqwKGO07lYi74nfEO\nSuv55uWuAvb9wAw7UwXvZH4KwanmnemZrAmvL0gpCnqixuc9JdvaMKK7CQE94CgK\nMqX2pDB45fd8iPrQyhwtwg==",
     # scope: [
      #  "https://www.googleapis.com/auth/drive",
      #  "https://spreadsheets.google.com/feeds/",
      #],
     # redirect_uri: "http://example.com/redirect")
   # auth_url = credentials.authorization_uri
    # Redirect the user to auth_url and get authorization code from redirect URL.
   # credentials.code = authorization_code
    #credentials.fetch_access_token!
   # session = GoogleDrive.login_with_oauth(credentials)
   # @client = Google::APIClient.new(application_name: 'MyApplication', application_version: '0.0.1')
   # google_client_email = 'projectintroservice@projectwebintro.iam.gserviceaccount.com'
   # keypath = Rails.root.join('config','nameofthekeyfile.p12').to_s
   # key = Google::APIClient::PKCS12.load_key(keypath, "notasecret")
   # scopes = [
    #  'https://docs.google.com/feeds/',
    #  'https://www.googleapis.com/auth/drive',
   #   'https://spreadsheets.google.com/feeds/'
   # ]

   # asserter = Google::APIClient::JWTAsserter.new(
   #     google_client_email,
    #    scopes,
   #     key
  #  )
    #@client.authorization = asserter.authorize

    #@session = GoogleDrive.login_with_oauth(@client.authorization.access_token)
    
  
    def update_spreadsheet
       session = GoogleDrive::Session.from_config("config.json")
       # connection = GoogleDrive.login(ENV["GMAIL_USERNAME"], ENV["GMAIL_PASSWORD"])
        ss = session.spreadsheet_by_title('Learn-Rails-Example')
        if ss.nil?
            ss = session.create_spreadsheet('Learn-Rails-Example')
        end
        ws = ss.worksheets[0]
        last_row = 1 + ws.num_rows
        ws[last_row, 1] = Time.new
        ws[last_row, 2] = self.name
        ws[last_row, 3] = self.email
        ws[last_row, 4] = self.content
        ws.save
    end
end