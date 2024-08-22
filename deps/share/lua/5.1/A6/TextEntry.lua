-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: A6

local flatbuffers = require('flatbuffers')

local TextEntry = {} -- the module
local TextEntry_mt = {} -- the class metatable

function TextEntry.New()
    local o = {}
    setmetatable(o, {__index = TextEntry_mt})
    return o
end
function TextEntry.GetRootAsTextEntry(buf, offset)
    if type(buf) == "string" then
        buf = flatbuffers.binaryArray.New(buf)
    end
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = TextEntry.New()
    o:Init(buf, n + offset)
    return o
end
function TextEntry_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function TextEntry_mt:Name()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:String(o + self.view.pos)
    end
end
function TextEntry_mt:Value()
    local o = self.view:Offset(6)
    if o ~= 0 then
        return self.view:String(o + self.view.pos)
    end
end
function TextEntry.Start(builder) builder:StartObject(2) end
function TextEntry.AddName(builder, name) builder:PrependUOffsetTRelativeSlot(0, name, 0) end
function TextEntry.AddValue(builder, value) builder:PrependUOffsetTRelativeSlot(1, value, 0) end
function TextEntry.End(builder) return builder:EndObject() end

return TextEntry -- return the module