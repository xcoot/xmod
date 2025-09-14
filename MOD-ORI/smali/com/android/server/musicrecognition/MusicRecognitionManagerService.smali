.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 2
    .line 3
    const v1, 0x1040321

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final enforceCallingPermissionForManagement()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.MANAGE_MUSIC_RECOGNITION"

    .line 6
    .line 7
    const-string v1, "MusicRecognitionManagerService"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getMaximumTemporaryServiceDurationMs()I
    .locals 0

    .line 1
    const p0, 0xea60

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerService$MusicRecognitionManagerStub;-><init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "music_recognition"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
