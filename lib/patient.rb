class Patient
  def initialize( name )
    @name = name
    @appointments = []
  end
  attr_reader :appointments
  #####################################################
  def add_appointment( appointment )
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end.uniq
  end
end
