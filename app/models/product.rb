class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images, foreign_key: "product_id"
  def sale_message
    if in_stock?
      if price.to_i < 2
        "Discount item!"
      else "Everyday Value!"
      end
    else
      "Out of stock!"
    end
  end

  def price_color
    if price.to_i < 2
      "red"
    else "black"
    end
  end

  def tax
    price.to_i * 0.09
  end

  def total
    price.to_f + tax
  end
end
