package hypothtst;

import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.distribution.FDistribution;
// 片側検定(右側)
public class RightSideTest implements HypothTest {
    private static HypothTest hupothTest = new RightSideTest();
    public static HypothTest getInstance() {
        return hupothTest;
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
    public boolean wilcoxon(double statistic, int n, double a) {
        boolean ret = true;
        double e_t = n * (n  + 1.0) / 4.0;
        double var_t = n * (n + 1.0) * (2.0 * n + 1.0) / 24.0;
        double z = (statistic - e_t) / Math.sqrt(var_t);

        return normDistTest(z, a);
    }
    private boolean evaluation(double statistic, double r_val) {
        boolean ret = true;

        if (statistic < r_val) {
            ret = false;
        }
        return ret;
    }
}

