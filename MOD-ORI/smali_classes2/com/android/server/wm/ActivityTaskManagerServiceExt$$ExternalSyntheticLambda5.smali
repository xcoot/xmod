.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$1:I

    .line 8
    .line 9
    const-string p1, "com.android.settings/.password.ChooseLockGeneric$InternalActivity"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$1:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    check-cast v3, Lcom/android/server/wm/Task;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    const-string v4, "all"

    .line 23
    .line 24
    const/4 v5, -0x1

    .line 25
    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(ILjava/lang/String;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    add-int/lit8 v4, v4, -0x1

    .line 34
    .line 35
    :goto_0
    if-ltz v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 46
    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    iget v6, v7, Lcom/android/server/wm/Task;->mUserId:I

    .line 50
    .line 51
    if-ne v6, v2, :cond_0

    .line 52
    .line 53
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 62
    .line 63
    .line 64
    move-result-wide v15

    .line 65
    :try_start_0
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 66
    .line 67
    iget-object v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 68
    .line 69
    const-string/jumbo v10, "remove-task-by-knox"

    .line 70
    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v13, -0x1

    .line 74
    const/4 v8, 0x1

    .line 75
    const/4 v9, 0x1

    .line 76
    const/16 v12, 0x3e8

    .line 77
    .line 78
    const/4 v14, 0x0

    .line 79
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    return-void
.end method
