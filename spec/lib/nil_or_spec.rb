require 'spec_helper'

class HistoryMock
  attr_reader :calls
  def initialize
    @calls = []
  end

  def method_missing(method, *args, &block)
    calls << [method, args, block]
  end
end

describe NilOr do
  let(:delegate) { target.nil_or }

  context "nil" do
    let(:target) { nil }

    context "no arguments" do
      context "no block" do
        subject { delegate.some_attribute }
        it { should be_nil }
      end

      context "with block" do
        let(:block) { lambda { do_nothing } }
        subject { delegate.some_iterator(&block) }
        it { should be_nil }
      end
    end

    context "with arguments" do
      context "no block" do
        subject { delegate.some_method(1, 2) }
        it { should be_nil }
      end

      context "with block" do
        let(:block) { lambda { do_nothing } }
        subject { delegate.some_method(1, 2, &block) }
        it { should be_nil }
      end
    end
  end

  context "not nil" do
    let(:target) { HistoryMock.new }
    subject { target.calls }

    context "no arguments" do
      context "no block" do
        before { delegate.some_attribute }
        it { should include([:some_attribute, [], nil]) }
      end

      context "with block" do
        let(:block) { lambda { do_nothing } }
        before { delegate.some_iterator(&block) }
        it { should include([:some_iterator, [], block]) }
      end
    end

    context "with arguments" do
      context "no block" do
        before { delegate.some_method(1, 2) }
        it { should include([:some_method, [1, 2], nil]) }
      end

      context "with block" do
        let(:block) { lambda { do_nothing } }
        before { delegate.some_method(1, 2, &block) }
        it { should include([:some_method, [1, 2], block]) }
      end
    end
  end
end
