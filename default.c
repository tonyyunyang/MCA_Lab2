
// Declarations for the benchmark main() functions.
#include "benchmarks.h"

// If you want, you can use the struct defined in this file for inter-core
// communication through memory. You should not need this unless you are doing
// really fancy things though.
#include "intercore.h"

// Debug output functions (puts, etc.; NO printf).
#include <record.h>

// Core control register definitions.
#include <rvex.h>

// This variable is used by the debug message recorder. It must be initialized
// to 0x3F000000 + global_context_index * 0x100000.
volatile char *record_ptr = (volatile char *)0x3F000000;

int main(void) {
    
    // Log the performance counters for debugging purposes. This times the C
    // runtime initialization code. Note that the logging takes time as well;
    // you might want to remove them for your final measurements. The server
    // and simulation will always give you a total cycle count.
    log_perfcount("init");
    
    // Run the convolution_5x5 benchmark and log performance.
    convolution_5x5_main();
    log_perfcount("convolution_5x5");
    
    // Run the ucbqsort benchmark and log performance.
    ucbqsort_main();
    log_perfcount("ucbqsort");
    
    // Run the g3fax benchmark and log performance.
    g3fax_main();
    log_perfcount("g3fax");
    
    // Run the v42 benchmark and log performance.
    v42_main();
    log_perfcount("v42");
    
}
