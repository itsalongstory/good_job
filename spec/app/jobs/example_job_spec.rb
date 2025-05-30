# frozen_string_literal: true

require 'rails_helper'

describe ExampleJob do
  before do
    allow(GoodJob).to receive(:preserve_job_records).and_return(true)
    ActiveJob::Base.queue_adapter = GoodJob::Adapter.new(execution_mode: :inline)
  end

  describe "#perform" do
    describe "SUCCESS_TYPE" do
      it 'completes successfully' do
        active_job = described_class.perform_later(described_class::SUCCESS_TYPE)
        job = GoodJob::Job.find(active_job.provider_job_id)
        expect(job.error).to be_nil
      end
    end

    describe "ERROR_ONCE_TYPE" do
      it 'errors once then succeeds' do
        active_job = described_class.perform_later(described_class::ERROR_ONCE_TYPE)
        10.times do
          GoodJob.perform_inline
          Timecop.travel(5.minutes)
        end
        Timecop.return

        good_job = GoodJob::Job.find_by(active_job_id: active_job.job_id)
        expect(good_job.executions.count).to eq 2
        expect(good_job.executions.last.error).to be_nil
      end
    end

    describe "ERROR_FIVE_TIMES_TYPE" do
      it 'errors five times then succeeds' do
        active_job = described_class.perform_later(described_class::ERROR_FIVE_TIMES_TYPE)
        10.times do
          GoodJob.perform_inline
          Timecop.travel(5.minutes)
        end
        Timecop.return

        good_job = GoodJob::Job.find_by(active_job_id: active_job.job_id)

        expect(good_job.executions.count).to eq 6
        expect(good_job.executions.last.error).to be_nil
      end
    end

    describe "DEAD_TYPE" do
      it 'errors but does not retry' do
        active_job = described_class.perform_later(described_class::DEAD_TYPE)
        10.times do
          GoodJob.perform_inline
          Timecop.travel(5.minutes)
        end
        Timecop.return

        good_job = GoodJob::Job.find_by(active_job_id: active_job.job_id)
        expect(good_job.executions.count).to eq 3
        execution = good_job.executions.last
        expect(execution.error).to be_present
        expect(execution.error_backtrace.count).to be > 100

        if RUBY_VERSION >= "3.4"
          expect(execution.filtered_error_backtrace).to eq(["app/jobs/example_job.rb:44:in 'ExampleJob#perform'"])
        else
          expect(execution.filtered_error_backtrace).to eq(["app/jobs/example_job.rb:44:in `perform'"])
        end
      end
    end

    describe "SLOW_TYPE" do
      it 'sleeps for period' do
        expect_any_instance_of(described_class).to receive(:sleep).at_least(:once)

        active_job = described_class.perform_later(described_class::SLOW_TYPE)

        job = GoodJob::Job.find(active_job.provider_job_id)
        expect(job.error).to be_nil
      end
    end
  end
end
