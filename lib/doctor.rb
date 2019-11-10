require 'pry'

class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @doctor_appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)

    new_appointment = Appointment.new(date, patient, self)
    @doctor_appointments << new_appointment
    patient.patient_appointments << new_appointment
    new_appointment
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor.name == self.name}
  end

  def patients

    # patient_names = []
    # @appointnments.each do |appointment|
    #   patient_names << appointment.patient.name
    # end

    patient_list = []
    @doctpor_appointments.each do |appointment|
      if patient_list.include?(appointment.patient) == false
        patient_list << appointment.patient
      end
    end
    patient_list
  end

end
