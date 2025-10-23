# spec/duration/seconds_spec.rb

require_relative '../spec_helper'

describe Duration::Seconds do
  describe "initialization" do
    it "initializes with an integer" do
      secs = Duration::Seconds.new(60)
      _(secs.to_i).must_equal 60
    end

    it "initializes with a float" do
      secs = Duration::Seconds.new(60.5)
      _(secs.to_f).must_equal 60.5
    end
  end

  describe "conversions" do
    before do
      @secs = Duration::Seconds.new(90)
    end

    it "converts to milliseconds" do
      ms = @secs.to_milliseconds
      _(ms).must_be_instance_of Duration::Milliseconds
      _(ms.to_f).must_equal 90000.0
    end

    it "converts to minutes" do
      mins = @secs.to_minutes
      _(mins).must_be_instance_of Duration::Minutes
      _(mins.to_f).must_equal 1.5
    end

    it "converts to hours" do
      hours = @secs.to_hours
      _(hours).must_be_instance_of Duration::Hours
      _(hours.to_f).must_equal 0.025
    end

    it "converts to days" do
      days = @secs.to_days
      _(days).must_be_instance_of Duration::Days
    end

    it "converts to weeks" do
      weeks = @secs.to_weeks
      _(weeks).must_be_instance_of Duration::Weeks
    end

    it "converts to months" do
      months = @secs.to_months
      _(months).must_be_instance_of Duration::Months
    end

    it "returns itself for to_seconds" do
      _((@secs.to_seconds).object_id).must_equal @secs.object_id
    end
  end

  describe "time calculations" do
    it "calculates ago from current time" do
      secs = Duration::Seconds.new(30)
      time_ago = secs.ago
      _(time_ago).must_be_instance_of Time
      _(Time.now - time_ago).must_be_within_delta 30.0, 1.0
    end

    it "calculates hence from current time" do
      secs = Duration::Seconds.new(30)
      time_hence = secs.hence
      _(time_hence).must_be_instance_of Time
      _(time_hence - Time.now).must_be_within_delta 30.0, 1.0
    end
  end
end
