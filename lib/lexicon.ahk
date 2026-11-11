; =============================================================================
; Insultifier lexicon
; =============================================================================
; Adult, vulgar, and deliberately ridiculous. Anatomical and scatological
; comedy in the "twat sandwich" register. This file does not include slurs
; for race, sexuality, disability, or gender identity, and nothing about minors.
;
; Names are built, not only listed:
;   root                     cock, twat, bellend (bellend is an extra)
;   prefix + root            thundercunt, megacock
;   root + suffix            cockwomble, twatwaffle, pissflap
;   root + head              twat sandwich, cock wagon
;
; Add a word to the matching list. Roots are also used on their own.
; =============================================================================

class InsultLexicon {
    static IrregularPlurals := Map(
        "labia", "labia",
        "smegma", "smegma"
    )

    static Prefixes := [
        "thunder", "mega", "super", "arch", "grand", "lord",
        "king", "prime", "ultra", "hyper", "turbo", "monster"
    ]

    static Roots := [
        "cock", "dick", "prick", "knob", "twat", "cunt", "arse", "ass",
        "shit", "piss", "cum", "spunk", "fart", "wank", "bollock", "ball",
        "scrotum", "taint", "gooch", "minge", "gash", "snatch", "sphincter",
        "anus", "smegma", "foreskin", "clit", "labia", "pube", "queef",
        "phallus", "scrote", "chode", "penis", "testicle", "douche"
    ]

    static Suffixes := [
        "womble", "weasel", "badger", "goblin", "gibbon", "waffle", "stain",
        "socket", "trumpet", "nozzle", "pirate", "wizard", "muffin", "biscuit",
        "jockey", "ferret", "puffin", "knocker", "dumpster", "guzzler",
        "mouth", "brain", "face", "nose", "breath", "spanner", "gnome",
        "troll", "ogre", "gargoyle", "gremlin", "head", "weed", "hat",
        "clown", "wipe", "bag", "end", "hole", "box", "munch", "licker",
        "smoker", "flap"
    ]

    ; Finished names that are not a root, a prefix+root, or a root+suffix.
    static ExtraNouns := [
        "wanker", "tosser", "plonker", "pillock", "bellend",
        "douchecanoe", "buttplug", "butthole", "bunghole", "cornhole",
        "skidmark", "dingleberry", "creampie", "cumdump",
        "wankstain", "shitstain", "asshat", "assclown", "asswipe",
        "douchebag", "douchenozzle", "nutbutter", "throatgoat",
        "rimjob", "blowjob", "handjob", "meatstick", "pisswizard",
        "fartgoblin", "cockwomble", "spunktrumpet", "shitgibbon",
        "thundercunt", "twatwaffle", "arsebadger", "cumdumpster",
        "knobhead", "dickhead", "dickweed", "ballbag", "fartbox",
        "arsehole", "asshole", "dicknose", "cocknose", "twatface"
    ]

    ; The second word of "twat sandwich". Silly on purpose. Not also used as suffixes.
    static Heads := [
        "sandwich", "wagon", "bucket", "casserole", "balloon", "stump",
        "teapot", "hamper", "suitcase", "chandelier", "tractor", "banjo",
        "accordion", "kazoo", "tuba", "lantern", "spittoon", "anvil",
        "scarecrow", "mannequin", "wheelbarrow", "lasagna", "dumpling",
        "crumpet", "scone", "pudding", "fondue", "baguette", "turnip",
        "omelette", "raclette", "butterchurn", "horseshoe", "chamberpot",
        "concierge", "librarian", "barista", "plumber", "diplomat", "bishop",
        "mechanic", "accountant", "sommelier", "ambassador", "notary",
        "midwife", "blacksmith", "cobbler", "innkeeper", "magistrate",
        "cartographer", "farmer", "pinata", "gondola", "rowboat", "unicycle",
        "tricycle", "commode", "bidet", "urinal", "latrine", "outhouse",
        "honeywagon", "gravy-boat", "soup-tureen", "toast-rack", "doily",
        "cuckoo-clock", "barometer", "weathervane", "watering-can", "pulpit",
        "lectern", "chalice", "maypole", "bouncy-castle", "ferris-wheel",
        "carousel", "coconut", "pineapple", "durian", "herring", "kipper",
        "bloater", "eel", "lamprey", "leech", "maggot", "weevil", "locust",
        "divan", "ottoman", "hassock", "pew", "font", "portaloo",
        "wheelie-bin", "slop-pail", "butter-dish", "napkin", "antimacassar",
        "grandfather-clock", "canoe"
    ]

    ; "a sack of twats", "a plague of bellends"
    static Containers := [
        "sack", "bucket", "parade", "festival", "circus", "buffet", "museum",
        "convoy", "choir", "treasury", "landfill", "carnival", "symphony",
        "plague", "swarm", "cult", "bouquet", "troupe", "congregation",
        "caucus", "guild", "pantry", "larder", "cellar", "cistern", "trough",
        "kennel", "cesspit", "sewer", "gutter", "sump", "bilge", "dumpster",
        "wheelbarrow", "cauldron", "vat", "barrel", "crate", "hamper", "barge",
        "menagerie", "aviary", "apiary", "hatchery", "caravan", "flotilla",
        "armada", "orchestra", "embassy", "aquarium"
    ]

    static Adjectives := [
        "filthy", "greasy", "crusty", "rancid", "putrid", "fetid", "moist",
        "dripping", "weeping", "spurting", "throbbing", "limp", "flaccid",
        "sweaty", "clammy", "sticky", "slimy", "gooey", "frothy", "foamy",
        "curdled", "chunky", "lumpy", "clotted", "scabbed", "peeling", "raw",
        "rashy", "inflamed", "swollen", "engorged", "itchy", "burning",
        "stinging", "leaking", "seeping", "dribbling", "bubbling", "festering",
        "rotting", "spoiled", "rank", "gamey", "meaty", "cheesy", "moldy",
        "mildewed", "sour", "bitter", "soggy", "damp", "humid", "swampy",
        "boggy", "marshy", "briny", "salty", "funky", "musty", "stale",
        "leftover", "reheated", "microwaved", "sunbaked", "week-old",
        "month-old", "year-old", "prehistoric", "fossilized", "warty",
        "syphilitic", "gonorrheal", "herpetic", "pustulent", "pustular",
        "oozy", "purulent", "gangrenous", "necrotic", "septic", "feverish",
        "contagious", "venereal", "rectal", "urethral", "scrotal", "anal",
        "chlamydial", "bacterial", "fungal", "infected", "abscessed",
        "unflushed", "unwiped", "unrinsed", "unscented", "uncircumcised",
        "unwashed", "half-hard", "fully-wilted", "blue-balled", "cum-drunk",
        "piss-drunk", "fart-drunk", "wank-drunk", "cum-stained", "piss-soaked",
        "shit-smeared", "fart-flavored", "smegma-caked", "foreskin-scented",
        "ball-sweaty", "taint-sweaty", "gooch-damp", "arse-damp", "cock-eyed",
        "dick-brained", "twat-faced", "knob-nosed", "piss-breathed",
        "shit-breathed", "cum-breathed", "fart-breathed", "spunk-breathed",
        "wank-breathed", "sphincter-loose", "anus-gaping", "hole-wrecked",
        "rim-worn", "throat-used", "jaw-tired", "lip-smeared", "chin-dripping",
        "beard-crusted", "tongue-coated", "tooth-furred", "load-heavy",
        "nut-heavy", "ball-heavy", "sack-sweaty", "shaft-sore", "helmet-raw",
        "mushroom-damp", "pube-matted", "dingleberry-dotted", "skid-striped",
        "queef-scented", "creampie-filled", "freshly-fucked", "freshly-sucked",
        "freshly-rimmed", "freshly-milked", "freshly-queefed", "freshly-glazed",
        "freshly-frosted", "freshly-basted", "freshly-stuffed",
        "freshly-stretched", "freshly-gaped", "freshly-creampied",
        "half-flushed", "never-flushed", "worthless", "useless", "pathetic",
        "wretched", "miserable", "contemptible", "disgraceful", "embarrassing",
        "laughable", "pitiful", "feeble", "spineless", "gutless", "brainless",
        "senseless", "shameless", "classless", "charmless", "joyless",
        "hopeless", "feckless", "slack-jawed", "mouth-breathing",
        "knuckle-dragging", "bottom-shelf", "bargain-bin", "clearance-rack",
        "off-brand", "store-brand", "gas-station", "truck-stop",
        "dumpster-grade", "landfill-grade", "biohazard-grade",
        "professionally-awful", "industrially-filthy", "medically-concerning",
        "forensically-damp", "spiritually-damp", "municipally-condemned",
        "cartoonishly-horny", "theatrically-moist", "ceremonially-unwashed",
        "sacramentally-rank", "chronically-stiff", "prematurely-spent",
        "back-alley", "parking-lot", "festival-toilet", "portaloo-grade",
        "greyhound-grade", "bargain-basement", "flea-market", "rest-stop",
        "sewer-grade", "bilge-grade", "sump-grade", "cesspit-grade",
        "latrine-grade", "outhouse-grade", "honeywagon-grade",
        "two-pump", "no-pump", "one-pump", "discount", "generic", "counterfeit",
        "bootleg", "knockoff", "refurbished", "recalled", "condemned",
        "quarantined", "biohazardous", "radioactive", "corrosive", "caustic",
        "volatile", "leaky", "sputtering", "wheezing", "gurgling", "squishing",
        "squelching", "smacking", "drippy", "runny", "watery", "gristly",
        "stringy", "sinewy", "veiny", "pimpled", "pustuled", "blistered",
        "chapped", "cracked", "split", "torn", "gaping", "prolapsed",
        "inverted", "inside-out", "half-shed", "shedding", "molting",
        "sweat-cured", "piss-cured", "smoke-cured", "salt-cured", "sun-cured",
        "overripe", "underdone", "overcooked", "raw-in-the-middle",
        "room-temperature", "body-temperature", "fever-warm", "clammy-cold",
        "grave-cold", "morgue-cold", "swamp-warm", "armpit-warm"
    ]

    static Adverbs := [
        "fecally", "pissily", "shittily", "fuckishly", "twattishly",
        "cuntishly", "cockishly", "knobishly", "dickishly", "smuttily",
        "lewdly", "pornographically", "sodomitically", "syphilitically",
        "gonorrheally", "herpetically", "pustulently", "smegmatically",
        "crustily", "rancidly", "putridly", "fetidly", "moistly", "drippily",
        "spurtingly", "throbbingly", "limpishly", "flaccidly", "prematurely",
        "scrotally", "urethrally", "rectally", "venereally", "bacterially",
        "fungally", "moldily", "cheesily", "curdly", "sloppily", "stickily",
        "slimily", "frothily", "vulgarly", "coarsely", "crudely", "nastily",
        "foully", "vilely", "rottenly", "rankly", "gamily", "sweatily",
        "stinkily", "reekingly", "wretchedly", "pathetically", "chronically",
        "spectacularly", "thunderously", "relentlessly", "cartoonishly",
        "profoundly", "forensically", "clinically", "ceremonially",
        "sacramentally", "municipally", "professionally", "legendarily",
        "theatrically", "religiously", "judicially", "balls-deep",
        "throat-deep", "knuckle-deep", "wrist-deep", "cheek-deep",
        "shaft-deep", "nut-deep", "piss-deep", "shit-deep", "cum-deep",
        "fart-first", "cock-first", "dick-first", "twat-first", "knob-first",
        "hole-first", "rim-first", "wank-first", "spunk-first", "smegma-first",
        "foreskin-first", "ball-first", "taint-first", "gooch-first",
        "minge-first", "gash-first", "cunt-first", "bollock-first",
        "scrotum-first", "queef-first", "chode-first", "pube-first",
        "clit-first", "labia-first", "snatch-first", "sphincter-first",
        "douche-first", "creampie-first", "dingleberry-first",
        "skidmark-first", "buttplug-first", "cornhole-first", "bunghole-first",
        "pissflap-first", "bellend-first", "helmet-first", "mushroom-first",
        "load-first", "nut-first", "sack-first", "shaft-first", "flap-first",
        "stain-first", "waffle-first", "nozzle-first", "trumpet-first"
    ]

    ; Participles. They sit in front of a noun: "cock-gobbling twat".
    static Verbs := [
        "cock-gobbling", "dick-gobbling", "knob-gobbling", "prick-gobbling",
        "twat-gobbling", "cunt-gobbling", "arse-gobbling", "ass-gobbling",
        "cock-smoking", "dick-smoking", "knob-smoking", "prick-smoking",
        "ball-licking", "ball-gargling", "ball-coddling", "ball-juggling",
        "nut-nuzzling", "sack-sniffing", "sack-scratching", "shaft-shining",
        "helmet-hoovering", "mushroom-munching", "pipe-polishing",
        "cum-guzzling", "cum-gargling", "cum-juggling", "cum-glazing",
        "cum-frosting", "cum-basting", "spunk-sipping", "spunk-smearing",
        "load-swallowing", "piss-sipping", "piss-chugging", "piss-wading",
        "fart-huffing", "fart-sniffing", "fart-canning", "fart-bottling",
        "fart-collecting", "shit-smearing", "shit-eating", "shit-juggling",
        "shit-stacking", "shit-polishing", "arse-licking", "arse-kissing",
        "arse-buffing", "ass-licking", "ass-kissing", "rim-jobbing",
        "rim-shining", "taint-tickling", "taint-tasting", "gooch-gnawing",
        "gooch-mining", "smegma-scraping", "smegma-spreading",
        "smegma-harvesting", "foreskin-chewing", "foreskin-folding",
        "foreskin-cataloguing", "sphincter-stretching", "sphincter-serenading",
        "anus-ogling", "hole-hogging", "hole-touring", "gape-measuring",
        "cheek-spreading", "crack-sniffing", "crack-mapping", "wank-wiping",
        "wank-archiving", "knob-polishing", "knob-buffing", "bellend-buffing",
        "bellend-kissing", "helmet-kissing", "throat-fucking", "face-fucking",
        "pubes-braiding", "pube-counting", "dingleberry-picking",
        "dingleberry-tasting", "skidmark-reading", "skidmark-framing",
        "queef-collecting", "queef-bottling", "creampie-scooping",
        "creampie-spreading", "minge-munching", "gash-gobbling",
        "twat-tonguing", "cunt-lapping", "clit-fumbling", "labia-leafing",
        "flap-peeling", "pissflap-peeling", "bollock-buttering",
        "scrotum-swinging", "scrotum-shampooing", "scrotum-folding",
        "taint-buttering", "gooch-buttering", "tit-wanking", "nipple-twisting",
        "chode-measuring", "chode-polishing", "phallus-photographing",
        "glans-glossing", "load-laundering", "cum-accounting", "spunk-auditing",
        "fart-accounting", "piss-auditing", "wank-accounting", "rim-accounting",
        "hole-auditing", "sphincter-auditing", "anus-auditing",
        "smegma-auditing", "foreskin-auditing", "cock-coddling",
        "dick-coddling", "knob-coddling", "twat-coddling", "cunt-coddling",
        "cock-slobbering", "dick-slobbering", "knob-slobbering",
        "bellend-slobbering", "cock-swallowing", "dick-swallowing",
        "knob-swallowing", "prick-swallowing", "armpit-huffing",
        "underball-huffing", "nutsack-sniffing", "meatus-inspecting",
        "foreskin-ironing", "smegma-aging", "fart-curing", "piss-curing",
        "cum-curing", "shaft-buttering", "helmet-buttering",
        "mushroom-buttering", "flap-buttering", "hole-buttering",
        "rim-buttering", "bellend-buttering", "knob-buttering",
        "cock-buttering", "dick-buttering", "twat-buttering", "cunt-buttering",
        "arse-buttering", "ball-buttering", "sack-buttering", "nut-buttering",
        "load-buttering", "spunk-buttering", "queef-buttering",
        "dingleberry-buttering", "skidmark-buttering", "pubes-buttering",
        "taint-basting", "gooch-basting", "rim-basting",
        "hole-basting", "flap-basting", "bellend-glazing", "helmet-glazing",
        "shaft-glazing", "knob-glazing", "cock-glazing", "dick-glazing"
    ]

    static NounCache := ""

    static Bucket(kind) {
        switch kind {
            case "adj": return this.Adjectives
            case "adv": return this.Adverbs
            case "verb": return this.Verbs
            case "noun":
                if !IsObject(this.NounCache)
                    this.NounCache := this.BuildNouns()
                return this.NounCache
            case "head": return this.Heads
            case "container": return this.Containers
            default: throw Error("Unknown lexicon bucket: " kind)
        }
    }

    static BuildNouns() {
        seen := Map()
        out := []
        this.AddUnique(seen, out, this.Roots)
        this.AddUnique(seen, out, this.ExtraNouns)
        for root in this.Roots {
            for suffix in this.Suffixes
                this.AddWord(seen, out, root . suffix)
            for prefix in this.Prefixes
                this.AddWord(seen, out, prefix . root)
        }
        return out
    }

    static AddUnique(seen, out, list) {
        for word in list
            this.AddWord(seen, out, word)
    }

    static AddWord(seen, out, word) {
        if (word = "" || seen.Has(word))
            return
        seen[word] := true
        out.Push(word)
    }
}
