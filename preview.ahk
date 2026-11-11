#Requires AutoHotkey v2.0
#SingleInstance Force

; Print sample insults. With --check, audit the generator and write _preview.txt.
; Double-click to see 20 samples. The hotstring itself lives in Insultifier.ahk.

#Include lib\lexicon.ahk
#Include lib\generate.ahk

check := (A_Args.Length && A_Args[1] = "--check")
samples := check ? 2000 : 20
fails := []
counts := Map(2, 0, 3, 0, 4, 0)
lines := ""

forms := Map()
for word in InsultLexicon.Bucket("noun") {
    forms[word] := true
    forms[Insultifier.Plural(word)] := true
}

loop samples {
    phrase := Insultifier.Generate()
    parts := StrSplit(phrase, " ", " `t")
    n := parts.Length
    if (n >= 2 && n <= 4)
        counts[n] += 1
    else
        fails.Push("bad length: " phrase)

    if RegExMatch(phrase, "i)^[aeiou]")
        fails.Push("needs an: " phrase)
    if InStr(phrase, "  ")
        fails.Push("double space: " phrase)

    seen := Map()
    hasNoun := false
    for word in parts {
        if (word = "" )
            fails.Push("empty token: " phrase)
        if (word = "of")
            continue
        if seen.Has(word)
            fails.Push("repeat: " phrase)
        seen[word] := true
        if forms.Has(word)
            hasNoun := true
    }
    if !hasNoun
        fails.Push("no noun: " phrase)

    if (A_Index <= 40)
        lines .= phrase "`n"
}

for name in ["adj", "adv", "verb", "head", "container"] {
    seen := Map()
    for word in InsultLexicon.Bucket(name)
        NoteToken(name, word, seen, fails)
}
for name in ["prefix", "root", "suffix", "extra"] {
    list := []
    switch name {
        case "prefix": list := InsultLexicon.Prefixes
        case "root": list := InsultLexicon.Roots
        case "suffix": list := InsultLexicon.Suffixes
        case "extra": list := InsultLexicon.ExtraNouns
    }
    seen := Map()
    for word in list
        NoteToken(name, word, seen, fails)
}

if !forms.Has("twat")
    fails.Push("missing noun twat")
if !forms.Has("twats")
    fails.Push("missing plural twats")
headOk := false
for word in InsultLexicon.Heads {
    if (word = "sandwich")
        headOk := true
}
if !headOk
    fails.Push("missing head sandwich")

nouns := InsultLexicon.Bucket("noun").Length
if (nouns < 1500)
    fails.Push("noun list is short: " nouns)

if (check) {
    if (counts[2] < 800)
        fails.Push("too few 2-word phrases: " counts[2])
    if (counts[3] < 400)
        fails.Push("too few 3-word phrases: " counts[3])
    if (counts[4] < 40)
        fails.Push("too few 4-word phrases: " counts[4])
}

report := lines
report .= "`n2-word: " counts[2] "`n3-word: " counts[3] "`n4-word: " counts[4] "`n"
report .= "adjectives: " InsultLexicon.Adjectives.Length "`n"
report .= "adverbs: " InsultLexicon.Adverbs.Length "`n"
report .= "verbs: " InsultLexicon.Verbs.Length "`n"
report .= "heads: " InsultLexicon.Heads.Length "`n"
report .= "containers: " InsultLexicon.Containers.Length "`n"
report .= "roots: " InsultLexicon.Roots.Length "`n"
report .= "suffixes: " InsultLexicon.Suffixes.Length "`n"
report .= "prefixes: " InsultLexicon.Prefixes.Length "`n"
report .= "nouns: " nouns "`n"
report .= "fails: " fails.Length "`n"
for item in fails {
    report .= item "`n"
    if (A_Index >= 30)
        break
}

if (check) {
    path := A_ScriptDir "\_preview.txt"
    if FileExist(path)
        FileDelete(path)
    FileAppend(report, path, "UTF-8")
    ExitApp(fails.Length ? 1 : 0)
}

MsgBox(report, "Insultifier preview")

NoteToken(name, word, seen, fails) {
    if (word = "" || InStr(word, " ") || InStr(word, '"') || InStr(word, "``"))
        fails.Push("bad token in " name ": [" word "]")
    if seen.Has(word)
        fails.Push("dupe in " name ": " word)
    seen[word] := true
}
