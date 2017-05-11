json.extract! payment, :id, :number_of_installment, :has_paid, :discount_rate, :final_amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)
