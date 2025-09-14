.class public final Lcom/android/server/audio/AudioService$AsdProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAsd:Landroid/media/IAudioServerStateDispatcher;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
