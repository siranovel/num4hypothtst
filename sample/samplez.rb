require 'num4hypothtst'

RSpec.describe Num4HypothTestLib do
    let(:a) { 0.05 }
    describe Num4HypothTestLib::TwoSideTestLib do
        let(:hypothTest) { Num4HypothTestLib::TwoSideTestLib.new }
        it '#tDistTest' do
            expect(hypothTest.tDistTest(2.683, 8, a)).to eq true
        end
        it '#chi2DistTest' do
            expect(hypothTest.chi2DistTest(2.9064, 9, a)).to eq false
        end
        it '#normDistest' do
            expect(hypothTest.normDistest(-2.072, a)).to eq true
        end
        it '#fDistTest' do
            expect(hypothTest.fDistTest(0.4727, 11, 7, a)).to eq false
        end
    end
    describe Num4HypothTestLib::RightSideTestLib do
        let(:hypothTest) { Num4HypothTestLib::RightSideTestLib.new }
        it '#tDistTest' do
            expect(hypothTest.tDistTest(1.5154, 5, a)).to eq false
        end
        it '#chi2DistTest' do
            expect(hypothTest.chi2DistTest(2.9064, 9, a)).to eq false
        end
        it '#normDistest' do
            expect(hypothTest.normDistest(-2.072, a)).to eq false
        end
        it '#fDistTest' do
            expect(hypothTest.fDistTest(0.4727, 11, 7, a)).to eq false
        end
    end
    describe Num4HypothTestLib::LeftSideTestLib do
        let(:hypothTest) { Num4HypothTestLib::LeftSideTestLib.new }
        it '#tDistTest' do
            expect(hypothTest.tDistTest(-1.765, 18, a)).to eq true
        end
        it '#chi2DistTest' do
            expect(hypothTest.chi2DistTest(2.9064, 9, a)).to eq true
        end
        it '#normDistest' do
            expect(hypothTest.normDistest(-2.072, a)).to eq true
        end
        it '#fDistTest' do
            expect(hypothTest.fDistTest(0.4727, 11, 7, a)).to eq false
        end
    end
end

