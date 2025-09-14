.class public final Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;
.super Landroid/app/search/ISearchUiManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/searchui/SearchUiManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/searchui/SearchUiManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/search/ISearchUiManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "createSearchSession"

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final destroySearchSession(Landroid/app/search/SearchSessionId;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda5;-><init>(Landroid/app/search/SearchSessionId;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "destroySearchSession"

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final notifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "notifyEvent"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerServiceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/searchui/SearchUiManagerServiceShellCommand;-><init>(Lcom/android/server/searchui/SearchUiManagerService;)V

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

.method public final query(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "query"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final registerEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "registerEmptyQueryResultUpdateCallback"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V
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
    invoke-virtual {p2}, Landroid/app/search/SearchSessionId;->getUserId()I

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
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/searchui/SearchUiManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string p0, "Permission Denial: "

    .line 60
    .line 61
    const-string p2, " from pid="

    .line 62
    .line 63
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, ", uid="

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string p1, "SearchUiManagerService"

    .line 91
    .line 92
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/lang/SecurityException;

    .line 96
    .line 97
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    :try_start_0
    iget-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->this$0:Lcom/android/server/searchui/SearchUiManagerService;

    .line 111
    .line 112
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Lcom/android/server/searchui/SearchUiPerUserService;

    .line 117
    .line 118
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method public final unregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p2, "unregisterEmptyQueryResultUpdateCallback"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->runForUserLocked(Ljava/lang/String;Landroid/app/search/SearchSessionId;Ljava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
