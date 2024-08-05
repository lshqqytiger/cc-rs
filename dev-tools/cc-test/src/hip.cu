#define __location__(a) \
        __declspec(__##a##__)
#define __global__ __location__(global)

__global__ void kernel() {}

extern "C" void hip_kernel() { kernel<<<1, 1>>>(); }
