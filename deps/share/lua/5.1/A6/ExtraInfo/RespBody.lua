-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: ExtraInfo

local flatbuffers = require('flatbuffers')

local RespBody = {} -- the module
local RespBody_mt = {} -- the class metatable

function RespBody.New()
    local o = {}
    setmetatable(o, {__index = RespBody_mt})
    return o
end
function RespBody.GetRootAsRespBody(buf, offset)
    if type(buf) == "string" then
        buf = flatbuffers.binaryArray.New(buf)
    end
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = RespBody.New()
    o:Init(buf, n + offset)
    return o
end
function RespBody_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function RespBody.Start(builder) builder:StartObject(0) end
function RespBody.End(builder) return builder:EndObject() end

return RespBody -- return the module