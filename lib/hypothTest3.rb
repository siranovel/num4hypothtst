class HypothTest3IF
    def tDistTest(statistic, df, a)
        raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
    end
    def chi2DistTest(statistic, df, a)
        raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
    end
    def normDistTest(statistic, a)
        raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
    end
    def fDistTest(statistic, nf, df, a)
        raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
    end
    def populationCorre(r, n, rth0)
        raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
    end
end
