local Input = {}

---@param state State
---@param char string
function Input.kanaInput(state, char)
    local input = state.feed .. char
    local candidates = state.kanaTable:filter(input)
    if #candidates == 1 and candidates[1].input == input then
        local candidate = candidates[1]
        state.fixed = state.fixed .. candidate.output
        state.feed = candidate.next
        state:updateTmpResult()
    elseif #candidates > 0 then
        state.feed = input
        state:updateTmpResult(candidates)
    else
        state.feed = ""
        Input.kanaInput(state, char)
    end
end

return Input
