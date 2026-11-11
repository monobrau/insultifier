; =============================================================================
; Insultifier phrase builder
; =============================================================================
; Every result is a 2-, 3-, or 4-word insult and starts with a consonant,
; so "a :mary" stays grammatical.
;
; Weights (out of 100):
;   58  two words
;   34  three words
;    8  four words
; =============================================================================

class Insultifier {
    static Generate() {
        loop 12 {
            phrase := this.Compose()
            if this.Accept(phrase)
                return phrase
        }
        return "twat sandwich"
    }

    static Compose() {
        roll := Random(1, 100)
        used := Map()

        if (roll <= 22)
            return this.First("adj", used) " " this.Next("noun", used)
        if (roll <= 44)
            return this.First("noun", used) " " this.Next("head", used)
        if (roll <= 58)
            return this.First("verb", used) " " this.Next("noun", used)
        if (roll <= 74)
            return this.First("adj", used) " " this.Next("noun", used) " " this.Next("head", used)
        if (roll <= 84)
            return this.First("adv", used) " " this.Next("adj", used) " " this.Next("noun", used)
        if (roll <= 92)
            return this.First("container", used) " of " this.Plural(this.Next("noun", used))
        if (roll <= 97)
            return this.First("adj", used) " " this.Next("verb", used) " " this.Next("noun", used) " " this.Next("head", used)
        return this.First("adj", used) " " this.Next("container", used) " of " this.Plural(this.Next("noun", used))
    }

    static First(kind, used) {
        list := InsultLexicon.Bucket(kind)
        loop 40 {
            word := list[Random(1, list.Length)]
            if used.Has(word)
                continue
            if RegExMatch(word, "i)^[aeiou]")
                continue
            used[word] := true
            return word
        }
        used["twat"] := true
        return "twat"
    }

    static Next(kind, used) {
        list := InsultLexicon.Bucket(kind)
        loop 40 {
            word := list[Random(1, list.Length)]
            if used.Has(word)
                continue
            used[word] := true
            return word
        }
        word := list[Random(1, list.Length)]
        used[word] := true
        return word
    }

    static Plural(word) {
        irregular := InsultLexicon.IrregularPlurals
        if irregular.Has(word)
            return irregular[word]
        if RegExMatch(word, "i)(s|x|z|ch|sh)$")
            return word "es"
        if RegExMatch(word, "i)[^aeiou]y$")
            return RegExReplace(word, "i)y$", "ies")
        return word "s"
    }

    static Accept(phrase) {
        if RegExMatch(phrase, "i)^[aeiou]")
            return false
        if InStr(phrase, "  ")
            return false
        parts := StrSplit(phrase, " ", " `t")
        if (parts.Length < 2 || parts.Length > 4)
            return false
        seen := Map()
        for word in parts {
            if (word = "" || word = "of")
                continue
            if seen.Has(word)
                return false
            seen[word] := true
        }
        return true
    }
}
