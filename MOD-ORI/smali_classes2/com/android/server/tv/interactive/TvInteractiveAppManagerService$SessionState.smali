.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallingUid:I

.field public final mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mIAppServiceId:Ljava/lang/String;

.field public final mSeq:I

.field public mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

.field public final mSessionToken:Landroid/os/IBinder;

.field public final mType:I

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/ComponentName;Landroid/media/tv/interactive/ITvInteractiveAppClient;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mComponent:Landroid/content/ComponentName;

    .line 11
    .line 12
    iput p4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mType:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mCallingUid:I

    .line 19
    .line 20
    iput p9, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

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
    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method
