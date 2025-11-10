package hypothtst;

// 仮設検定
interface HypothTest3 {
    boolean tDistTest(double statistic, double df, double a);
    boolean chi2DistTest(double statistic, double df, double a);
    boolean normDistTest(double statistic, double a);
    boolean fDistTest(double statistic, double nf, double df, double a);

    // 母相関係数の検定
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
    // 母相関係数の差の検定
    default boolean diffPopulationCorre(double r1, int n1, double r2, int n2, double a) {
        return normDistTest(diffPopulationCorreStatistic(r1, n1, r2, n2), a);
    }
    private double diffPopulationCorreStatistic(double r1, int n1, double r2, int n2) {
        double statistic = (0.5 * Math.log((1 + r1) / (1-r1)) - 0.5 * Math.log((1 + r2) / (1-r2)))
        / Math.sqrt((1.0 / (n1 - 3.0)) + (1.0 / (n2 - 3)));
        return statistic;
    }
}

