.class public final Lcom/android/server/contextualsearch/ContextualSearchManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssistDataCallbacks:Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;

.field public final mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

.field public mTemporaryHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

.field public mTemporaryPackage:Ljava/lang/String;

.field public mTokenValidDurationMs:J

.field public final mWmInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static -$$Nest$menforcePermission(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.ACCESS_CONTEXTUAL_SEARCH"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "Permission Denial: Cannot call startContextualSearch from pid="

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ", uid="

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/SecurityException;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw v0

    .line 87
    :cond_2
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v5, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v5, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v4, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;

    .line 12
    .line 13
    invoke-direct {v4, p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 18
    .line 19
    const-wide/32 v0, 0x927c0

    .line 20
    .line 21
    .line 22
    iput-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 38
    .line 39
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 48
    .line 49
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 61
    .line 62
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 71
    .line 72
    new-instance v7, Lcom/android/server/am/AssistDataRequester;

    .line 73
    .line 74
    const-string/jumbo v0, "window"

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-class v0, Landroid/app/AppOpsManager;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v3, v0

    .line 92
    check-cast v3, Landroid/app/AppOpsManager;

    .line 93
    .line 94
    const/16 v6, 0x32

    .line 95
    .line 96
    move-object v0, v7

    .line 97
    move-object v1, p1

    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    iput-object v7, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string/jumbo v0, "contextual_search_package"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static enforceOverridingPermission(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x3e8

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "Permission Denial: Cannot override Contextual Search. Called "

    .line 25
    .line 26
    const-string v1, " from pid="

    .line 27
    .line 28
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", uid="

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    new-instance v0, Ljava/lang/SecurityException;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getContextualSearchPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x1040315

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;-><init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "contextual_search"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final resetTemporaryPackage()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "resetTemporaryPackage"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryHandler:Lcom/android/server/contextualsearch/ContextualSearchManagerService$2;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTemporaryPackage:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "contextual_search_package"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->getContextualSearchPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method

.method public final setTokenValidDurationMs(I)V
    .locals 3

    .line 1
    const-string v0, "Token max duration is 600000 (called with "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string/jumbo v1, "setTokenValidDurationMs"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->enforceOverridingPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v1, 0x927c0

    .line 11
    .line 12
    .line 13
    if-gt p1, v1, :cond_0

    .line 14
    .line 15
    int-to-long v0, p1

    .line 16
    iput-wide v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mTokenValidDurationMs:J

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ")"

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method
