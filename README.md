# safemath

Go library for basic arithmetics with protection against integer overflow.

## Example

```go
package main

import (
	"fmt"
	"github.com/jotaen/safemath/safemath"
)

func main() {
	// Ok:
	res, err := safemath.Add(1, 2)
	if err != nil {
		fmt.Println("Overflow!")
	} else {
		fmt.Println(res)
	}

	// Overflow (on 64-bit systems):
	res, err = safemath.Add(9223372036854775807, 1)
	if err != nil {
		fmt.Println("Overflow!")
	} else {
		fmt.Println(res)
	}
}
```
