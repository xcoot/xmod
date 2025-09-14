.class public final Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;
.super Landroid/app/prediction/IPredictionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appprediction/AppPredictionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/prediction/IPredictionManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createPredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;-><init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "createPredictionSession"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "notifyAppTargetEvent"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "notifyLaunchLocationShown"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/AppPredictionSessionId;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "onDestroyPredictionSession"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/appprediction/AppPredictionManagerServiceShellCommand;-><init>(Lcom/android/server/appprediction/AppPredictionManagerService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "registerPredictionUpdates"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/prediction/AppPredictionSessionId;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "requestPredictionUpdate"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final requestServiceFeatures(Landroid/app/prediction/AppPredictionSessionId;Landroid/os/IRemoteCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "requestServiceFeatures"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V
    .locals 9

    .line 1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionSessionId;->getUserId()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/appprediction/AppPredictionManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 57
    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/16 v1, 0x3e8

    .line 77
    .line 78
    if-ne v0, v1, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string p0, "Permission Denial: "

    .line 82
    .line 83
    const-string p2, " from pid="

    .line 84
    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string p1, ", uid="

    .line 90
    .line 91
    const-string p2, " expected caller to hold PACKAGE_USAGE_STATS permission"

    .line 92
    .line 93
    const-string p3, "AppPredictionManagerService"

    .line 94
    .line 95
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    new-instance p1, Ljava/lang/SecurityException;

    .line 100
    .line 101
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    :try_start_0
    iget-object p1, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->this$0:Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 115
    .line 116
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 121
    .line 122
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public final sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda4;-><init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "sortAppTargets"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "unregisterPredictionUpdates"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->runForUserLocked(Ljava/lang/String;Landroid/app/prediction/AppPredictionSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
