class Employee < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_type
  has_many :user_work_details
  has_many :sallary_structures
  has_one :user_detail
  has_one :user_profession_detail
  accepts_nested_attributes_for :user_detail
  accepts_nested_attributes_for :user_profession_detail
  validates_presence_of :user_name, :email
  validates_uniqueness_of :user_name, :email
  GENDERS = %w(male female unknown)
  COMPONENTS = %w(Earnings Deductions)

  def sallary_calc
    earnings = 0
    deductions = 0
    self.sallary_structures.each do |ss|
      if ss.sallary_component_detail.component_type == 'Earnings'
        earnings += ss.amount.to_f
      else
        deductions += ss.amount.to_f
      end
    end
    { earnings: earnings, deductions: deductions }
  end

  def ctc
    earnings = self.sallary_calc[:earnings]
    deductions = self.sallary_calc[:deductions]
    ctc = earnings + deductions
    return ctc
  end

  def annual_gross
    earnings = self.sallary_calc[:earnings]
    deductions = self.sallary_calc[:deductions]
    gross = earnings - deductions
    return gross
  end

  def month_gross
    earnings = self.sallary_calc[:earnings]
    deductions = self.sallary_calc[:deductions]
    gross = (earnings - deductions) / 12
    return gross
  end

  def net_pay
  end
end
