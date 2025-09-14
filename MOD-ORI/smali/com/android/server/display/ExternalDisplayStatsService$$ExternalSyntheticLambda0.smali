.class public final synthetic Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p0, "ExternalDisplayStatsService"

    .line 13
    .line 14
    const-string/jumbo v0, "scheduleInit is called but already initialized"

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    .line 23
    .line 24
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 25
    .line 26
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    const/4 v5, 0x0

    .line 44
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Lcom/android/server/display/ExternalDisplayStatsService$2;

    .line 45
    .line 46
    iget-object v6, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-class v2, Landroid/media/AudioManager;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/media/AudioManager;

    .line 64
    .line 65
    iput-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    .line 66
    .line 67
    :cond_1
    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Lcom/android/server/display/ExternalDisplayStatsService$1;

    .line 74
    .line 75
    invoke-virtual {v1, p0, v0}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    const-string p0, "ExternalDisplayStatsService"

    .line 84
    .line 85
    const-string/jumbo v0, "scheduleDeinit is called but never initialized"

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 96
    .line 97
    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Lcom/android/server/display/ExternalDisplayStatsService$2;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    .line 105
    .line 106
    if-nez v1, :cond_4

    .line 107
    .line 108
    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const-class v2, Landroid/media/AudioManager;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Landroid/media/AudioManager;

    .line 117
    .line 118
    iput-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    .line 120
    :cond_4
    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Lcom/android/server/display/ExternalDisplayStatsService$1;

    .line 125
    .line 126
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_1
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
