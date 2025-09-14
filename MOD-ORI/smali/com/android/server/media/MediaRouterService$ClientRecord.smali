.class public final Lcom/android/server/media/MediaRouterService$ClientRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mActiveScan:Z

.field public final mClient:Landroid/media/IMediaRouterClient;

.field public mGroupId:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public mRouteTypes:I

.field public mSelectedRouteId:Ljava/lang/String;

.field public final mTrusted:Z

.field public final mUid:I

.field public final mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;IILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPid:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, p0, v2}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

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
    const-string v1, "Client "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

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
    iget p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPid:I

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
