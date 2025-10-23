# spec/duration/months_spec.rb

require_relative '../spec_helper'

describe Duration::Months do
  describe "initialization" do
    it "initializes with an integer" do
      months = Duration::Months.new(3)
      _(months.to_i).must_equal 3
    end

    it "initializes with a float" do
      months = Duration::Months.new(3.5)
      _(months.to_f).must_equal 3.5
    end
  end

  describe "conversions" do
    before do
      @months = Duration::Months.new(2)
    end

    it "converts to milliseconds" do
      ms = @months.to_milliseconds
      _(ms).must_be_instance_of Duration::Milliseconds
    end

    it "converts to seconds" do
      secs = @months.to_seconds
      _(secs).must_be_instance_of Duration::Seconds
    end

    it "converts to minutes" do
      mins = @months.to_minutes
      _(mins).must_be_instance_of Duration::Minutes
    end

    it "converts to hours" do
      hours = @months.to_hours
      _(hours).must_be_instance_of Duration::Hours
    end

    it "converts to days" do
      days = @months.to_days
      _(days).must_be_instance_of Duration::Days
    end

    it "converts to weeks" do
      weeks = @months.to_weeks
      _(weeks).must_be_instance_of Duration::Weeks
    end

    it "returns itself for to_months" do
      _((@months.to_months).object_id).must_equal @months.object_id
    end
  end

  describe "time calculations" do
    it "calculates ago from current time" do
      months = Duration::Months.new(1)
      time_ago = months.ago
      _(time_ago).must_be_instance_of Time
      # Approximately 30 days worth of seconds
      _(Time.now - time_ago).must_be :>, 2500000.0
    end

    it "calculates hence from current time" do
      months = Duration::Months.new(1)
      time_hence = months.hence
      _(time_hence).must_be_instance_of Time
      # Approximately 30 days worth of seconds
      _(time_hence - Time.now).must_be :>, 2500000.0
    end
  end
end
