# spec/duration/milliseconds_spec.rb

require_relative '../spec_helper'

describe Duration::Milliseconds do
  describe "initialization" do
    it "initializes with an integer" do
      ms = Duration::Milliseconds.new(1000)
      _(ms.to_i).must_equal 1000
    end

    it "initializes with a float" do
      ms = Duration::Milliseconds.new(1500.5)
      _(ms.to_f).must_equal 1500.5
    end
  end

  describe "conversions" do
    before do
      @ms = Duration::Milliseconds.new(5000)
    end

    it "converts to seconds" do
      seconds = @ms.to_seconds
      _(seconds).must_be_instance_of Duration::Seconds
      _(seconds.to_f).must_equal 5.0
    end

    it "converts to minutes" do
      minutes = @ms.to_minutes
      _(minutes).must_be_instance_of Duration::Minutes
      _(minutes.to_f).must_be_within_delta 0.0833, 0.001
    end

    it "converts to hours" do
      hours = @ms.to_hours
      _(hours).must_be_instance_of Duration::Hours
      _(hours.to_f).must_be_within_delta 0.00138, 0.0001
    end

    it "converts to days" do
      days = @ms.to_days
      _(days).must_be_instance_of Duration::Days
    end

    it "converts to weeks" do
      weeks = @ms.to_weeks
      _(weeks).must_be_instance_of Duration::Weeks
    end

    it "converts to months" do
      months = @ms.to_months
      _(months).must_be_instance_of Duration::Months
    end

    it "returns itself for to_milliseconds" do
      _((@ms.to_milliseconds).object_id).must_equal @ms.object_id
    end
  end

  describe "time calculations" do
    it "calculates ago from current time" do
      ms = Duration::Milliseconds.new(1000)
      time_ago = ms.ago
      _(time_ago).must_be_instance_of Time
      _(time_ago).must_be :<, Time.now
    end

    it "calculates hence from current time" do
      ms = Duration::Milliseconds.new(1000)
      time_hence = ms.hence
      _(time_hence).must_be_instance_of Time
      _(time_hence).must_be :>, Time.now
    end
  end
end
