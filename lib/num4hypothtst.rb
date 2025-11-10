require 'java'
require 'num4hypothtst.jar'
require 'commons-math3-3.6.1.jar'
require_relative('hypothTest3')

java_import 'hypothtst.TwoSideTest'
java_import 'hypothtst.RightSideTest'
java_import 'hypothtst.LeftSideTest'
java_import 'hypothtst.GrubbsTest'
java_import 'hypothtst.DecorrTest'

# 統計的仮設検定のためのライブラリ
#  (Apache commoms math3使用)
module Num4HypothTestLib
    # 両側検定
    class TwoSideTestLib < HypothTest3IF
        def initialize
            @hypothTest3 = TwoSideTest.getInstance()
        end
        # T検定
        #
        # @overload tDistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest3.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest3.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistTest(statistic, a)
        #   @param [double] statistic 検定統計量
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistTest(statistic, a)
            return @hypothTest3.normDistTest(statistic, a)
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
            return @hypothTest3.fDistTest(statistic, nf, df, a)
        end

        # 母相関係数の検定量
        #
        # @overload populationCorre(r, n, rth0, a)
        #   @param [double] r    標本相関係数
        #   @param [int]    n    自由度
        #   @param [double] rth0 母相関係数
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   標準正規分布 N(0,1*1)に従う(近似的)
        def populationCorre(r, n, rth0, a)
            return @hypothTest3.populationCorre(r, n, rth0, a);
        end
        # 母相関係数の差の検定(対応のない場合)
        #
        # @overload diffPopulationCorre(r1, n1, r2, n2, a)
        #   @param [double] r1    標本相関係数
        #   @param [int]    n1    自由度
        #   @param [double] r2    標本相関係数
        #   @param [int]    n2    自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   標準正規分布 N(0,1*1)に従う(近似的)
        def diffPopulationCorre(r1, n1, r2, n2, a)
            return @hypothTest3.diffPopulationCorre(r1, n1, r2, n2, a);
        end
    end
    # 片側(右側)検定
    class RightSideTestLib < HypothTest3IF
        def initialize
            @hypothTest3 = RightSideTest.getInstance()
        end
        # T検定
        #
        # @overload tDistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest3.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest3.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistTest(statistic, a)
        #   @param [double] statistic 検定統計量
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistTest(statistic, a)
            return @hypothTest3.normDistTest(statistic, a)
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
            return @hypothTest3.fDistTest(statistic, nf, df, a)
        end

        # 母相関係数の検定量
        #
        # @overload populationCorre(r, n, rth0, a)
        #   @param [double] r    標本相関係数
        #   @param [int]    n    自由度
        #   @param [double] rth0 母相関係数
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   標準正規分布 N(0,1*1)に従う(近似的)
        def populationCorre(r, n, rth0, a)
            return @hypothTest3.populationCorre(r, n, rth0, a);
        end
        # 母相関係数の差の検定(対応のない場合)
        #
        # @overload diffPopulationCorre(r1, n1, r2, n2, a)
        #   @param [double] r1    標本相関係数
        #   @param [int]    n1    自由度
        #   @param [double] r2    標本相関係数
        #   @param [int]    n2    自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   標準正規分布 N(0,1*1)に従う(近似的)
        def diffPopulationCorre(r1, n1, r2, n2, a)
            return @hypothTest3.diffPopulationCorre(r1, n1, r2, n2, a);
        end
    end
    # 片側(左側)検定
    class LeftSideTestLib < HypothTest3IF
        def initialize
            @hypothTest3 = LeftSideTest.getInstance()
        end
        # T検定
        #
        # @overload tDistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def tDistTest(statistic, df, a)
            return @hypothTest3.tDistTest(statistic, df, a)
        end
        # 階2乗検定
        #
        # @overload chi2DistTest(statistic, df, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    df        自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def chi2DistTest(statistic, df, a)
            return @hypothTest3.chi2DistTest(statistic, df, a)
        end
        # 標準正規分布検定
        #
        # @overload normDistTest(statistic, a)
        #   @param [double] statistic 検定統計量
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def normDistTest(statistic, a)
            return @hypothTest3.normDistTest(statistic, a)
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
            return @hypothTest3.fDistTest(statistic, nf, df, a)
        end

        # 母相関係数の検定量
        #
        # @overload populationCorre(r, n, rth0, a)
        #   @param [double] r    標本相関係数
        #   @param [int]    n    自由度
        #   @param [double] rth0 母相関係数
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   標準正規分布 N(0,1*1)に従う(近似的)
        def populationCorre(r, n, rth0, a)
            return @hypothTest3.populationCorre(r, n, rth0, a);
        end
        # 母相関係数の差の検定(対応のない場合)
        #
        # @overload diffPopulationCorre(r1, n1, r2, n2, a)
        #   @param [double] r1    標本相関係数
        #   @param [int]    n1    自由度
        #   @param [double] r2    標本相関係数
        #   @param [int]    n2    自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        # @note
        #   標準正規分布 N(0,1*1)に従う(近似的)
        def diffPopulationCorre(r1, n1, r2, n2, a)
            return @hypothTest3.diffPopulationCorre(r1, n1, r2, n2, a);
        end
    end
    # グラブス・スミルノフの外れ値の検定
    class GrubbsTestLib
        def initialize
            @hypothTest2 = GrubbsTest.getInstance()
        end
        # 両側検定
        #
        # @overload twoSideTest(statistic, n, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    n         自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def twoSideTest(statistic, n, a)
            return @hypothTest2.twoSideTest(statistic, n, a)
        end
        # 片側検定
        #
        # @overload oneSideTest(statistic, n, a)
        #   @param [double] statistic 検定統計量
        #   @param [int]    n         自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def oneSideTest(statistic, n, a)
            return @hypothTest2.oneSideTest(statistic, n, a)
        end
    end
    # 無相関の検定
    class DecorrTestLib
        def initialize
            @hypothTest = DecorrTest.getInstance()
        end
        # 両側検定
        #
        # @overload twoSideTest(r, n, a)
        #   @param [double] r         相関係数
        #   @param [int]    n         自由度
        #   @param [double] a         有意水準
        #   @return [boolean] 検定結果(true:棄却域内 false:棄却域外)
        def twoSideTest(r, n, a)
            return @hypothTest.twoSideTest(r, n, a)
        end
    end
end

