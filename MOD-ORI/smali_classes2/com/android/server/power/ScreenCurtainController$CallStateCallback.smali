.class public final Lcom/android/server/power/ScreenCurtainController$CallStateCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 35
    .line 36
    iget v3, v2, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledReason:I

    .line 37
    .line 38
    if-ne v3, v1, :cond_1

    .line 39
    .line 40
    iget v3, v2, Lcom/android/server/power/ScreenCurtainController;->mLastCallState:I

    .line 41
    .line 42
    if-ne v3, v1, :cond_1

    .line 43
    .line 44
    const-string v1, "ScreenCurtainController"

    .line 45
    .line 46
    const-string/jumbo v3, "screen curtain auto enable scheduled"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object v1, v2, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v2, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-wide/16 v3, 0x1388

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 70
    .line 71
    iput p1, p0, Lcom/android/server/power/ScreenCurtainController;->mLastCallState:I

    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method
