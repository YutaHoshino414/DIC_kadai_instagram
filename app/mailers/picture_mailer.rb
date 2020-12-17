class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: "y.hoshino25@gmail.com", subject: "写真投稿の確認メール"
  end
end
