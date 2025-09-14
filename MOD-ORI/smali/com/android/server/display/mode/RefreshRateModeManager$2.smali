.class public final Lcom/android/server/display/mode/RefreshRateModeManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$2;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string/jumbo p1, "plugged"

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 p2, 0x4

    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$2;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/RefreshRateModeManager$2;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object p2, Lcom/android/server/display/mode/RefreshRateController;->mIsWirelessCharging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-ne p2, v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$2;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked()V

    .line 56
    .line 57
    .line 58
    :goto_0
    monitor-exit p1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method
