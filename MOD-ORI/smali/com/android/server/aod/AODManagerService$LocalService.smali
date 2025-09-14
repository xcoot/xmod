.class public final Lcom/android/server/aod/AODManagerService$LocalService;
.super Lcom/samsung/android/aod/AODManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/aod/AODManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isAODAnalogLiveClock()Z
    .locals 3

    .line 1
    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "isAODAnalogLiveClock: mIsAODAnalogLiveClock : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    .line 13
    iget-boolean v1, v1, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 14
    .line 15
    const-string v2, "AODManagerService"

    .line 16
    .line 17
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 21
    .line 22
    iget-boolean p0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 23
    .line 24
    return p0
.end method

.method public final screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/aod/AODConfig;->SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Lcom/android/server/aod/AODManagerService$1;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Lcom/android/server/aod/AODManagerService$1;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string v1, "AODManagerService"

    .line 31
    .line 32
    const-string/jumbo v2, "screenTurningOn post"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v1, "AODManagerService"

    .line 41
    .line 42
    const-string/jumbo v2, "screenTurningOn post - add delay +"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v2, v1}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 54
    .line 55
    iput-object p1, v2, Lcom/android/server/aod/AODManagerService;->mAODChangeListener:Lcom/samsung/android/aod/AODManager$AODChangeListener;

    .line 56
    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    iget-object p1, v2, Lcom/android/server/aod/AODManagerService;->mAODHandler:Lcom/android/server/aod/AODManagerService$AODHandler;

    .line 59
    .line 60
    iget-object v1, v2, Lcom/android/server/aod/AODManagerService;->mScreenTurningOnRunnable:Lcom/android/server/aod/AODManagerService$1;

    .line 61
    .line 62
    int-to-long v2, v0

    .line 63
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->checkSystemUid()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 75
    .line 76
    monitor-enter p1

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x1

    .line 84
    if-ge v0, v1, :cond_2

    .line 85
    .line 86
    monitor-exit p1

    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    iget-object v0, v0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    .line 111
    .line 112
    const-string v1, "AODManagerService"

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    const-string/jumbo v0, "onScreenTurningOn : token is null"

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    :try_start_2
    invoke-static {v0}, Lcom/samsung/android/aod/IAODCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    invoke-interface {v0}, Lcom/samsung/android/aod/IAODCallback;->onScreenTurningOn()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    :try_start_3
    const-string v2, "_onScreenTurningOn : RemoteException : "

    .line 135
    .line 136
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    monitor-exit p1

    .line 141
    goto :goto_2

    .line 142
    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    throw p0

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    throw p0

    .line 147
    :cond_6
    sget p0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 148
    .line 149
    const-string p0, "AODManagerService"

    .line 150
    .line 151
    const-string/jumbo v0, "screenTurningOn directly"

    .line 152
    .line 153
    .line 154
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    invoke-interface {p1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_7
    const-string p0, "AODManagerService"

    .line 164
    .line 165
    const-string/jumbo p1, "screenTurningOn : Do nothing, There is no Listener"

    .line 166
    .line 167
    .line 168
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    :goto_2
    return-void
.end method
