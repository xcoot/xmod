.class public final Lcom/samsung/android/server/continuity/SemContinuityService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->$r8$clinit:I

    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 17
    .line 18
    invoke-direct {v2, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 22
    .line 23
    invoke-direct {v0, p1, v2}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityService;->mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "[MCF_DS_SYS]_Service"

    .line 2
    .line 3
    const-string/jumbo v1, "onStart"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string v0, "SemContinuityService"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/continuity/SemContinuityService;->mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "onUserStarting : "

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "[MCF_DS_SYS]_Service"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "onUserStopping : "

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "[MCF_DS_SYS]_Service"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    const-string/jumbo v0, "onUserSwitching : "

    .line 14
    .line 15
    .line 16
    const-string v1, "->"

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "[MCF_DS_SYS]_Service"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityService;->mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance p2, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;Landroid/os/UserHandle;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->run()V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    sget-object p0, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sHandler:Landroid/os/Handler;

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    :goto_1
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUserUnlocking : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "[MCF_DS_SYS]_Service"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityService;->mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v3, "onUserUnlocking - "

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, ", "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "[MCF_DS_SYS]_SemContinuityServiceImpl"

    .line 74
    .line 75
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-ne v0, v2, :cond_0

    .line 83
    .line 84
    if-nez v1, :cond_0

    .line 85
    .line 86
    iput v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mCurrentUserId:I

    .line 87
    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
.end method
