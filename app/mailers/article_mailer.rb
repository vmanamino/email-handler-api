class ArticleMailer < ApplicationMailer
    default from: "vmanamino@gmail.com"
    
    def send_news(email)
      headers["Message-ID"] = "<email/#{email.id}@open-news-digest>"
      headers["Content"] = "<email/#{email.title}>"
      @email = email
      mail(to: email.address, cc: "vmanamino@gmail.com", subject: "Open News Digest") 
    end
end
