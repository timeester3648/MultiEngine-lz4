#include <MultiEngine/core/memory/MemoryAllocation.h>

void* LZ4_malloc(size_t s) {
	return MultiEngine::memory_allocate(s);
}

void* LZ4_calloc(size_t n, size_t s) {
	return MultiEngine::memory_allocate_zero(n * s);
}

void  LZ4_free(void* p) {
	MultiEngine::memory_free(p);
}