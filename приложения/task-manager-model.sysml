package TaskManagerRequirements {

    part def TaskManagerApplication;
    part def DashboardPage;
    part def TaskPage;
    part def Header;
    part def FilterPanel;
    part def TaskList;
    part def CategoryPanel;
    part def QuickAddTask;
    part def TaskHeader;
    part def TaskInfo;
    part def SubtaskList;
    part def RecurrenceSettings;
    part def Actions;

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

    part taskManager : TaskManagerApplication {
        part dashboard : DashboardPage;
        part taskDetails : TaskPage;

        satisfy CreateTask;
        satisfy PrioritizeTask;
        satisfy SetDeadline;
        satisfy OrganizeByCategory;
        satisfy DecomposeTask;
        satisfy RepeatTask;
    }

    part dashboard : DashboardPage {
        part header : Header;
        part filterPanel : FilterPanel;
        part taskList : TaskList;
        part categoryPanel : CategoryPanel;
        part quickAdd : QuickAddTask;
    }

    part taskDetails : TaskPage {
        part header : TaskHeader;
        part taskInfo : TaskInfo;
        part subtasks : SubtaskList;
        part recurrence : RecurrenceSettings;
        part actions : Actions;
    }
}
