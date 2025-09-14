.class public final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final callingPid:I

.field public final callingUid:I

.field public final client:Landroid/media/tv/ITvInputClient;

.field public final componentName:Landroid/content/ComponentName;

.field public currentChannel:Landroid/net/Uri;

.field public hardwareSessionToken:Landroid/os/IBinder;

.field public final inputId:Ljava/lang/String;

.field public isCurrent:Z

.field public isMainSession:Z

.field public final isRecordingSession:Z

.field public isVisible:Z

.field public final seq:I

.field public session:Landroid/media/tv/ITvInputSession;

.field public final sessionId:Ljava/lang/String;

.field public final sessionToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field public final tvAppAttributionSource:Landroid/content/AttributionSource;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;Landroid/content/AttributionSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 21
    .line 22
    iput-boolean p5, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 23
    .line 24
    iput-object p6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 25
    .line 26
    iput p7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 27
    .line 28
    iput p8, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 29
    .line 30
    iput p9, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingPid:I

    .line 31
    .line 32
    iput p10, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 33
    .line 34
    iput-object p11, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p12, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->tvAppAttributionSource:Landroid/content/AttributionSource;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

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
