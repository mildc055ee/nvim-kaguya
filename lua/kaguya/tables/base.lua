---@class ConversionRule
---@field input string
---@field output string
---@field next string

---@class KanaTable
---@field rules ConversionRule[]
local KanaTable = {
    rules = {},
}

---Create new table with given rules.
---@param rules ConversionRule[] Rules of this table.
---@return table|KanaTable
function KanaTable.new(rules)
    --TODO: validate rules arguemt
    local self = setmetatable({}, { __index = KanaTable })
    self.rules = rules or {}

    return self
end

---Convert tuple based rules to table baed ConversionRule list
---@param ruleList RawKanaRule[]
---@return ConversionRule[]
function KanaTable.toRuleList(ruleList)
    -- TODO: validate ruleList
    local result = vim.tbl_map(
        ---@param rule RawKanaRule
        ---@return ConversionRule
        function(rule)
            local input, output, next = rule[1], rule[2], rule[3]
            next = next or ""
            return KanaTable.toRule(input, output, next)
        end,
        ruleList
    )

    return result
end

---Convert given args to ConversionRule table
---@param input string
---@param output string
---@param next string
---@return ConversionRule
function KanaTable.toRule(input, output, next)
    vim.validate("input", input, "string")
    vim.validate("output", output, "string")
    vim.validate("next", next, "string")

    return {
        input = input,
        output = output,
        next = next,
    }
end

---Filter rules by given input string.
---@param input string Input string
---@return ConversionRule[] candidates Filtered items.
function KanaTable:filter(input)
    return vim.tbl_filter(
        ---@param rule ConversionRule
        ---@return boolean
        function(rule)
            return vim.startswith(rule.input, input)
        end,
        self.rules
    )
end

return KanaTable
