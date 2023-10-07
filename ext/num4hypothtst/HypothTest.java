// 仮設検定
interface HypothTest {
    boolean tDistTest(double statistic, double df, double a);
    boolean chi2DistTest(double statistic, double df, double a);
    boolean normDistTest(double statistic, double a);
    boolean fDistTest(double statistic, double nf, double df, double a);
    boolean gnTest(double statistic, int n, double a);
}

