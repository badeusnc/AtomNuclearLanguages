# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "Serpent grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-serpent")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.serpent")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.serpent"
