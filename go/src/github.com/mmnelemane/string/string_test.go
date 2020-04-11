package string
import "testing"

func Test(t *testing.T) {
	var tests = []struct {
		s, want string
	}{
		{"Backward", "drawkcaB"},
		{"Hello, #@0!_", "_!0@# ,olleH"},
		{"", ""},
	}
	for _, c := range tests {
		got := ReverseString(c.s)
		if got != c.want {
			t.Errorf("Reverse(%q) == %q, want %q", c.s, got, c.want)
		}
	}
}
