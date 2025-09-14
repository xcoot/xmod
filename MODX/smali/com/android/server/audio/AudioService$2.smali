.class public final Lcom/android/server/audio/AudioService$2;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidCachedChanged(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5
    const/16 v1, 0x64

    .line 7
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;III)V

    .line 10
    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$2;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5
    const/16 v0, 0x64

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;III)V

    .line 11
    return-void
.end method
