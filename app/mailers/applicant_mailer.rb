class ApplicantMailer < ActionMailer::Base

  def confirmation_email(applicant)
  	@applicant = applicant
  	mail(to: @applicant.email, subject: 'Simplon.com - Confirmation de candidature')
  end
end
