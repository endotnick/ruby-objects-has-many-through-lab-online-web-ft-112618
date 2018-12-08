class Patient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appt| appt.patient == self}
    end
    
    def doctors
        self.appointments.map(&:doctor)
    end

    def new_appointment(doctor, date)
        doctor.new_appointment(self, date)
    end
end