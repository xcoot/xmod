.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    iput-boolean p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$1:Z

    .line 10
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    monitor-enter v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz p0, :cond_7

    .line 19
    :try_start_0
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 21
    if-nez v4, :cond_1

    .line 23
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNetworkLoggingAffectedUser()I

    .line 26
    move-result v4

    .line 27
    new-instance v5, Lcom/android/server/devicepolicy/NetworkLogger;

    .line 29
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 31
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 37
    move-result-object v6

    .line 38
    if-nez v4, :cond_0

    .line 40
    const/4 v4, -0x1

    .line 41
    :cond_0
    invoke-direct {v5, v0, v6, v4}, Lcom/android/server/devicepolicy/NetworkLogger;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/pm/PackageManagerInternal;I)V

    .line 44
    iput-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto/16 :goto_4

    .line 50
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 52
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/NetworkLogger;->startNetworkLogging()Z

    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_2

    .line 58
    iput-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 60
    const-string v2, "DevicePolicyManager"

    .line 62
    const-string v4, "Network logging could not be started due to the logging service not being available yet."

    .line 64
    invoke-static {v2, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybePauseDeviceWideLoggingLocked()V

    .line 70
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->ensureLocked()V

    .line 73
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_9

    .line 79
    iget-boolean v4, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 81
    if-nez v4, :cond_3

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    iget v4, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 86
    const/4 v5, 0x2

    .line 87
    if-lt v4, v5, :cond_4

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    move-result-wide v6

    .line 94
    iget-wide v8, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 96
    sub-long v8, v6, v8

    .line 98
    sget-wide v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->MS_PER_DAY:J

    .line 100
    cmp-long v4, v8, v10

    .line 102
    if-gez v4, :cond_5

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    iget v4, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 107
    const/4 v8, 0x1

    .line 108
    add-int/2addr v4, v8

    .line 109
    iput v4, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 111
    if-lt v4, v5, :cond_6

    .line 113
    const-wide/16 v4, 0x0

    .line 115
    iput-wide v4, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 117
    goto :goto_1

    .line 118
    :cond_6
    iput-wide v6, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 120
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 127
    move-result v2

    .line 128
    invoke-virtual {v0, v2, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 131
    move v3, v8

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 135
    if-eqz v4, :cond_8

    .line 137
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/NetworkLogger;->stopNetworkLogging()Z

    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_8

    .line 143
    const-string v4, "DevicePolicyManager"

    .line 145
    const-string v5, "Network logging could not be stopped due to the logging service not being available yet."

    .line 147
    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_8
    iput-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 152
    :cond_9
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz p0, :cond_a

    .line 155
    if-eqz v3, :cond_b

    .line 157
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;

    .line 161
    const/4 v2, 0x1

    .line 162
    invoke-direct {v1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 165
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    goto :goto_3

    .line 169
    :cond_a
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;

    .line 173
    const/4 v2, 0x2

    .line 174
    invoke-direct {v1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 177
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_b
    :goto_3
    return-void

    .line 181
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw p0

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 185
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$1:Z

    .line 187
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 189
    const-string v1, "auto_time"

    .line 191
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->settingsGlobalPutInt(Ljava/lang/String;I)V

    .line 194
    return-void

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 197
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$1:Z

    .line 199
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 201
    const-string/jumbo v1, "wifi_device_owner_configs_lockdown"

    .line 204
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->settingsGlobalPutInt(Ljava/lang/String;I)V

    .line 207
    return-void

    .line 208
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 210
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda3;->f$1:Z

    .line 212
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 214
    const-string v1, "auto_time_zone"

    .line 216
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->settingsGlobalPutInt(Ljava/lang/String;I)V

    .line 219
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
