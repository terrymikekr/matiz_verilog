`timescale 1ns/10ps
module tb_m();
reg d;
reg e;

wire f;

m2 dut2(
	.d(d),
	.e(e),
	.f(f)
);

initial begin
d = 1'b1; e = 1'b0; #10;
d = 1'b1; e = 1'b1; #10;
d = 1'b0; e = 1'b0; #10;
d = 1'b1; e = 1'b1; #10;
end 

initial begin

	$dumpvars(0);
	#100000ns
	$finish;

end

endmodule
