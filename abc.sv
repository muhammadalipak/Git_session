module git_testing (
    input [44:0] session,
    output [44:0] learning
                    );
    logic repo_generation;
    logic access_to_batch;
    logic clonning_using_address;
    logic push_to_repo;

    assign learning = repo_generation ? {44{(access_to_batch + clonning_using_address + push_to_repo)}
    } : session;
     endmodule
