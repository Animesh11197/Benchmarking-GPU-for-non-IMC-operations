
#include <stdio.h>
#include <sys/time.h>

const int threads_per_block = 32;


// Returns the current time in microseconds
long long start_timer() {
	struct timeval tv;
	gettimeofday(&tv, NULL);
	return tv.tv_sec * 1000000 + tv.tv_usec;
}


// Prints the time elapsed since the specified time
long long stop_timer(long long start_time, char *name) {
	struct timeval tv;
	gettimeofday(&tv, NULL);
	long long end_time = tv.tv_sec * 1000000 + tv.tv_usec;
	printf("%s: %.5f sec\n", name, ((float) (end_time - start_time)) / (1000 * 1000));
	return end_time - start_time;
}


// Prints the specified message and quits
void die(char *message) {
	printf("%s\n", message);
	exit(1);
}

int main(int argc, char **argv) {

int N = 1000000000;


char A;
long long vector_start_time = start_timer();
for (int i = 0; i < N; i++) 
{
		A=0;
	}
stop_timer(vector_start_time, "Store Time: ");




char *A_GPU;
	if (cudaMalloc((void **) &A_GPU, vector_size) != cudaSuccess) die("Error allocating GPU memory");
return 0;
}