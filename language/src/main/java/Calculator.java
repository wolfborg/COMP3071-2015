
public class Calculator extends ExprBaseVisitor<Double> {
	@Override
	public Double visitProg(ExprParser.ProgContext ctx) {
		return this.visit(ctx.getChild(0));
	}
	@Override
	public Double visitExpr(ExprParser.ExprContext ctx) {
		return visitChildren(ctx);
	}

}
