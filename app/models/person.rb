class Person < ActiveRecord::Base

  validates :first_name, :last_name, :email, :address_line_one, :city, :state, :zip_code, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  validates :zip_code, length: { minimum: 5 },
            format: { with: /\d{5}/ }

  validates :state, inclusion: {
      :in => %w(AK KY NY AL LA OH AR MA OK AZ MD OR CA  ME PA CO MI RI CT MN SC DC MO SD DE MS TN
 +FL MT TX GA NC UT HI ND VA IA NE VT ID NH WA IL NJ WI IN NM WV KS NV WY),
      :message => "is not a valid state" }

end
