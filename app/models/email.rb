class Email < ActiveRecord::Base
    after_create :send_news_email
    
    private 
    
    def send_news_email
       ArticleMailer.send_news(self).deliver_now 
    end
end
