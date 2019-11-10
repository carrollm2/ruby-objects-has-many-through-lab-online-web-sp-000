require 'pry'

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @patient_appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
    @patient_appointments << new_appointment
    new_appointment
    #doctor.appointments << new_appointment
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient.name == self.name}
  end

  def doctors

    doctors_list = []
    @appointments.each do |appointment|
      if doctors_list.include?(appointment.doctor) == false
        doctors_list << appointment.doctor
      end
    end
    doctors_list
    #binding.pry
  end

end
