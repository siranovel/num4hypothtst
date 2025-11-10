package hypothtst;

// グラブス・スミルノフの外れ値の検定
public class GrubbsTest implements HypothTest2 {
    private static HypothTest2 hypothTest2 = new GrubbsTest();
    public static HypothTest2 getInstance() {
        return hypothTest2;
    }
}

