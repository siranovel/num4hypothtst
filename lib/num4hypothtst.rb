require 'java'
require 'num4hypothtst.jar'
require 'commons-math3-3.6.1.jar'

java_import 'hypothtst.TwoSideTest'
java_import 'hypothtst.RightSideTest'
java_import 'hypothtst.LeftSideTest'
java_import 'hypothtst.GrubbsTest'

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
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistTest(statistic, a)
        #   @param [double] statistic 検定統計量
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistTest(statistic, a)
            return @hypothTest.normDistTest(statistic, a)
        end
        # F検定
        #
        # @overload fDistTest(statistic, nf, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    nf        自由度
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def fDistTest(statistic, nf, df, a)
            return @hypothTest.fDistTest(statistic, nf, df, a)
        end
        # ウィルコクソン符号順位検定
        #
        # @overload wilcoxon(statistic, n, a)
        #   @param [int] statistic ウィルコクソン符号順位の検定統計量
        #   @param [int] n         データの個数
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   内部でN(0,1)に近似して検定
        def wilcoxon(statistic, n, a)
            return @hypothTest.wilcoxon(statistic, n, a)
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
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistTest(statistic, a)
        #   @param [double] statistic 検定統計量
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistTest(statistic, a)
            return @hypothTest.normDistTest(statistic, a)
        end
        # F検定
        #
        # @overload fDistTest(statistic, nf, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    nf        自由度
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def fDistTest(statistic, nf, df, a)
            return @hypothTest.fDistTest(statistic, nf, df, a)
        end
        # ウィルコクソン符号順位検定
        #
        # @overload wilcoxon(statistic, n, a)
        #   @param [int] statistic ウィルコクソン符号順位の検定統計量
        #   @param [int] n         データの個数
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   内部でN(0,1)に近似して検定
        def wilcoxon(statistic, n, a)
            return @hypothTest.wilcoxon(statistic, n, a)
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
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistTest(statistic, a)
        #   @param [double] statistic 検定統計量
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistTest(statistic, a)
            return @hypothTest.normDistTest(statistic, a)
        end
        # F検定
        #
        # @overload fDistTest(statistic, nf, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    nf        自由度
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def fDistTest(statistic, nf, df, a)
            return @hypothTest.fDistTest(statistic, nf, df, a)
        end
        # ウィルコクソン符号順位検定
        #
        # @overload wilcoxon(statistic, n, a)
        #   @param [int] statistic ウィルコクソン符号順位の検定統計量
        #   @param [int] n         データの個数
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   内部でN(0,1)に近似して検定
        def wilcoxon(statistic, n, a)
            return @hypothTest.wilcoxon(statistic, n, a)
        end
    end
    # グラブス・スミルノフの外れ値の検定
    class GrubbsTestLib
        def initialize
            @hypothTest = GrubbsTest.getInstance()
        end
        # 両側検定
        #
        # @overload twoSideTest(statistic, n, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    n         自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def twoSideTest(statistic, n, a)
            return @hypothTest.twoSideTest(statistic, n, a)
        end
        # 片側検定
        #
        # @overload oneSideTest(statistic, n, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    n         自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def oneSideTest(statistic, n, a)
            return @hypothTest.oneSideTest(statistic, n, a)
        end
    end
end

