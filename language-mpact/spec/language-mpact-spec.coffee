# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "Mpact grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-mpact")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.mpact")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.mpact"
