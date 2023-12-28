package hypothtst;

// 仮設検定
interface HypothTest2 {
    boolean twoSideTest(double statistic, int n, double a);
    boolean oneSideTest(double statistic, int n, double a);
}

