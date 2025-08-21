package tree_sitter_ceex_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_ceex "github.com/combo-team/tree-sitter-ceex/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_ceex.Language())
	if language == nil {
		t.Errorf("Error loading Ceex grammar")
	}
}
