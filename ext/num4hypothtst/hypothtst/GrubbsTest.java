package hypothtst;

import org.apache.commons.math3.distribution.TDistribution;
// グラブス・スミルノフの外れ値の検定
public class GrubbsTest implements HypothTest2 {
    private static HypothTest2 hypothTest2 = new GrubbsTest();
    public static HypothTest2 getInstance() {
        return hypothTest2;
    }
    public boolean twoSideTest(double statistic, int n, double a) {
        double r_val = calcGnValue(n, a / 2.0);
        return evaluation(statistic, r_val);
    }
    public boolean oneSideTest(double statistic, int n, double a) {
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

