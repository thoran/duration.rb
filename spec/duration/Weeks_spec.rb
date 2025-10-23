# spec/duration/weeks_spec.rb

require_relative '../spec_helper'

describe Duration::Weeks do
  describe "initialization" do
    it "initializes with an integer" do
      weeks = Duration::Weeks.new(2)
      _(weeks.to_i).must_equal 2
    end

    it "initializes with a float" do
      weeks = Duration::Weeks.new(2.5)
      _(weeks.to_f).must_equal 2.5
    end
  end

  describe "conversions" do
    before do
      @weeks = Duration::Weeks.new(2)
    end

    it "converts to milliseconds" do
      ms = @weeks.to_milliseconds
      _(ms).must_be_instance_of Duration::Milliseconds
      _(ms.to_f).must_equal 1209600000.0
    end

    it "converts to seconds" do
      secs = @weeks.to_seconds
      _(secs).must_be_instance_of Duration::Seconds
      _(secs.to_f).must_equal 1209600.0
    end

    it "converts to minutes" do
      mins = @weeks.to_minutes
      _(mins).must_be_instance_of Duration::Minutes
      _(mins.to_f).must_equal 20160.0
    end

    it "converts to hours" do
      hours = @weeks.to_hours
      _(hours).must_be_instance_of Duration::Hours
      _(hours.to_f).must_equal 336.0
    end

    it "converts to days" do
      days = @weeks.to_days
      _(days).must_be_instance_of Duration::Days
      _(days.to_f).must_equal 14.0
    end

    it "converts to months" do
      months = @weeks.to_months
      _(months).must_be_instance_of Duration::Months
    end

    it "returns itself for to_weeks" do
      _((@weeks.to_weeks).object_id).must_equal @weeks.object_id
    end
  end

  describe "time calculations" do
    it "calculates ago from current time" do
      weeks = Duration::Weeks.new(1)
      time_ago = weeks.ago
      _(time_ago).must_be_instance_of Time
      _(Time.now - time_ago).must_be_within_delta 604800.0, 1.0
    end

    it "calculates hence from current time" do
      weeks = Duration::Weeks.new(1)
      time_hence = weeks.hence
      _(time_hence).must_be_instance_of Time
      _(time_hence - Time.now).must_be_within_delta 604800.0, 1.0
    end
  end
end
