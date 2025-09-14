.class public final synthetic Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;->f$0:I

    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;->f$0:I

    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/FreecessHandler$$ExternalSyntheticLambda0;->f$1:Z

    .line 5
    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 7
    sget-object v1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 9
    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v2, "ActivityManager"

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v4, "unpendingScheduleServiceRestart: u="

    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v4, ", drop="

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 45
    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPendingSches:Ljava/util/Map;

    .line 48
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    :try_start_1
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mPendingSches:Ljava/util/Map;

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v4

    .line 55
    check-cast v3, Ljava/util/HashMap;

    .line 57
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/util/List;

    .line 63
    if-eqz v3, :cond_2

    .line 65
    if-eqz p0, :cond_0

    .line 67
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_3

    .line 73
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object p0

    .line 77
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 89
    const-string v5, "ActivityManager"

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string/jumbo v7, "up tryScheduleServiceRestartLocked("

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v7, "): sr="

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v6

    .line 121
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 126
    invoke-virtual {v5, v4}, Lcom/android/server/am/ActiveServices;->tryScheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    :try_start_3
    const-string v5, "ActivityManager"

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v7, "ISE while USR of "

    .line 139
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v4

    .line 153
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 163
    move-result p0

    .line 164
    if-eqz p0, :cond_2

    .line 166
    iget-object p0, v1, Lcom/android/server/am/ActivityManagerService;->mPendingSches:Ljava/util/Map;

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v0

    .line 172
    check-cast p0, Ljava/util/HashMap;

    .line 174
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 182
    return-void

    .line 183
    :catchall_1
    move-exception p0

    .line 184
    goto :goto_4

    .line 185
    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    :try_start_6
    throw p0

    .line 187
    :goto_4
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 191
    throw p0
.end method
