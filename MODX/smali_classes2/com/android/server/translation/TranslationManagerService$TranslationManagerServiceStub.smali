.class public final Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;
.super Landroid/view/translation/ITranslationManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/translation/ITranslationManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const-string v0, "TranslationManagerService"

    .line 8
    .line 9
    invoke-static {p3, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 17
    .line 18
    iget-object p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p3

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    monitor-exit p3

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 12

    .line 1
    const-string v0, "Unable to send getServiceSettingsActivity(): "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 9
    .line 10
    invoke-virtual {v2, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    :goto_0
    move-object v4, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v3}, Landroid/service/translation/TranslationServiceInfo;->getSettingsActivity()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, v2, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v4, Landroid/content/ComponentName;

    .line 42
    .line 43
    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    const/4 v2, 0x1

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    :try_start_1
    invoke-interface {p1, v2, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    const-string v3, "TranslationManagerService"

    .line 55
    .line 56
    const-string v5, "Unable to send getServiceSettingsActivity(): "

    .line 57
    .line 58
    invoke-static {v5, v1, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    new-instance v8, Landroid/content/Intent;

    .line 62
    .line 63
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    :try_start_2
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    new-instance v11, Landroid/os/UserHandle;

    .line 80
    .line 81
    invoke-direct {v11, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 82
    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    const/high16 v9, 0x4000000

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 89
    .line 90
    .line 91
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :try_start_3
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-interface {p1, v2, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_4

    .line 102
    :catch_1
    move-exception p0

    .line 103
    :try_start_4
    const-string p1, "TranslationManagerService"

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_3
    const/4 p0, 0x2

    .line 129
    :try_start_5
    invoke-interface {p1, p0, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :catch_2
    move-exception p0

    .line 134
    const-string p1, "TranslationManagerService"

    .line 135
    .line 136
    const-string p2, "Unable to send getServiceSettingsActivity(): "

    .line 137
    .line 138
    invoke-static {p2, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_5
    return-void

    .line 142
    :catchall_1
    move-exception p0

    .line 143
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 144
    throw p0
.end method

.method public final onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "onSessionCreated(): no service for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 10
    .line 11
    invoke-virtual {v2, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 22
    .line 23
    invoke-static {v5, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 30
    .line 31
    const-string/jumbo v5, "onSessionCreated"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p4, v5}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    new-instance p4, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p4}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string p0, "TranslationManagerServiceImpl"

    .line 59
    .line 60
    const-string/jumbo p1, "onSessionCreatedLocked(): no remote service."

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-interface {p3, v4, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string p0, "TranslationManagerService"

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-interface {p3, v4, v3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    monitor-exit v1

    .line 91
    return-void

    .line 92
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/translation/TranslationManagerServiceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/translation/TranslationManagerServiceShellCommand;-><init>(Lcom/android/server/translation/TranslationManagerService;)V

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

.method public final onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "onGetTranslationCapabilitiesLocked(): no service for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 10
    .line 11
    invoke-virtual {v2, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 22
    .line 23
    invoke-static {v5, p4}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 30
    .line 31
    const-string v5, "getTranslationCapabilities"

    .line 32
    .line 33
    invoke-static {p0, p4, v5}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    new-instance p4, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;

    .line 49
    .line 50
    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;-><init>(IILandroid/os/ResultReceiver;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p4}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string p0, "TranslationManagerServiceImpl"

    .line 58
    .line 59
    const-string/jumbo p1, "onTranslationCapabilitiesRequestLocked(): no remote service."

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string p0, "TranslationManagerService"

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, v4, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    monitor-exit v1

    .line 90
    return-void

    .line 91
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p4}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 13
    .line 14
    iget-object p4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 21
    .line 22
    invoke-static {p4, p3, v1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    :cond_0
    const/4 v2, 0x3

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v1, p0

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_1
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method public final registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->registerUiTranslationStateCallbackLocked(ILandroid/os/IRemoteCallback;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method

.method public final unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method

.method public final updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p8

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 5
    .line 6
    const-string v3, "android.permission.MANAGE_UI_TRANSLATION"

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v5, "Permission Denial from pid ="

    .line 14
    .line 15
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v5, ", uid="

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, " doesn\'t hold android.permission.MANAGE_UI_TRANSLATION"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v3, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    move-object v4, v3

    .line 65
    check-cast v4, Lcom/android/server/translation/TranslationManagerServiceImpl;

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    iget-object v3, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 70
    .line 71
    invoke-static {v3, v1}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misDefaultServiceLocked(Lcom/android/server/translation/TranslationManagerService;I)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/translation/TranslationManagerService$TranslationManagerServiceStub;->this$0:Lcom/android/server/translation/TranslationManagerService;

    .line 78
    .line 79
    const-string/jumbo v3, "updateUiTranslationState"

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, v3}, Lcom/android/server/translation/TranslationManagerService;->-$$Nest$misCalledByServiceAppLocked(Lcom/android/server/translation/TranslationManagerService;ILjava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    move v5, p1

    .line 92
    move-object v6, p2

    .line 93
    move-object v7, p3

    .line 94
    move-object/from16 v8, p4

    .line 95
    .line 96
    move-object/from16 v9, p5

    .line 97
    .line 98
    move/from16 v10, p6

    .line 99
    .line 100
    move-object/from16 v11, p7

    .line 101
    .line 102
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    monitor-exit v2

    .line 106
    return-void

    .line 107
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw v0
.end method
