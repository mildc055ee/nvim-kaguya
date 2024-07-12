local Input = require("kaguya.input")
local State = require("kaguya.state")

---@type State
local state

local function test_conversion(input, expected)
    for char in vim.gsplit(input, "") do
        Input.kanaInput(state, char)
    end
    assert.are.equals(expected, state.fixed)
end

describe("", function()
    before_each(function()
        state = State.new()
    end)

    it("converts rom to single hiragana char (vowel only)", function()
        test_conversion("a", "あ")
    end)

    it("converts rom to single hiragana char (with consonant)", function()
        test_conversion("ka", "か")
    end)

    it("converts rom to hiragana char (with palatalized sound)", function()
        test_conversion("kya", "きゃ")
    end)

    it("converts roms to multiple hiragana char (vowel only)", function()
        test_conversion("aiueo", "あいうえお")
    end)

    it("converts roms to multiple hiragana char (with consonant)", function()
        test_conversion("akaihana", "あかいはな")
    end)

    it("converts roms to multiple hiragana char (with palatalized sound)", function()
        test_conversion("kyabetu", "きゃべつ")
    end)

    it("converts roms to double consonant char and feeds leading rom char", function()
        -- Current test compares only fixed chars.
        test_conversion("kk", "っ")
    end)

    it("converts roms to multiple hiragana char (with double consonant char)", function()
        test_conversion("kakko", "かっこ")
    end)

    it("ignores misfeeded roms", function()
        test_conversion("rka", "か")
    end)
end)
