package TaskFlowRequirements {

    part def TaskFlowApplication;
    part def User;
    part def Task;
    part def Category;
    part def Subtask;
    part def RecurrenceRule;

    requirement def CreateTask {
        doc /* Пользователь может создать задачу с названием и атрибутами. */
    }

    requirement def PrioritizeTask {
        doc /* Для задачи задаётся один из четырёх уровней приоритета. */
    }

    requirement def SetDeadline {
        doc /* Для задачи можно указать дедлайн и определить просроченность. */
    }

    requirement def OrganizeByCategory {
        doc /* Пользователь может создавать категории и назначать их задачам. */
    }

    requirement def DecomposeTask {
        doc /* Задача может содержать подзадачи с отдельным статусом. */
    }

    requirement def RepeatTask {
        doc /* Для задачи задаётся ежедневное, еженедельное или ежемесячное повторение. */
    }

    part taskFlow : TaskFlowApplication {
        part users : User [0..*];
        part tasks : Task [0..*];
        part categories : Category [0..*];
        part subtasks : Subtask [0..*];
        part recurrenceRules : RecurrenceRule [0..*];

        satisfy CreateTask;
        satisfy PrioritizeTask;
        satisfy SetDeadline;
        satisfy OrganizeByCategory;
        satisfy DecomposeTask;
        satisfy RepeatTask;
    }
}
