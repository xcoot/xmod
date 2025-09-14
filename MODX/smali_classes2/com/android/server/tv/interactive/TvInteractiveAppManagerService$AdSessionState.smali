.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAdServiceId:Ljava/lang/String;

.field public final mCallingUid:I

.field public final mClient:Landroid/media/tv/ad/ITvAdClient;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mSeq:I

.field public mSession:Landroid/media/tv/ad/ITvAdSession;

.field public final mSessionToken:Landroid/os/IBinder;

.field public final mType:Ljava/lang/String;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/media/tv/ad/ITvAdClient;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mType:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mComponent:Landroid/content/ComponentName;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mCallingUid:I

    .line 19
    .line 20
    iput p9, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    :try_start_1
    iget v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 19
    .line 20
    invoke-interface {v2, v3}, Landroid/media/tv/ad/ITvAdClient;->onSessionReleased(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v2

    .line 25
    :try_start_2
    const-string v3, "TvInteractiveAppManagerService"

    .line 26
    .line 27
    const-string v4, "error in onSessionReleased"

    .line 28
    .line 29
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    .line 33
    .line 34
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    .line 35
    .line 36
    invoke-virtual {v1, p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method
