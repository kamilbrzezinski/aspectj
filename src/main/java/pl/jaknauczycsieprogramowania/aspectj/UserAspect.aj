package pl.jaknauczycsieprogramowania.aspectj;

public aspect UserAspect {
    pointcut test() : execution(* test*(..) ) && this(User);

    pointcut getPointcut() : execution(* get*(..)) && this(User);

    before() : test() {
        System.out.println("aspect");
    }

    before() : getPointcut() {
        System.out.println("aspect get1");
    }
}