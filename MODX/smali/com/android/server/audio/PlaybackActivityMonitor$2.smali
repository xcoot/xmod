.class public final Lcom/android/server/audio/PlaybackActivityMonitor$2;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/PlaybackActivityMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    .line 6
    const/16 p1, 0x1388

    .line 8
    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public final func()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$2;->this$0:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioHandler:Landroid/os/Handler;

    .line 5
    if-nez p0, :cond_0

    .line 7
    const-string p0, "AS.PlaybackActivityMon"

    .line 9
    const-string v0, "There is no audio handler"

    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    const/16 v1, 0xaca

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    :goto_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method
