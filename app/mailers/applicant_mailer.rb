class ApplicantMailer < ActionMailer::Base
  default from: "guillaume01.simplon@gmail.com"

  def confirmation_email(applicant)
  	@applicant = applicant
  	mail(to: applicant.email, subject: 'test pour voir')
  end
end
