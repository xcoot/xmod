.class final Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

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
    .locals 3

    .line 1
    const-string p1, "PowerManagerService"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "[api] UserSwitchedReceiver: onReceive: UserHandle: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " -> "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "android.intent.extra.user_handle"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p1

    .line 44
    :try_start_0
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 45
    .line 46
    iget-boolean v0, p2, Lcom/android/server/power/PowerManagerService;->mLastBrightnessOverrideState:Z

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Lcom/android/server/power/PowerManagerService;->setQuickPanelBrightnessBarDisabled(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    .line 54
    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string v0, "ScreenOnKeeper"

    .line 61
    .line 62
    const-string/jumbo v1, "onUserSwitched"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p2, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x2

    .line 76
    invoke-virtual {p2, v0}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 85
    .line 86
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetScreenOffTimeoutForBatterySaver(Lcom/android/server/power/PowerManagerService;)V

    .line 87
    .line 88
    .line 89
    monitor-exit p1

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method
