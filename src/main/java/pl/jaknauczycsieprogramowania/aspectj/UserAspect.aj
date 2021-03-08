package pl.jaknauczycsieprogramowania.aspectj;

public aspect UserAspect {
    pointcut isUserActive() : execution(* isUserActive*(..) ) && this(User);

    pointcut getPointcut() : execution(* get*(..)) && this(User);

    before() : isUserActive() {
        System.out.println("This is isUserActive aspect.");
    }

    before() : getPointcut() {
        System.out.println("This is getPointcut aspect.");
    }
}