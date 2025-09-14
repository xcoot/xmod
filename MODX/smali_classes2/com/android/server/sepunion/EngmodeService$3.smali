.class public final Lcom/android/server/sepunion/EngmodeService$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 6

    .line 1
    const-string p1, "engmode_service"

    .line 2
    .line 3
    const-string v0, "Network is available"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/util/Timer;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, v0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/android/server/sepunion/EngmodeService$1;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/android/server/sepunion/EngmodeService$1;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p1, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    const-wide/32 v4, 0x1499700

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    const-string p0, "There is no need for update"

    .line 55
    .line 56
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v0, v0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const-string p0, "Previous thread is alive, skip this time"

    .line 69
    .line 70
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/android/server/sepunion/EngmodeService$1;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Lcom/android/server/sepunion/EngmodeService$1;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p1, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 101
    .line 102
    new-instance v0, Ljava/util/Timer;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p1, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Ljava/util/TimerTask;

    .line 114
    .line 115
    const-wide/16 v2, 0x0

    .line 116
    .line 117
    const-wide/32 v4, 0x1499700

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    const-string p0, "engmode_service"

    .line 2
    .line 3
    const-string p1, "Network isn\'t available"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
