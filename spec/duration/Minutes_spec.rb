# spec/duration/minutes_spec.rb

require_relative '../spec_helper'

describe Duration::Minutes do
  describe "initialization" do
    it "initializes with an integer" do
      mins = Duration::Minutes.new(30)
      _(mins.to_i).must_equal 30
    end

    it "initializes with a float" do
      mins = Duration::Minutes.new(30.5)
      _(mins.to_f).must_equal 30.5
    end
  end

  describe "conversions" do
    before do
      @mins = Duration::Minutes.new(90)
    end

    it "converts to milliseconds" do
      ms = @mins.to_milliseconds
      _(ms).must_be_instance_of Duration::Milliseconds
      _(ms.to_f).must_equal 5400000.0
    end

    it "converts to seconds" do
      secs = @mins.to_seconds
      _(secs).must_be_instance_of Duration::Seconds
      _(secs.to_f).must_equal 5400.0
    end

    it "converts to hours" do
      hours = @mins.to_hours
      _(hours).must_be_instance_of Duration::Hours
      _(hours.to_f).must_equal 1.5
    end

    it "converts to days" do
      days = @mins.to_days
      _(days).must_be_instance_of Duration::Days
      _(days.to_f).must_equal 0.0625
    end

    it "converts to weeks" do
      weeks = @mins.to_weeks
      _(weeks).must_be_instance_of Duration::Weeks
    end

    it "converts to months" do
      months = @mins.to_months
      _(months).must_be_instance_of Duration::Months
    end

    it "returns itself for to_minutes" do
      _((@mins.to_minutes).object_id).must_equal @mins.object_id
    end
  end

  describe "time calculations" do
    it "calculates ago from current time" do
      mins = Duration::Minutes.new(30)
      time_ago = mins.ago
      _(time_ago).must_be_instance_of Time
      _(Time.now - time_ago).must_be_within_delta 1800.0, 1.0
    end

    it "calculates hence from current time" do
      mins = Duration::Minutes.new(30)
      time_hence = mins.hence
      _(time_hence).must_be_instance_of Time
      _(time_hence - Time.now).must_be_within_delta 1800.0, 1.0
    end
  end
end
