package hypothtst;

// 仮設検定
import org.apache.commons.math3.distribution.TDistribution;
interface HypothTest2 {
    default boolean twoSideTest(double statistic, int n, double a) {
        double r_val = calcGnValue(n, a / 2.0);
        return evaluation(statistic, r_val);
    }
    default boolean oneSideTest(double statistic, int n, double a) {
        double r_val = calcGnValue(n, a);
        return evaluation(statistic, r_val);
    }
    private double calcGnValue(int n, double a) {
        TDistribution tDist = new TDistribution(n - 2);
        double t = tDist.inverseCumulativeProbability(a / n);
        double gn = (n - 1) * t / Math.sqrt(n * (n - 2 + t * t));

        return Math.abs(gn);
    }
    private boolean evaluation(double statistic, double r_val) {
        boolean ret = true;

        if (Math.abs(statistic) < r_val) {
            ret = false;
        }
        return ret;
    }
}

