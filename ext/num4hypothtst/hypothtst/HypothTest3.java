package hypothtst;

// 仮設検定
interface HypothTest3 {
    boolean tDistTest(double statistic, double df, double a);
    boolean chi2DistTest(double statistic, double df, double a);
    boolean normDistTest(double statistic, double a);
    boolean fDistTest(double statistic, double nf, double df, double a);

    default boolean populationCorre(double r, int n, double rth0, double a) {
        return normDistTest(populaCorrStatistic(r, n, rth0), a);
    }
    private double populaCorrStatistic(double r, int n, double rth0) {
        double statistic = Math.sqrt(n-3.0) * 
               (
               0.5 * Math.log((1.0 + r) / (1.0 - r)) 
             - 0.5 * Math.log((1.0 + rth0) / (1.0 - rth0))
               );

        return statistic;
    }
}

