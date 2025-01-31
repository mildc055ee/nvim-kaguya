---@class RawKanaRule
---@field [1] string Input roman char
---@field [2] string Output hira char
---@field [3] string Leading char for next input

---@type RawKanaRule[]
local kanaRules = {
    { "a", "あ", "" },
    { "i", "い", "" },
    { "u", "う", "" },
    { "e", "え", "" },
    { "o", "お", "" },
    --
    { "ka", "か", "" },
    { "ki", "き", "" },
    { "ku", "く", "" },
    { "ke", "け", "" },
    { "ko", "こ", "" },
    --
    { "sa", "さ", "" },
    { "si", "し", "" },
    { "su", "す", "" },
    { "se", "せ", "" },
    { "so", "そ", "" },
    --
    { "ta", "た", "" },
    { "ti", "ち", "" },
    { "tu", "つ", "" },
    { "te", "て", "" },
    { "to", "と", "" },
    --
    { "na", "な", "" },
    { "ni", "に", "" },
    { "nu", "ぬ", "" },
    { "ne", "ね", "" },
    { "no", "の", "" },
    --
    { "ha", "は", "" },
    { "hi", "ひ", "" },
    { "hu", "ふ", "" },
    { "he", "へ", "" },
    { "ho", "ほ", "" },
    --
    { "ma", "ま", "" },
    { "mi", "み", "" },
    { "mu", "む", "" },
    { "me", "め", "" },
    { "mo", "も", "" },
    --
    { "ya", "や", "" },
    -- {"yi", "い", "",},
    { "yu", "ゆ", "" },
    -- {"ye", "いぇ", "",},
    { "yo", "よ", "" },
    --
    { "ra", "ら", "" },
    { "ri", "り", "" },
    { "ru", "る", "" },
    { "re", "れ", "" },
    { "ro", "ろ", "" },
    --
    { "wa", "わ", "" },
    -- {"wi", "うぃ", "",},
    { "wu", "う", "" },
    -- {"we", "うぇ", "",},
    { "wo", "を", "" },
    --
    { "n", "ん", "" },
    { "nn", "ん", "" },
    --
    -- voicedSoundKanaRules
    { "ga", "が", "" },
    { "gi", "ぎ", "" },
    { "gu", "ぐ", "" },
    { "ge", "げ", "" },
    { "go", "ご", "" },
    --
    { "za", "ざ", "" },
    { "zi", "じ", "" },
    { "zu", "ず", "" },
    { "ze", "ぜ", "" },
    { "zo", "ぞ", "" },
    --
    { "da", "だ", "" },
    { "di", "ぢ", "" },
    { "du", "づ", "" },
    { "de", "で", "" },
    { "do", "ど", "" },
    --
    { "ba", "ば", "" },
    { "bi", "び", "" },
    { "bu", "ぶ", "" },
    { "be", "べ", "" },
    { "bo", "ぼ", "" },
    --
    -- pSoundKanaRules
    { "pa", "ぱ", "" },
    { "pi", "ぴ", "" },
    { "pu", "ぷ", "" },
    { "pe", "ぺ", "" },
    { "po", "ぽ", "" },
    --
    -- palatalizedSoundKanaRules
    { "va", "ゔぁ", "" },
    { "vi", "ゔぃ", "" },
    { "vu", "ゔ", "" },
    { "ve", "ゔぇ", "" },
    { "vo", "ゔぉ", "" },
    --
    { "vya", "ゔゃ", "" },
    { "vyi", "ゔぃ", "" },
    { "vyu", "ゔゅ", "" },
    { "vye", "ゔぇ", "" },
    { "vyo", "ゔょ", "" },
    --
    { "kya", "きゃ", "" },
    { "kyi", "きぃ", "" },
    { "kyu", "きゅ", "" },
    { "kye", "きぇ", "" },
    { "kyo", "きょ", "" },
    --
    { "gya", "ぎゃ", "" },
    { "gyi", "ぎぃ", "" },
    { "gyu", "ぎゅ", "" },
    { "gye", "ぎぇ", "" },
    { "gyo", "ぎょ", "" },
    --
    { "sha", "しゃ", "" },
    { "shi", "し", "" },
    { "shu", "しゅ", "" },
    { "she", "しぇ", "" },
    { "sho", "しょ", "" },
    --
    { "sya", "しゃ", "" },
    { "syi", "し", "" },
    { "syu", "しゅ", "" },
    { "sye", "しぇ", "" },
    { "syo", "しょ", "" },
    --
    { "ja", "じゃ", "" },
    { "ji", "じ", "" },
    { "ju", "じゅ", "" },
    { "je", "じぇ", "" },
    { "jo", "じょ", "" },
    --
    { "jya", "じゃ", "" },
    { "jyi", "じ", "" },
    { "jyu", "じゅ", "" },
    { "jye", "じぇ", "" },
    { "jyo", "じょ", "" },
    --
    { "zya", "じゃ", "" },
    { "zyi", "じ", "" },
    { "zyu", "じゅ", "" },
    { "zye", "じぇ", "" },
    { "zyo", "じょ", "" },
    --
    { "cha", "ちゃ", "" },
    { "chi", "ち", "" },
    { "chu", "ちゅ", "" },
    { "che", "ちぇ", "" },
    { "cho", "ちょ", "" },
    --
    { "tya", "ちゃ", "" },
    { "tyi", "ちぃ", "" },
    { "tyu", "ちゅ", "" },
    { "tye", "ちぇ", "" },
    { "tyo", "ちょ", "" },
    --
    { "dya", "ぢゃ", "" },
    { "dyi", "ぢぃ", "" },
    { "dyu", "ぢゅ", "" },
    { "dye", "ぢぇ", "" },
    { "dyo", "ぢょ", "" },
    --
    { "nya", "にゃ", "" },
    { "nyi", "にぃ", "" },
    { "nyu", "にゅ", "" },
    { "nye", "にぇ", "" },
    { "nyo", "にょ", "" },
    --
    { "hya", "ひゃ", "" },
    { "hyi", "ひぃ", "" },
    { "hyu", "ひゅ", "" },
    { "hye", "ひぇ", "" },
    { "hyo", "ひょ", "" },
    --
    { "bya", "びゃ", "" },
    { "byi", "び", "" },
    { "byu", "びゅ", "" },
    { "bye", "びぇ", "" },
    { "byo", "びょ", "" },
    --
    { "pya", "ぴゃ", "" },
    { "pyi", "ぴぃ", "" },
    { "pyu", "ぴゅ", "" },
    { "pye", "ぴぇ", "" },
    { "pyo", "ぴょ", "" },
    --
    { "fa", "ふぁ", "" },
    { "fi", "ふぃ", "" },
    { "fu", "ふ", "" },
    { "fe", "ふぇ", "" },
    { "fo", "ふぉ", "" },
    --
    { "mya", "みゃ", "" },
    { "myi", "みぃ", "" },
    { "myu", "みゅ", "" },
    { "mye", "みぇ", "" },
    { "myo", "みょ", "" },
    --
    { "rya", "りゃ", "" },
    { "ryi", "りぃ", "" },
    { "ryu", "りゅ", "" },
    { "rye", "りぇ", "" },
    { "ryo", "りょ", "" },
    --
    -- doubleConsonantKanaRules
    { "kk", "っ", "k" },
    { "ss", "っ", "s" },
    { "tt", "っ", "t" },
    { "hh", "っ", "h" },
    { "mm", "っ", "m" },
    { "yy", "っ", "y" },
    { "rr", "っ", "r" },
    { "ww", "っ", "w" },
    { "gg", "っ", "g" },
    { "jj", "っ", "j" },
    { "zz", "っ", "z" },
    { "bb", "っ", "b" },
    { "pp", "っ", "p" },
    { "ff", "っ", "f" },
    { "vv", "っ", "v" },
    { "xtu", "っ", "" },
    --
    -- smallKanaRules
    { "xa", "ぁ", "" },
    { "xi", "ぃ", "" },
    { "xu", "ぅ", "" },
    { "xe", "ぇ", "" },
    { "xo", "ぉ", "" },
    -- {"la", "ぁ", "", },
    -- {"li", "ぃ", "", },
    -- {"lu", "ぅ", "", },
    -- {"le", "ぇ", "", },
    -- {"lo", "ぉ", "", },
    { "xya", "ゃ", "" },
    { "xyu", "ゅ", "" },
    { "xyo", "ょ", "" },
}

return kanaRules
