require 'java'
require 'num4hypothtst.jar'
require 'commons-math3-3.6.1.jar'

java_import 'TwoSideTest'
java_import 'RightSideTest'
java_import 'LeftSideTest'

# 統計的仮設検定のためのライブラリ
#  (Apache commoms math3使用)
module Num4HypothTestLib
    # 両側検定
    class TwoSideTestLib
        def initialize
            @hypothTest = TwoSideTest.getInstance()
        end
        # T検定
        #
        # @overload tDistTest(statistic, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistest(statistic, a)
        #   @param [double] statistic 統計量
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistest(statistic, a)
            return @hypothTest.normDistest(statistic, a)
        end
        # F検定
        #
        # @overload fDistTest(statistic, nf, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    nf        自由度
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def fDistTest(statistic, nf, df, a)
            return @hypothTest.fDistTest(statistic, nf, df, a)
        end
    end
    # 片側(右側)検定
    class RightSideTestLib
        def initialize
            @hypothTest = RightSideTest.getInstance()
        end
        # T検定
        #
        # @overload tDistTest(statistic, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistest(statistic, a)
        #   @param [double] statistic 統計量
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistest(statistic, a)
            return @hypothTest.normDistest(statistic, a)
        end
        # F検定
        #
        # @overload fDistTest(statistic, nf, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    nf        自由度
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def fDistTest(statistic, nf, df, a)
            return @hypothTest.fDistTest(statistic, nf, df, a)
        end
    end
    # 片側(左側)検定
    class LeftSideTestLib
        def initialize
            @hypothTest = LeftSideTest.getInstance()
        end
        # T検定
        #
        # @overload tDistTest(statistic, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistest(statistic, a)
        #   @param [double] statistic 統計量
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistest(statistic, a)
            return @hypothTest.normDistest(statistic, a)
        end
        # F検定
        #
        # @overload fDistTest(statistic, nf, df, a)
        #   @param [double] statistic 統計量
        #   @param [int]    nf        自由度
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def fDistTest(statistic, nf, df, a)
            return @hypothTest.fDistTest(statistic, nf, df, a)
        end
    end
end

