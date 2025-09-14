.class public final Lcom/android/server/chimera/SystemEventListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mFirstTriggeredAfterBooting:Z = false


# instance fields
.field public final mAppLaunchIntentListeners:Ljava/util/List;

.field public final mAppLaunchListeners:Ljava/util/List;

.field public final mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

.field public final mCameraStateListeners:Ljava/util/List;

.field public final mCarModeChangeListeners:Ljava/util/List;

.field public final mDeviceIdleListeners:Ljava/util/List;

.field public final mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

.field public final mHomeLaunchListeners:Ljava/util/List;

.field public final mLmkdEventListeners:Ljava/util/List;

.field public final mMediaScanFinishedListeners:Ljava/util/List;

.field public final mOneHourTimerListeners:Ljava/util/List;

.field public final mProcessObserver:Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;

.field public final mQuotaListeners:Ljava/util/List;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mTimeOrTimeZoneChangedListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchListeners:Ljava/util/List;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mTimeOrTimeZoneChangedListeners:Ljava/util/List;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mQuotaListeners:Ljava/util/List;

    .line 80
    .line 81
    new-instance v0, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemEventListener;)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;-><init>(Lcom/android/server/chimera/SystemEventListener;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 92
    .line 93
    iput-object p3, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 94
    .line 95
    new-instance v1, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 96
    .line 97
    invoke-direct {v1, p0, p2}, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;-><init>(Lcom/android/server/chimera/SystemEventListener;Landroid/os/Looper;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 101
    .line 102
    iput-object v1, p3, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 103
    .line 104
    new-instance p2, Landroid/content/IntentFilter;

    .line 105
    .line 106
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "android.app.action.ENTER_CAR_MODE"

    .line 110
    .line 111
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v2, "android.app.action.EXIT_CAR_MODE"

    .line 115
    .line 116
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 120
    .line 121
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 125
    .line 126
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    new-instance p2, Landroid/content/IntentFilter;

    .line 133
    .line 134
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 138
    .line 139
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string/jumbo v2, "file"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    invoke-virtual {p1, p0, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    new-instance p2, Landroid/content/IntentFilter;

    .line 153
    .line 154
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 158
    .line 159
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    new-instance p2, Landroid/content/IntentFilter;

    .line 166
    .line 167
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v2, "android.intent.action.TIME_SET"

    .line 171
    .line 172
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 176
    .line 177
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    new-instance p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;

    .line 184
    .line 185
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object p3, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 189
    .line 190
    iput-object v1, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mHandler:Landroid/os/Handler;

    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p3, v0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method


# virtual methods
.method public final addCameraDeviceStateCallback(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "camera"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mCameraDeviceStateCallback:Lcom/android/server/chimera/SystemRepository$3;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 15
    .line 16
    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eqz p2, :cond_a

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v6, "onReceive() - action: "

    .line 23
    .line 24
    .line 25
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v4, "SystemEventListener"

    .line 39
    .line 40
    invoke-static {v4, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/16 v5, 0x10

    .line 47
    .line 48
    const/4 v6, -0x1

    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    sparse-switch v7, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :sswitch_0
    const-string v7, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 59
    .line 60
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v6, v0

    .line 68
    goto :goto_0

    .line 69
    :sswitch_1
    const-string v7, "android.intent.action.TIME_SET"

    .line 70
    .line 71
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move v6, v1

    .line 79
    goto :goto_0

    .line 80
    :sswitch_2
    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    .line 81
    .line 82
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 v6, 0x5

    .line 90
    goto :goto_0

    .line 91
    :sswitch_3
    const-string v7, "android.app.action.EXIT_CAR_MODE"

    .line 92
    .line 93
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    const/4 v6, 0x4

    .line 101
    goto :goto_0

    .line 102
    :sswitch_4
    const-string v7, "android.app.action.ENTER_CAR_MODE"

    .line 103
    .line 104
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    const/4 v6, 0x3

    .line 112
    goto :goto_0

    .line 113
    :sswitch_5
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 114
    .line 115
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_6

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_6
    const/4 v6, 0x2

    .line 123
    goto :goto_0

    .line 124
    :sswitch_6
    const-string v7, "android.intent.action.SCREEN_ON"

    .line 125
    .line 126
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_7

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_7
    move v6, v2

    .line 134
    goto :goto_0

    .line 135
    :sswitch_7
    const-string v7, "android.intent.action.SCREEN_OFF"

    .line 136
    .line 137
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_8

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    const/4 v6, 0x0

    .line 145
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_0
    const-string/jumbo p2, "power"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroid/os/PowerManager;

    .line 157
    .line 158
    if-eqz p1, :cond_a

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_9

    .line 165
    .line 166
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    const-string p1, "Device idle is true ! "

    .line 172
    .line 173
    invoke-static {v4, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 177
    .line 178
    const/16 p1, 0xa

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_9
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    const-string p0, "Device idle is false ! "

    .line 190
    .line 191
    invoke-static {v4, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 196
    .line 197
    const/16 v0, 0xf

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 222
    .line 223
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :pswitch_4
    sget-boolean p1, Lcom/android/server/chimera/SystemEventListener;->mFirstTriggeredAfterBooting:Z

    .line 228
    .line 229
    if-nez p1, :cond_a

    .line 230
    .line 231
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 232
    .line 233
    const/16 p1, 0x8

    .line 234
    .line 235
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    .line 237
    .line 238
    sput-boolean v2, Lcom/android/server/chimera/SystemEventListener;->mFirstTriggeredAfterBooting:Z

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 242
    .line 243
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 248
    .line 249
    const-wide/16 p1, 0x7d0

    .line 250
    .line 251
    invoke-virtual {p0, v5, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    .line 253
    .line 254
    :cond_a
    :goto_1
    return-void

    .line 255
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_7
        -0x56ac2893 -> :sswitch_6
        -0x4418042d -> :sswitch_5
        -0x1451e31f -> :sswitch_4
        -0x13ca081d -> :sswitch_3
        0x1df32313 -> :sswitch_2
        0x1e1f7f95 -> :sswitch_1
        0x33e5d967 -> :sswitch_0
    .end sparse-switch

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public provideLaunchObserverRegistry()Lcom/android/server/wm/ActivityMetricsLaunchObserverRegistry;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final startOneHourTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "SystemEventListener"

    .line 7
    .line 8
    const-string/jumbo v1, "startOneHourTimer"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 15
    .line 16
    const/16 v1, 0xe

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 23
    .line 24
    const-wide/16 v1, 0x1

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
