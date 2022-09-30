# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "MCNP grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-mcnp")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.mcnp")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.mcnp"
