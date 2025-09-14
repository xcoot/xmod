.class public final Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;
.super Landroid/app/smartspace/ISmartspaceManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartspace/SmartspaceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/smartspace/ISmartspaceManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "createSmartspaceSession"

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/smartspace/SmartspaceSessionId;I)V

    .line 5
    .line 6
    .line 7
    const-string v1, "destroySmartspaceSession"

    .line 8
    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "notifySmartspaceEvent"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;-><init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V

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

.method public final registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "registerSmartspaceUpdates"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;-><init>(Landroid/app/smartspace/SmartspaceSessionId;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "requestSmartspaceUpdate"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V
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
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceSessionId;->getUserHandle()Landroid/os/UserHandle;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "android.permission.MANAGE_SMARTSPACE"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/smartspace/flags/Flags;->accessSmartspace()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    const-string v1, "android.permission.ACCESS_SMARTSPACE"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/smartspace/SmartspaceManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 75
    .line 76
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string p0, "Permission Denial: Cannot call "

    .line 92
    .line 93
    const-string p2, " from pid="

    .line 94
    .line 95
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, ", uid="

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const-string p1, "SmartspaceManagerService"

    .line 123
    .line 124
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    new-instance p1, Ljava/lang/SecurityException;

    .line 128
    .line 129
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    :try_start_0
    iget-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 140
    .line 141
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->this$0:Lcom/android/server/smartspace/SmartspaceManagerService;

    .line 143
    .line 144
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 149
    .line 150
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :catchall_0
    move-exception p0

    .line 159
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :catchall_1
    move-exception p0

    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method public final unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "unregisterSmartspaceUpdates"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
