.class public final Lcom/android/server/chimera/SystemRepository$3;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .line 1
    const-string p1, "android.system"

    .line 2
    .line 3
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_9

    .line 8
    .line 9
    const-string/jumbo p1, "com.sec.android.app.tinym"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    sget-boolean p1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 21
    .line 22
    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const-string/jumbo p2, "com.sec.android.app.camera"

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    if-nez p3, :cond_1

    .line 50
    .line 51
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 52
    .line 53
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v2, -0x1

    .line 57
    const/16 v3, 0x7d0

    .line 58
    .line 59
    invoke-virtual {p1, v2, v3, v1}, Lcom/android/server/am/FreecessController;->enterOLAF(IILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-ne p3, v0, :cond_2

    .line 64
    .line 65
    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 66
    .line 67
    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 77
    .line 78
    monitor-enter p1

    .line 79
    :try_start_0
    iget-object v2, p1, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 80
    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    new-instance v2, Lcom/android/server/chimera/SettingRepository;

    .line 84
    .line 85
    invoke-direct {v2, v1}, Lcom/android/server/chimera/SettingRepository;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 86
    .line 87
    .line 88
    iput-object v2, p1, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_4

    .line 93
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    monitor-exit p1

    .line 96
    iget-boolean p1, v1, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_6

    .line 113
    .line 114
    const-wide/16 p1, 0x3e8

    .line 115
    .line 116
    if-ne p3, v1, :cond_5

    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 121
    .line 122
    const/16 v2, 0xc

    .line 123
    .line 124
    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    if-ne p3, v0, :cond_6

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mSystemEventListenerHandler:Landroid/os/Handler;

    .line 133
    .line 134
    const/16 p3, 0xd

    .line 135
    .line 136
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_6
    :goto_2
    if-ne p3, v1, :cond_8

    .line 141
    .line 142
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 143
    .line 144
    iget-object p2, p1, Lcom/android/server/chimera/SystemRepository;->mLastForegroundApp:Landroid/util/Pair;

    .line 145
    .line 146
    if-eqz p2, :cond_8

    .line 147
    .line 148
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 149
    .line 150
    invoke-virtual {p1, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->contains(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mLastForegroundApp:Landroid/util/Pair;

    .line 160
    .line 161
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p1, Ljava/lang/CharSequence;

    .line 164
    .line 165
    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide p1

    .line 175
    iget-object p3, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 176
    .line 177
    iget-object p3, p3, Lcom/android/server/chimera/SystemRepository;->mLastForegroundApp:Landroid/util/Pair;

    .line 178
    .line 179
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p3, Ljava/lang/Long;

    .line 182
    .line 183
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 184
    .line 185
    .line 186
    move-result-wide v0

    .line 187
    sub-long/2addr p1, v0

    .line 188
    const-wide/16 v0, 0xbb8

    .line 189
    .line 190
    cmp-long p1, p1, v0

    .line 191
    .line 192
    if-gez p1, :cond_8

    .line 193
    .line 194
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository$3;->this$0:Lcom/android/server/chimera/SystemRepository;

    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 197
    .line 198
    invoke-virtual {p0, p4}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->update(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    :goto_3
    return-void

    .line 202
    :goto_4
    monitor-exit p1

    .line 203
    throw p0

    .line 204
    :cond_9
    :goto_5
    return-void
.end method
