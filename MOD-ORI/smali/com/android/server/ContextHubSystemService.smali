.class public final Lcom/android/server/ContextHubSystemService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

.field public mInit:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "Init ContextHubSystemService"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "ContextHubSystemService"

    .line 6
    .line 7
    const-string/jumbo v0, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    .line 14
    .line 15
    const-string v0, "Wait for ContextHubSystemService init"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    .line 22
    .line 23
    const-string/jumbo p1, "contexthub"

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p2, "User changed to id: "

    .line 6
    .line 7
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/location/contexthub/ContextHubService;->getCurrentUserId()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "ContextHubService"

    .line 25
    .line 26
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendLocationSettingUpdate()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->sendMicrophoneDisableSettingUpdateForCurrentUser()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
