.class public final Lcom/android/server/chimera/SystemEventListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mFirstTriggeredAfterBooting:Z


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

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchListeners:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mTimeOrTimeZoneChangedListeners:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mQuotaListeners:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;

    .line 83
    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemEventListener;)V

    .line 86
    new-instance v1, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 88
    invoke-direct {v1, p0}, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;-><init>(Lcom/android/server/chimera/SystemEventListener;)V

    .line 91
    iput-object v1, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchObserver:Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;

    .line 93
    iput-object p3, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 95
    new-instance v1, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 97
    invoke-direct {v1, p0, p2}, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;-><init>(Lcom/android/server/chimera/SystemEventListener;Landroid/os/Looper;)V

    .line 100
    iput-object v1, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 102
    iput-object v1, p3, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 104
    new-instance p2, Landroid/content/IntentFilter;

    .line 106
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    const-string v2, "android.app.action.ENTER_CAR_MODE"

    .line 111
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.app.action.EXIT_CAR_MODE"

    .line 116
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 121
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 126
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    new-instance p2, Landroid/content/IntentFilter;

    .line 134
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 139
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v2, "file"

    .line 145
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x2

    .line 149
    invoke-virtual {p1, p0, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 152
    new-instance p2, Landroid/content/IntentFilter;

    .line 154
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 159
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    new-instance p2, Landroid/content/IntentFilter;

    .line 167
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    const-string v2, "android.intent.action.TIME_SET"

    .line 172
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 177
    invoke-virtual {p2, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    new-instance p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;

    .line 185
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 188
    iput-object p3, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 190
    iput-object v1, p0, Lcom/android/server/chimera/SystemEventListener$LmkdEventServerThread;->mHandler:Landroid/os/Handler;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 195
    invoke-virtual {p3, v0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 198
    return-void
.end method


# virtual methods
.method public final addCameraDeviceStateCallback(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "camera"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 10
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 12
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mCameraDeviceStateCallback:Lcom/android/server/chimera/SystemRepository$3;

    .line 14
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 16
    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

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

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object v3

    .line 10
    if-nez v3, :cond_0

    .line 12
    goto/16 :goto_1

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v6, "onReceive() - action: "

    .line 25
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const-string v4, "SystemEventListener"

    .line 40
    invoke-static {v4, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    const/16 v5, 0x10

    .line 48
    const/4 v6, -0x1

    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 52
    move-result v7

    .line 53
    sparse-switch v7, :sswitch_data_0

    .line 56
    goto/16 :goto_0

    .line 58
    :sswitch_0
    const-string v7, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 60
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_1

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

    .line 71
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_2

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

    .line 82
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_3

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

    .line 93
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_4

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

    .line 104
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_5

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

    .line 115
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_6

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

    .line 126
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_7

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

    .line 137
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_8

    .line 143
    goto :goto_0

    .line 144
    :cond_8
    const/4 v6, 0x0

    .line 145
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 148
    goto :goto_1

    .line 149
    :pswitch_0
    const-string/jumbo p2, "power"

    .line 152
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroid/os/PowerManager;

    .line 158
    if-eqz p1, :cond_a

    .line 160
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_9

    .line 166
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    const-string p1, "Device idle is true ! "

    .line 173
    invoke-static {v4, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 178
    const/16 p1, 0xa

    .line 180
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    goto :goto_1

    .line 184
    :cond_9
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    const-string p0, "Device idle is false ! "

    .line 191
    invoke-static {v4, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    goto :goto_1

    .line 195
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 197
    const/16 v0, 0xf

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 206
    move-result-object p2

    .line 207
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 211
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    goto :goto_1

    .line 215
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 217
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    goto :goto_1

    .line 221
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 223
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    goto :goto_1

    .line 227
    :pswitch_4
    sget-boolean p1, Lcom/android/server/chimera/SystemEventListener;->mFirstTriggeredAfterBooting:Z

    .line 229
    if-nez p1, :cond_a

    .line 231
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 233
    const/16 p1, 0x8

    .line 235
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    sput-boolean v2, Lcom/android/server/chimera/SystemEventListener;->mFirstTriggeredAfterBooting:Z

    .line 240
    goto :goto_1

    .line 241
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 243
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    goto :goto_1

    .line 247
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 249
    const-wide/16 p1, 0x7d0

    .line 251
    invoke-virtual {p0, v5, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

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

    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final startOneHourTimer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "SystemEventListener"

    .line 8
    const-string/jumbo v1, "startOneHourTimer"

    .line 11
    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 16
    const/16 v1, 0xe

    .line 18
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 21
    move-result-object v0

    .line 22
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 24
    const-wide/16 v1, 0x1

    .line 26
    invoke-static {v1, v2}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 37
    return-void
.end method
