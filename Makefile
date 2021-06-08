# Compiler flags
NO_SIMPLIFY = -Xswiftc -D -Xswiftc NO_SIMPLIFY
NO_PRINT = -Xswiftc -D -Xswiftc NO_PRINT # Added this flag so we can disable printing, even in debug mode
NO_PARALLEL = -Xswiftc -D -Xswiftc NO_PARALLEL
DBEUG = -Xswiftc -D -Xswiftc DEBUG
FAST_MATH = -Xcc -ffast-math
UNCHECKED = -Xswiftc -Ounchecked
WHOLE_MODULE = -Xswiftc -whole-module-optimization
COMPILER_OPT = -Xcc -Ofast
NO_NUMERIC_OBJECTIVE = -Xswiftc -D -Xswiftc NO_NUMERIC_OBJECTIVE
RELEASE = #-c release # Release build is broken on linux (compiler bug), so disabled for now

build:
	swift build $(RELEASE) $(UNCHECKED) $(FAST_MATH) $(COMPILER_OPT) $(EXTRAS) $(NO_PRINT)

build-debug:
	swift build $(DEBUG) $(EXTRAS)

clean:
	rm -rf .build/
	rm Package.resolved