.class public final synthetic Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/AppStandbyController;

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
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/AppStandbyController;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    const v3, 0x1c0200

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v5, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v6, "android.intent.action.MAIN"

    .line 28
    .line 29
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v6, "android.intent.category.LAUNCHER"

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    invoke-virtual {v6, v5, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v5, Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 64
    .line 65
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 66
    .line 67
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    move v6, v4

    .line 78
    :goto_1
    if-ge v6, v3, :cond_3

    .line 79
    .line 80
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 85
    .line 86
    if-nez v7, :cond_1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    xor-int/lit8 v8, v8, 0x1

    .line 96
    .line 97
    invoke-virtual {p0, v7, v8}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_2

    .line 102
    .line 103
    invoke-static {}, Lcom/android/server/usage/Flags;->avoidIdleCheck()Z

    .line 104
    .line 105
    .line 106
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 107
    .line 108
    const/16 v9, 0xb

    .line 109
    .line 110
    const/4 v10, -0x1

    .line 111
    invoke-virtual {v8, v9, v4, v10, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 116
    .line 117
    .line 118
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v5, "Loaded headless system app cache in "

    .line 128
    .line 129
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sub-long/2addr v2, v0

    .line 133
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, " ms: appIdleEnabled="

    .line 137
    .line 138
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 142
    .line 143
    const-string v0, "AppStandbyController"

    .line 144
    .line 145
    invoke-static {v0, v4, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 150
    .line 151
    iget v1, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mBootPhase:I

    .line 152
    .line 153
    const/16 v2, 0x1f4

    .line 154
    .line 155
    if-ge v1, v2, :cond_4

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_4
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 159
    .line 160
    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelistExceptIdle()[Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 165
    .line 166
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 168
    .line 169
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 170
    .line 171
    .line 172
    array-length v3, v1

    .line 173
    const/4 v4, 0x0

    .line 174
    :goto_3
    if-ge v4, v3, :cond_5

    .line 175
    .line 176
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController$Injector;->mPowerWhitelistedApps:Landroid/util/ArraySet;

    .line 177
    .line 178
    aget-object v6, v1, v4

    .line 179
    .line 180
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    add-int/lit8 v4, v4, 0x1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    goto :goto_4

    .line 188
    :cond_5
    monitor-exit v2

    .line 189
    goto :goto_5

    .line 190
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "AppStandbyController"

    .line 194
    .line 195
    const-string v2, "Failed to get power whitelist"

    .line 196
    .line 197
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .line 199
    .line 200
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 201
    .line 202
    .line 203
    :goto_6
    return-void

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
