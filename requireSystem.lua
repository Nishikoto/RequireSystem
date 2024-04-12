local nishi = {}
function nishi.require(resource, module)
    local _module = LoadResourceFile(resource or GetCurrentResourceName(), ('%s.lua'):format(module));

    if (type(_module) ~= 'string') then
        print('Error: Invalid module name!');
        return;
    end

    local func_load, err_load = load(_module);

    if (not func_load) then
        print(('Error: %s'):format(err_load));
        return;
    end

    local status, func = pcall(func_load);

    if (not status) then
        print(('Execution error: %s'):format(func))
        return;
    end

    return func;
end

exports('nrequire', function()
    return nishi;
end);