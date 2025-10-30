#!/bin/bash
iverilog -o sim_out *.v
vvp sim_out > result.txt

if grep -q "TEST PASSED" result.txt; then
    echo "✅ All tests passed!"
    exit 0
else
    echo "❌ Test failed!"
    cat result.txt
    exit 1
fi
