// 仮設検定
interface HypothTest {
    boolean tDistTest(double statistic, double df, double a);
    boolean chi2DistTest(double statistic, double df, double a);
    boolean normDistest(double statistic, double a);
    boolean fDistTest(double statistic, double nf, double df, double a);
}

