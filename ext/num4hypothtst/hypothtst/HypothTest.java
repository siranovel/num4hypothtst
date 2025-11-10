package hypothtst;

// 仮設検定
import org.apache.commons.math3.distribution.TDistribution;
interface HypothTest {
    default boolean twoSideTest(double r, int n, double a) {
        double statistic = Math.abs(r) * Math.sqrt(n - 2.0) / Math.sqrt(1.0 - r * r);
        TDistribution tDist = new TDistribution(n - 2);
        double p = 1.0 - tDist.cumulativeProbability(statistic);

        return (p < a) ? true : false;
    }
}

