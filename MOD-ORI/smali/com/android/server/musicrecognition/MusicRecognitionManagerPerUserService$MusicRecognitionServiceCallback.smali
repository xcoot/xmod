.class public final Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;
.super Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

.field public final synthetic this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onRecognitionFailed(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionFailed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->sanitizeBundle(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->mClientCallback:Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;->onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iget-object p0, p0, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService$MusicRecognitionServiceCallback;->this$0:Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/musicrecognition/MusicRecognitionManagerPerUserService;->destroyService()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
