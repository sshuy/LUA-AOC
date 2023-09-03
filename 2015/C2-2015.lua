-- Day 2: I Was Told There Would Be No Math
-- https://adventofcode.com/2015/day/2
-- Each present is a https://en.wikipedia.org/wiki/Cuboid#Rectangular_cuboid

--[[
For example:

A present with dimensions 2x3x4 requires 2*6 + 2*12 + 2*8 = 52 
square feet of wrapping paper plus 6 square feet of slack, for a total of 58 square feet.

A present with dimensions 1x1x10 requires 2*1 + 2*10 + 2*10 = 42 
square feet of wrapping paper plus 1 square foot of slack, for a total of 43 square feet.
]]--

-- Surface Area: 2*l*w + 2*w*h + 2*h*l

local length = 1
local width = 1
local height = 10

local x = 2 * length * width
local y = 2 * width * height
local z = 2 * height * length

local surface_area = x + y + z

if x < y and x < z then
    surface_area = surface_area + x / 2
elseif y < x and y < z then
    surface_area = surface_area + y / 2
else
    surface_area = surface_area + z / 2
end

print(surface_area)