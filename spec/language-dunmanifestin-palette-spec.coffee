# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "DunmanifestinPalette grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-dunmanifestin-palette")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.dunmanifestin-palette")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.dunmanifestin-palette"
