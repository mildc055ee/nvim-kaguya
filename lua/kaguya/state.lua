local hiraganaRules = require("kaguya.tables.rom_to_kana")
local kanaTable = require("kaguya.tables.base")

---@class State
---@field fixed string
---@field feed string
---@field kanaTable KanaTable
---@field tmp? ConversionRule
local State = {}

function State.new()
    local self = setmetatable({}, { __index = State })
    self.kanaTable = kanaTable.new(kanaTable.toRuleList(hiraganaRules))
    self.feed = ""
    self.fixed = ""

    return self
end

---@param candidates? ConversionRule[]
function State:updateTmpResult(candidates)
    candidates = candidates or self.kanaTable:filter(self.feed)
    self.tmp = nil
    for _, candidate in ipairs(candidates) do
        if candidate.input == self.feed then
            self.tmp = candidate
            break
        end
    end
end

return State
