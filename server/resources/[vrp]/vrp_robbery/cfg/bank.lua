--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

cfg = {}

cfg.blips = false -- blips/markeringer på mappet.

cfg.seconds = 600 -- sekunder at røve i. (10 minutter)

cfg.cooldown = 3600 -- tid mellem røverierne i banken. (Én time)

cfg.cops = 4 -- minimum betjente på arbejde.
cfg.permission = "bank.police" -- tilladelse givet til politiet.

cfg.banks = { -- liste af bankene
	["Midtby Bank"] = {
		position = { ['x'] = 0.0697479248, ['y'] = 0.05859375, ['z'] = 0.368026733398 },
		reward = math.random(200000,400000),
		nameofbank = "Midtby Bank",
		lastrobbed = 0 -- den er altid på 0
	},
	["Nordea Bank"] = {
		position = { ['x'] = 0.6674804688, ['y'] = 0.45776367188, ['z'] = 0.697026252747 },
		reward = math.random(200000,400000),
		nameofbank = "Nordea Bank (Vestlig Motorvej)",
		lastrobbed = 0
	},
	["Jyske Bank"] = {
		position = { ['x'] = 0.06505584717, ['y'] = 0.8012695313, ['z'] = 0.62670135498 },
		reward = math.random(200000,400000),
		nameofbank = "Jyske Bank (Paleto Bay)",
		lastrobbed = 0
	},
	["Sydbank"] = {
		position = { ['x'] = 0.2568359375, ['y'] = 0.128295898438, ['z'] = 0.7907638549805 },
		reward = math.random(200000,400000),
		nameofbank = "Sydbank (Rockford Hills - Vestlig Los Santos)",
		lastrobbed = 0
	},
	["Alm. Brand Bank"] = {
		position = { ['x'] = 0.967376708984, ['y'] = 0.033660888672, ['z'] = 0.1745223999023 },
		reward = math.random(200000,400000),
		nameofbank = "Alm. Brand Bank (Alta - Nord for LS Midtby)",
		lastrobbed = 0
	},
	["Danmarks Nationalbank"] = {
		mincops = 5,
		position = { ['x'] = 0.001098632813, ['y'] = 0.855895996094, ['z'] = 0.005694274902 },
		reward = math.random(400000,600000),
		nameofbank = "Danmarks Nationalbank (Downtown Vinewood)",
		lastrobbed = 0
	}
}
