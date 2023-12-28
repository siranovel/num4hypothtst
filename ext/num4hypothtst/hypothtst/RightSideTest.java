package hypothtst;

import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.distribution.FDistribution;
// 片側検定(右側)
public class RightSideTest implements HypothTest3 {
    private static HypothTest3 hypothTest3 = new RightSideTest();
    public static HypothTest3 getInstance() {
        return hypothTest3;
    }
    public boolean tDistTest(double statistic, double df, double a) {
        TDistribution tDist = new TDistribution(df);
        double r_val = tDist.inverseCumulativeProbability(1.0 - a);

        return evaluation(statistic, r_val);
    }
    public boolean chi2DistTest(double statistic, double df, double a) {
        ChiSquaredDistribution chi2Dist = new ChiSquaredDistribution(df);
        double r_val = chi2Dist.inverseCumulativeProbability(1.0 - a);

        return evaluation(statistic, r_val);
    }
    public boolean normDistTest(double statistic, double a) {
        NormalDistribution norDist = new NormalDistribution(0, 1);
        double r_val = norDist.inverseCumulativeProbability(1.0 - a);

        return evaluation(statistic, r_val);
    }
    public boolean fDistTest(double statistic, double nf, double df, double a) {
        FDistribution fDist = new FDistribution(nf, df);
        double r_val = fDist.inverseCumulativeProbability(1.0 - a);

        return evaluation(statistic, r_val);
    }
    public boolean populationCorre(double r, int n, double rth0, double a) {
       double statistic = Math.sqrt(n-3.0) * 
               (
               0.5 * Math.log((1.0 + r) / (1.0 - r)) 
             - 0.5 * Math.log((1.0 + rth0) / (1.0 - rth0))
               );

        return normDistTest(statistic, a);
    }

    private boolean evaluation(double statistic, double r_val) {
        boolean ret = true;

        if (statistic < r_val) {
            ret = false;
        }
        return ret;
    }
}

