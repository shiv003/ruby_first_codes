module CalulateTax
  def round_of(int_value)
    mul_value = int_value*20.0
    mul_value = mul_value.ceil
    f_value = mul_value/20.0
     return f_value
   end

  def total_tax(object_arr1)
    total_tax_on_items = 0
    object_arr1.each do |tax_value|
      rounded_value  =  round_of((tax_value.get_quantity*tax_value.get_price*tax_value.get_tax).round(2)) 
      tax_value.set_price = (tax_value.get_price + rounded_value).round(2)
      #puts tax_value.get_price_with_tax
      total_tax_on_items = total_tax_on_items + rounded_value
    end
    return total_tax_on_items.round(2) 
  end

  def total_bill(object_arr2)
    total_bill_to_pay = 0
    object_arr2.each do |x|
    total_bill_to_pay = total_bill_to_pay + x.get_price_with_tax
  end
  return total_bill_to_pay.round(2)
end

end