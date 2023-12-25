package hypothtst;

import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.distribution.FDistribution;

// 両側検定
public class TwoSideTest implements HypothTest {
    private static HypothTest hupothTest = new TwoSideTest();
    public static HypothTest getInstance() {
        return hupothTest;
    }
    public boolean tDistTest(double statistic, double df, double a) {
        TDistribution tDist = new TDistribution(df);
        double l_val = tDist.inverseCumulativeProbability(a / 2.0);
        double r_val = tDist.inverseCumulativeProbability(1.0 - a / 2.0);

        return evaluation(statistic, l_val, r_val);
    }
    public boolean chi2DistTest(double statistic, double df, double a) {
        ChiSquaredDistribution chi2Dist = new ChiSquaredDistribution(df);
        double l_val = chi2Dist.inverseCumulativeProbability(a / 2.0);
        double r_val = chi2Dist.inverseCumulativeProbability(1.0 - a / 2.0);

        return evaluation(statistic, l_val, r_val);
    }
    public boolean normDistTest(double statistic, double a) {
        NormalDistribution norDist = new NormalDistribution(0, 1);
        double l_val = norDist.inverseCumulativeProbability(a / 2.0);
        double r_val = norDist.inverseCumulativeProbability(1.0 - a / 2.0);

        return evaluation(statistic, l_val, r_val);
    }
    public boolean fDistTest(double statistic, double nf, double df, double a) {
        FDistribution fDist = new FDistribution(nf, df);
        double l_val = fDist.inverseCumulativeProbability(a / 2.0);
        double r_val = fDist.inverseCumulativeProbability(1.0 - a / 2.0);

        return evaluation(statistic, l_val, r_val);
    }
    public boolean utest(double statistic, int n1, int n2, double a) {
        double e_u = n1 * n2 / 2.0;
        double var_u = (n1 * n2 * (n1 + n2 + 1.0)) / 12.0;
        double z = (statistic - e_u) / Math.sqrt(var_u);
      
        return normDistTest(z, a);
    }
    public boolean wilcoxon(double statistic, int n, double a) {
        double e_w = n * (n  + 1.0) / 4.0;
        double var_w = n * (n + 1.0) * (2.0 * n + 1.0) / 24.0;
        double z = (statistic - e_w) / Math.sqrt(var_w);

        return normDistTest(z, a);
    }

    private boolean evaluation(double statistic, double l_val, double r_val) {
        boolean ret = true;

        if ((l_val < statistic) && (statistic < r_val)) {
            ret = false;
        }
        return ret;
    }
    
}

