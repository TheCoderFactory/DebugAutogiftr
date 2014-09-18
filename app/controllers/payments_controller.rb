class PaymentsController < ApplicationController
	def create
		@amount = params[:amount]
		token = params[:stripeToken]
		customer = Stripe::Customer.create(
			:card => token,
			:description => current_user.email
		)
		Stripe::Charge.create(
			amount: (@amount * 100).to_i,
			currency: 'aud',
			customer: customer.id
		)
		current_user.account.update_attribute('stripe_id', customer.id)
		current_user.account.update_attribute('balance', 0.0)
		redirect_to account_path(current_user.account), notice: 'Thanks for your payment'
	end
end
