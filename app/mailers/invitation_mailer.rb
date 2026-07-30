class InvitationMailer < ApplicationMailer
  default from: "nikhilshivaraj06@gmail.com"

  def invite(email, trip)
    @trip = trip
    @join_url = join_trip_url(token: trip.join_token)

    mail(
      to: email,
      subject: "Invitation to join #{@trip.name} on TripSplit"
    )
  end
end