.class public final Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

.field public mWatcher:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/sepunion/OneHandService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/OneHandService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p0}, Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget v0, Lcom/android/server/sepunion/OneHandService;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "binderDied() binder="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "OneHandService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string/jumbo v2, "navigation_bar_gesture_disabled_by_policy"

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/android/server/sepunion/OneHandService;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mServiceConnection:Lcom/android/server/sepunion/OneHandService$2;

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "unbindService()"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 59
    .line 60
    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 65
    .line 66
    const-string v0, "OneHandService has died unexpectedly"

    .line 67
    .line 68
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .line 70
    .line 71
    :try_start_1
    const-string v0, "deviceidle"

    .line 72
    .line 73
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v2, "com.samsung.android.sidegesturepad"

    .line 82
    .line 83
    invoke-interface {v0, v2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_2
    sget v2, Lcom/android/server/sepunion/OneHandService;->$r8$clinit:I

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "exception on addPowerSaveWhitelist() e="

    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->this$0:Lcom/android/server/sepunion/OneHandService;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/sepunion/OneHandService;->mHandler:Landroid/os/Handler;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/sepunion/OneHandService$OneHandServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/OneHandService$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    const-wide/16 v2, 0x2710

    .line 132
    .line 133
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_1
    move-exception p0

    .line 138
    sget v0, Lcom/android/server/sepunion/OneHandService;->$r8$clinit:I

    .line 139
    .line 140
    const-string v0, "exception on binderDied() e="

    .line 141
    .line 142
    invoke-static {p0, v0, v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_0
    :goto_1
    return-void
.end method
