#include <stdio.h>


__global__ void hello()
{
	printf("Oi mundo! De: thread %d\n", threadIdx.x);
}

int main(void)
{
	int num_threads = 2;
	int num_blocks = 2;
	hello<<<num_blocks,num_threads>>>();
	cudaDeviceSynchronize();

	return 0;
}
