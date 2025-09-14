.class public final Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

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
    .locals 6

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
    if-eqz p1, :cond_4

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    const-string/jumbo v0, "plugged"

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    move v0, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v1

    .line 36
    :goto_0
    const/16 v4, 0x8

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-boolean v5, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCharging:Z

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iput-boolean v1, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCharging:Z

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iput-boolean v3, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mCharging:Z

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    :goto_1
    const-string/jumbo v0, "level"

    .line 62
    .line 63
    .line 64
    const/4 v2, -0x1

    .line 65
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const-string/jumbo v3, "scale"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eq v0, v2, :cond_3

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 87
    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    const/4 v1, 0x6

    .line 91
    invoke-static {p0, v1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    :goto_2
    monitor-exit p1

    .line 102
    goto :goto_4

    .line 103
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_4
    :goto_4
    return-void
.end method
