class Doctor
    attr_reader :appointments, :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def patients
        self.appointments.map(&:patient)
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(patient, self, date)
    end
end
