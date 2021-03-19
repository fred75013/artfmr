class UserMailer < ApplicationMailer
    default from: 'artfmr.heroku@gmail.com'
   
    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'https://artfmr.herokuapp.com/' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

    def order_confirmation(order)
      @order = order
      @cart = @order.user.cart
      @user = User.find(order.user_id)
      @url  = 'https://artfmr.herokuapp.com/'
      mail(to: @user.email, subject: 'confirmation de commande')
    end
  end