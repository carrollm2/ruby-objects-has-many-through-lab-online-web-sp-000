require 'pry'

class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    self.patient = patient
    self.doctor = doctor
    @@all << self
  end

  # def patient
  #   self.patient
  # end
  #
  # def doctor
  #   self.doctor
  # end

  #binding.pry

  def self.all
    @@all
  end
end
