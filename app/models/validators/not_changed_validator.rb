class NotChangedValidator < ActiveModel::Validator
  def validate(record)
    if options[:fields].any? do |field|
      record.errors.add field, "Cannot be changed" if record.send("#{field}_changed?")
      end
    end
  end
end
