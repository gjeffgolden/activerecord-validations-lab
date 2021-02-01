class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title
            reqs = ["Won't Believe", "Secret", "Top[number]", "Guess"]
            if reqs.find { |words| record.title.include? (words) } == nil
            record.errors[:title] << "Must be more clickbaity!"
            end
        end
    end
end