package hypothtst;

public class DecorrTest implements HypothTest {
    private static HypothTest hypothTest = new DecorrTest();
    public static HypothTest getInstance() {
        return hypothTest;
    }
}
