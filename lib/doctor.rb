class Doctor
  def initialize( name )
    @name = name
    @appointments = []
  end
  attr_reader :name, :appointments
  #####################################################
  def add_appointment( appointment )
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.map do |appointment|
      appointment.patient
    end.uniq
  end
end
