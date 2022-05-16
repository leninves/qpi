package.path = getScriptPath() .. '\\includes\\?.lua;C:\\lua\\5.3\\systree\\share\\lua\\5.3\\?.lua;' .. package.path

require 'init'

function main()
    --funcs.debug(pretty.write(getParamEx("TQBR", "ALRS", "PRICEMAX")))

    if not stopped then
        funcs.info("starting…")

        --funcs.debug("settings " .. pretty.write(settings))

        qtable.createAndFill("depo_limits", "Текущая ситуация")--, 5)
        qtable.refresh()

        local i = 0
        while not stopped do
            sleep(500)
            i = i + 1

            if i >= 20 then
                qtable.refresh()

                i = 0
            end
        end

        shutdown()
    end
end
