.class public final Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mServerCallback:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;ZZ)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 4
    move-result-object v6

    .line 5
    if-eqz p6, :cond_0

    .line 7
    const/high16 v0, 0x400000

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    or-int/lit16 v7, v0, 0x1000

    .line 13
    const/4 v9, 0x1

    .line 14
    const-string v2, "android.service.musicrecognition.MUSIC_RECOGNITION"

    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v3, p2

    .line 19
    move v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move/from16 v8, p7

    .line 23
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 26
    move-object v1, p5

    .line 27
    iput-object v1, v0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;->mServerCallback:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;

    .line 29
    return-void
.end method


# virtual methods
.method public final getAttributionTag()Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 6
    new-instance v1, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;

    .line 8
    invoke-direct {v1, p0, v0}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;Ljava/util/concurrent/CompletableFuture;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 14
    return-object v0
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/media/musicrecognition/IMusicRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionService;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getTimeoutIdleBindMillis()J
    .locals 2

    .line 1
    const-wide/32 v0, 0x9c40

    .line 4
    return-wide v0
.end method

.method public final onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 9
    return-void
.end method
