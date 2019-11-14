class Patient
  
  attr_reader :name, :appointment, :doctor
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def new_appointment(date,doctor)
    appointment = Appointment.new(date,self,doctor)  
  end
  
  def self.all
    @@all
  end
  
  def patient
    @patient
  end 
  
  def appointments
    Appointment.all.select{|appointment| appointment.patient == self}  
  end 
  
  def doctors
    appointments.all.map do |appointment|
      appointment.doctor
    end
  end
  
  
end