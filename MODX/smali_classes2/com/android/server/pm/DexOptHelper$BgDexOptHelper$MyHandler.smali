.class public final Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->reachedToThermalThrottleLevel()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    const-string v1, "Canceling bg dexopt by thermal throttling"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v1, "Cancel bg dexopt job"

    .line 22
    .line 23
    const-string v2, "BgDexOptHelper"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/server/art/ArtManagerLocal;->cancelBackgroundDexoptJob()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string p1, "Stop observing thermal"

    .line 39
    .line 40
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    .line 61
    .line 62
    iget-boolean p1, p1, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;->this$0:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-wide/16 v0, 0x7d0

    .line 75
    .line 76
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method
