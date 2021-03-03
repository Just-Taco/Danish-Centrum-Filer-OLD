


local dname = "Server Status"
local dmessage = " **__Danish Centrum__ er på vej op!** ```Connect 88.198.229.118``` @here "
PerformHttpRequest('https://discord.com/api/webhooks/811959880562901031/dWr-9jDmNKiFQff_E1DIjo7V_EC0GxOZxFZYNVZMrTgVOmDwYP_eztggZVNdFt1w5Gi4', function(err, text, headers) end, 'POST', json.encode({username = dname, content = dmessage}), { ['Content-Type'] = 'application/json' })

