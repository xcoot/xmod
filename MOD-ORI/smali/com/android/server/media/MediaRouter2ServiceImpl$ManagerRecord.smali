.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mHasMediaContentControl:Z

.field public final mHasMediaRoutingControl:Z

.field public mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

.field public final mManager:Landroid/media/IMediaRouter2Manager;

.field public final mManagerId:I

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public mScanningState:I

.field public final mTargetPackageName:Ljava/lang/String;

.field public final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2Manager;IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mScanningState:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 12
    .line 13
    iput p4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerUid:I

    .line 14
    .line 15
    iput p5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPid:I

    .line 16
    .line 17
    iput-object p6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mTargetPackageName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 28
    .line 29
    iput-boolean p8, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mHasMediaRoutingControl:Z

    .line 30
    .line 31
    iput-boolean p9, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mHasMediaContentControl:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 10
    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Manager "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " (pid "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPid:I

    .line 19
    .line 20
    const-string v1, ")"

    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
