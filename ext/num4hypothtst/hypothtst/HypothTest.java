package hypothtst;

// 仮設検定
interface HypothTest {
    boolean twoSideTest(double statistic, int n, double a);
}

