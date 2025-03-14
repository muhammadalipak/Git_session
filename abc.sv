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

    $display ("1. git sclone https://github.com/muhammadalipak/git_session.git");
    $display ("2. git st // to check the status of files inside the repo");
    $display ("3. git add filename // to add file to repo that should be committed later on");
    $display ("4. git add . // to add all files that has been changed in current repo which should be committed later on");
    $display ("5. git commit -s "descriptive msg for commit" // this will commit the changes that has been added previously to local repo");
    $display ("6. git pull // this can be used before taking step 3 and onward to get updated coopies with you and then make your changes in that");
    $display ("git stash // used for stashing");
     endmodule
