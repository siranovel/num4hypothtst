package hypothtst;

// 仮設検定
interface HypothTest3 {
    boolean tDistTest(double statistic, double df, double a);
    boolean chi2DistTest(double statistic, double df, double a);
    boolean normDistTest(double statistic, double a);
    boolean fDistTest(double statistic, double nf, double df, double a);

    boolean populationCorre(double r, int n, double rth0, double a);
}

