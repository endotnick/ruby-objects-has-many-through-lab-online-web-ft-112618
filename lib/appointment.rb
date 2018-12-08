class Appointment
    attr_reader :date, :doctor, :patient
    @@all = []

    def initialize(patient, doctor, date)
        @date = date
        @patient = patient
        @doctor = doctor
        self.class.all << self
    end

    def self.all
        @@all
    end
end
