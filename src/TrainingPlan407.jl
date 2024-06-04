module TrainingPlan407

    using Revise
    using CSV
    using DataFrames
    using DataFramesMeta
    using Chain
    using BaseTrainingPlan
    using TrainingContent
    import TrainingLog as tl
    import TrainingBook as tb
    import TrainingPlan as tp
    import TrainingAssessment as ta
    
    
export 
    TrainingTableData,
    generate_modules,
    generate_training_table_data,
    write_training_log_to_file,
    write_training_plan_to_file,
    write_training_book_list_to_file,
    write_training_assessment_to_file,
    write_training_assessment_results_to_file



function generate_modules(file_name)
    generate_modules_from_training_assessment(file_name)
end

function generate_training_table_data(content_title)
    generate_TrainingTableData(content_title)
end


function write_training_log_to_file(ttd::TrainingTableData)
    tl.write_table_to_file("training_log.tex", ttd)
end

function write_training_plan_to_file(ttd::TrainingTableData)
    tp.write_table_to_file("training_plan.tex", ttd)
end

function write_training_book_list_to_file(ttd::TrainingTableData)
    tb.write_training_book_list_to_file("training_book.tex", ttd)
end

function write_training_assessment_to_file(ttd::TrainingTableData)
    ta.write_table_to_file("training_assessment.tex", ttd)
end

function write_training_assessment_results_to_file(file_name,ttd::TrainingTableData)
    ta.write_training_assessment_to_file("training_assessment_results.tex",file_name)
end


end