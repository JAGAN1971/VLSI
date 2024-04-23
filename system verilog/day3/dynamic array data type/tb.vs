// Code your testbench here
// or browse Examples
module test_bench;

  // Declare dynamic arrays d1 and d of type int
  int d1[];
  int d[];

  initial begin
    // Initialize array elements of d with (9,1,8,3,4,4)
    d = '{9, 1, 8, 3, 4, 4};

    // Allocate six elements in array d1
    d1 = new[6];

    // Initialize array d1 with index as its value
    for (int i = 0; i < 6; i = i + 1) begin
      d1[i] = i;
    end

    // Display d1 and its size
    $display("Array d1:");
    for (int i = 0; i < d1.size(); i = i + 1) begin
      $display("%d", d1[i]);
    end
    $display("Size of d1: %d", d1.size());

    // Delete array d1
    d1.delete();

    // Reverse array d
    d.reverse();

    // Display reversed array d
    $display("Reversed array d:");
    for (int i = 0; i < d.size(); i = i + 1) begin
      $display("%d", d[i]);
    end

    // Sort array d
    d.sort();

    // Display sorted array d
    $display("Sorted array d:");
    for (int i = 0; i < d.size(); i = i + 1) begin
      $display("%d", d[i]);
    end

    // Reverse sort array d
    d.reverse();
    d.sort();

    // Display reverse sorted array d
    $display("Reverse Sorted array d:");
    for (int i = 0; i < d.size(); i = i + 1) begin
      $display("%d", d[i]);
    end

    // Shuffle array d
    d.shuffle();

    // Display shuffled array d
    $display("Shuffled array d:");
    for (int i = 0; i < d.size(); i = i + 1) begin
      $display("%d", d[i]);
    end
  end

endmodule
