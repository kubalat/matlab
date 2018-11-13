%toto je vlastne void funkcia
function number_writter
    run_cycle = 1;

    while (run_cycle == 1)
        x = input('Zadaj cislo: \n')
        fprintf('Zadal si cislo: %d\n', x)
        
        if (x == -1)
            run_cycle = 0
            fprintf("Execution failed")
        end
    end
end

