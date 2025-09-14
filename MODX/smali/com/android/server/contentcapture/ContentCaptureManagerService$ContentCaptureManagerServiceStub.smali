.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
.super Landroid/view/contentcapture/IContentCaptureManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    invoke-direct {p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 4
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "ContentCaptureManagerService"

    .line 10
    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 16
    return-void

    .line 17
    :cond_0
    if-eqz p3, :cond_4

    .line 19
    array-length v1, p3

    .line 20
    const/4 v2, 0x0

    .line 21
    move v4, v0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v3, v1, :cond_3

    .line 25
    aget-object v5, p3, v3

    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-string v6, "--no-history"

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 38
    const-string v6, "--help"

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_1

    .line 46
    const-string v6, "ContentCaptureManagerService"

    .line 48
    const-string v7, "Ignoring invalid dump arg: "

    .line 50
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string p0, "Usage: dumpsys content_capture [--no-history]"

    .line 60
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    return-void

    .line 64
    :cond_2
    move v4, v2

    .line 65
    :goto_1
    add-int/2addr v3, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v0, v4

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 70
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 72
    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 75
    invoke-virtual {v2, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const-string v1, "Requests history: "

    .line 81
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 86
    iget-object v1, v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 88
    if-nez v1, :cond_5

    .line 90
    const-string/jumbo p0, "disabled by device config"

    .line 93
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    if-eqz v0, :cond_6

    .line 99
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 102
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 104
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 116
    :goto_2
    return-void

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p0
.end method

.method public final finishSession(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 7
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->finishSessionLocked(I)V

    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Ljava/lang/String;)V

    .line 8
    invoke-static {v0, p2, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 21
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 32
    if-nez p0, :cond_1

    .line 34
    const/4 p0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mConditionsByPkg:Landroid/util/ArrayMap;

    .line 38
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/util/ArraySet;

    .line 44
    invoke-static {p0}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    .line 47
    move-result-object p0

    .line 48
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/util/ArrayList;)Landroid/os/Bundle;

    .line 52
    move-result-object p0

    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-interface {p2, p1, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string p1, "ContentCaptureManagerService"

    .line 61
    const-string p2, "Unable to send getServiceComponentName(): "

    .line 63
    invoke-static {p2, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 66
    :goto_1
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0
.end method

.method public final getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 7
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 18
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 21
    move-result-object p0

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-static {p0}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-interface {p1, v0, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "ContentCaptureManagerService"

    .line 35
    const-string v0, "Unable to send service component name: "

    .line 37
    invoke-static {v0, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public final getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    new-instance v1, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;I)V

    .line 9
    invoke-static {v0, p1, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 22
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 33
    if-nez p0, :cond_1

    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 41
    const/4 v2, 0x0

    .line 42
    if-nez v0, :cond_2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getSettingsActivity()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mInfo:Landroid/service/contentcapture/ContentCaptureServiceInfo;

    .line 54
    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 57
    move-result-object p0

    .line 58
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 60
    new-instance v2, Landroid/content/ComponentName;

    .line 62
    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    .line 69
    move-result-object p0

    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-interface {p1, v0, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    const-string p1, "ContentCaptureManagerService"

    .line 78
    const-string v0, "Unable to send getServiceSettingsIntent(): "

    .line 80
    invoke-static {v0, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 83
    :goto_1
    return-void

    .line 84
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p0
.end method

.method public final isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 8
    new-instance v2, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, p0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;I)V

    .line 14
    invoke-static {v1, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$mthrowsSecurityException(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_4

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 27
    move-result v1

    .line 28
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 30
    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 32
    const/4 v3, 0x1

    .line 33
    if-nez v2, :cond_2

    .line 35
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 37
    if-eqz p0, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move p0, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz p0, :cond_3

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/4 v3, 0x2

    .line 54
    :goto_2
    const/4 p0, 0x0

    .line 55
    :try_start_1
    invoke-interface {p1, v3, p0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string p1, "ContentCaptureManagerService"

    .line 62
    const-string v0, "Unable to send isContentCaptureFeatureEnabled(): "

    .line 64
    invoke-static {v0, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 67
    :goto_3
    return-void

    .line 68
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0
.end method

.method public final onLoginDetected(Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Landroid/content/pm/ParceledListSlice;)V

    .line 6
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 9
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    .line 3
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

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

    .line 18
    return-void
.end method

.method public final registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 8
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 10
    invoke-virtual {v0, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    move-result v0

    .line 17
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 19
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    invoke-interface {p2, p0}, Landroid/view/contentcapture/IContentCaptureOptionsCallback;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "Unable to send setContentCaptureOptions(): "

    .line 34
    const-string p2, "ContentCaptureManagerService"

    .line 36
    invoke-static {p1, p0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method public final removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 6
    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 19
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/contentcapture/DataRemovalRequest;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->assertCallerLocked(Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 49
    :goto_0
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final resetTemporaryService(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 6
    return-void
.end method

.method public final setDefaultServiceEnabled(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 6
    return-void
.end method

.method public final setTemporaryService(ILjava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 6
    return-void
.end method

.method public final shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 9
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 22
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 27
    invoke-virtual {v2, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 33
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 35
    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 37
    check-cast v3, Ljava/util/HashSet;

    .line 39
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 42
    move-result v3

    .line 43
    const/16 v4, 0xa

    .line 45
    if-ge v3, v4, :cond_2

    .line 47
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 49
    iget-object v3, v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 51
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    check-cast v3, Ljava/util/HashSet;

    .line 57
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    .line 66
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 68
    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;-><init>(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 71
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/contentcapture/DataShareRequest;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v2, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->assertCallerLocked(Ljava/lang/String;)V

    .line 85
    iget-object p0, v2, Lcom/android/server/contentcapture/ContentCapturePerUserService;->mRemoteService:Lcom/android/server/contentcapture/RemoteContentCaptureService;

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;)V

    .line 90
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    :goto_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 96
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v7, 0x0

    .line 104
    const/16 v3, 0xe

    .line 106
    const/16 v2, 0xcf

    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 112
    const/4 p0, 0x2

    .line 113
    invoke-interface {p2, p0}, Landroid/view/contentcapture/IDataShareWriteAdapter;->error(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    goto :goto_2

    .line 117
    :catch_0
    :try_start_2
    const-string p0, "ContentCaptureManagerService"

    .line 119
    const-string p1, "Failed to send error message to client"

    .line 121
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_2
    monitor-exit v1

    .line 125
    return-void

    .line 126
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    throw p0
.end method

.method public final startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V
    .locals 9

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result p3

    .line 11
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 13
    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 18
    if-nez v2, :cond_0

    .line 20
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 22
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 28
    iput-object v2, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 36
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;

    .line 39
    move-result-object v4

    .line 40
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 42
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 44
    monitor-enter v0

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 47
    invoke-virtual {v1, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 53
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 55
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 57
    invoke-virtual {v2, p3}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceName(I)Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_1

    .line 63
    const/4 p3, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v2, p3}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p3

    .line 73
    :goto_1
    if-nez p3, :cond_2

    .line 75
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 77
    const-string/jumbo p3, "startSession()"

    .line 80
    invoke-virtual {p0, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_2

    .line 86
    const/4 p0, 0x4

    .line 87
    const/4 p1, 0x0

    .line 88
    invoke-static {p6, p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 98
    move-result v6

    .line 99
    move-object v2, p1

    .line 100
    move-object v3, p2

    .line 101
    move v5, p4

    .line 102
    move v7, p5

    .line 103
    move-object v8, p6

    .line 104
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->startSessionLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/pm/ActivityPresentationInfo;IIILcom/android/internal/os/IResultReceiver;)V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    throw p0

    .line 111
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    throw p0
.end method
