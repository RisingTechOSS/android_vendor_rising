package generator

import (
	"fmt"

	"android/soong/android"
)

func risingExpandVariables(ctx android.ModuleContext, in string) string {
	risingVars := ctx.Config().VendorConfig("risingVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if risingVars.IsSet(name) {
			return risingVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
