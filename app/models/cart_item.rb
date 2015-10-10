class CartItem < ActiveRecord::Base

serialize :notification_params, Hash
   	
def paypal_url(return_path, product)
    values = {
        business: "william.wolfe-facilitator@angelo.edu",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        invoice: id,
        amount: product.price,
        item_name: product.title,
        item_number: product.id,
        quantity: quantity,
        notify_url: "#{Rails.application.secrets.app_host}/hook"
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end
  
  
end
