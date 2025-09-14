.class public final Lcom/android/server/rollback/RollbackManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 2

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda13;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "rollback_boot"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 11
    .line 12
    const-string/jumbo v1, "rollback"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    const-class v0, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 21
    .line 22
    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerService;->mService:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string/jumbo v0, "onUnlockUser id="

    .line 15
    .line 16
    .line 17
    const-string v1, "RollbackManager"

    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method
