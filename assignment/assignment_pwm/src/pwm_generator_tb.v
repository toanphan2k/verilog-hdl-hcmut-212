module PWM_Generator_tb;
// Inputs
    reg clk;
    reg increase_duty;
    reg decrease_duty;
    // Outputs
    wire PWM_OUT;
// Instantiate the PWM Generator with variable duty cycle in Verilog
    PWM_Generator PWM_Generator_Unit(
        .clk(clk), 
        .increase_duty(increase_duty), 
        .decrease_duty(decrease_duty), 
        .PWM_OUT(PWM_OUT)
        );
// Create 100Mhz clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end 
    initial begin
        increase_duty = 0;
        decrease_duty = 0;
        #50; 
        increase_duty = 1; 
        #50;// increase duty cycle by 10%
        increase_duty = 0;
        #50; 
        increase_duty = 1;
        #50;// increase duty cycle by 10%
        increase_duty = 0;
        #50; 
        increase_duty = 1;
        #50;// increase duty cycle by 10%
        increase_duty = 0;
        #50;
        decrease_duty = 1; 
        #50;//decrease duty cycle by 10%
        decrease_duty = 0;
        #50; 
        decrease_duty = 1;
        #50;//decrease duty cycle by 10%
        decrease_duty = 0;
        #50;
        decrease_duty = 1;
        #50;//decrease duty cycle by 10%
        decrease_duty = 0;
        #50; 
        increase_duty = 1;
        #50;// increase duty cycle by 10%
        increase_duty = 0;
        #50; 
        increase_duty = 1;
        #50;// increase duty cycle by 10%
        increase_duty = 0;
        #50; 
        increase_duty = 1;
        #50;// increase duty cycle by 10%
        increase_duty = 0;
        #50
        increase_duty = 1;
        #50;// increase duty cycle by 10%
        increase_duty = 0;
        #50; 
        increase_duty = 1;
        #50;// increase duty cycle by 10%
        increase_duty = 0;
        #200; 
        $stop;
    end
endmodule