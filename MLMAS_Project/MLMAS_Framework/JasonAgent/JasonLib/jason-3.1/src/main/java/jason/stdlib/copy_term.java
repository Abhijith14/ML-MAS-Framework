package jason.stdlib;

import jason.JasonException;
import jason.asSemantics.DefaultInternalAction;
import jason.asSemantics.TransitionSystem;
import jason.asSemantics.Unifier;
import jason.asSyntax.Literal;
import jason.asSyntax.Term;

/*@Manual(
literal=".copy_term(literal,Result)",
hint="clone an agent including with belief base and plans library",
argsHint= {
        "the literal to be copied",
        "the resulting unification of the copy"
},
argsType= {
        "literal",
        "term"
},
examples= {
        ""
}
)*/
@SuppressWarnings("serial")
public class copy_term extends DefaultInternalAction {

    @Override public int getMinArgs() {
        return 2;
    }
    @Override public int getMaxArgs() {
        return 2;
    }

    @Override protected void checkArguments(Term[] args) throws JasonException {
        super.checkArguments(args); // check number of arguments
        if (!args[0].isLiteral())
            throw JasonException.createWrongArgument(this,"first argument must be a literal");
    }

    @Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {
        return un.unifies(args[1], ((Literal)args[0]).makeVarsAnnon());
    }
}