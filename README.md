# Insultifier

Adult-language AutoHotkey v2 hotstring. Typing `:mary` deletes that trigger and types a random vulgar insult in its place.

```
My god, Bill S is a :mary
My god, Bill S is a twat sandwich
```

The insult is two or three words, and now and then four. It always starts with a consonant, so it still reads correctly after "a".

This is crude on purpose: sexual and scatological comedy in the "twat sandwich" / "cockwomble" register. The lists are not a slur collection. They do not include slurs for race, sexuality, disability, or gender identity, and they do not include anything about minors.

## Run it

1. Install [AutoHotkey v2](https://www.autohotkey.com/v2/).
2. Run `Insultifier.ahk`.
3. Type `:mary` in any text field.

It fires the moment the `y` is typed, the same way the work_ahk hotstrings do. The script stays in the tray until you exit it. Run the file again to reload it.

`:mary` is the whole trigger, colon included. It will also fire at the start of a longer string such as `:maryland`.

`preview.ahk` shows 20 samples without installing the hotstring. `preview.ahk --check` audits a couple thousand phrases and writes `_preview.txt`.

## Use it from work_ahk later

Add this to the loader and do not also run `Insultifier.ahk` on its own, or the hotstring will fire twice:

```ahk
#Include C:\git\insultifier\Insultifier.ahk
```

## Adding words

The pools live in `lib/lexicon.ahk`.

| Pool | What it is | How many |
| --- | --- | --- |
| Adjectives | filthy, syphilitic, cum-stained | 285 |
| Adverbs | fecally, balls-deep, pornographically | 128 |
| Verbs | participles: cock-gobbling, fart-huffing | 177 |
| Heads | the "sandwich" in "twat sandwich" | 103 |
| Containers | sack, plague, cesspit ("a sack of twats") | 50 |
| Names | roots, prefixes, suffixes, and extras, combined | 2,072 |

Names are built so the list stays editable:

- a root on its own: `twat`
- prefix plus root: `thundercunt`
- root plus suffix: `cockwomble`, `pissflap`
- then the phrase builder adds adjectives, verbs, and a head: `rancid cockwomble teapot`

Add a quoted line to the matching list. A new root is multiplied by every prefix and suffix.

## License

MIT. See `LICENSE`.
