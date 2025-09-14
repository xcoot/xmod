.class public final Lcom/android/server/am/FreecessTrigger$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/FreecessTrigger$2;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget p0, p0, Lcom/android/server/am/FreecessTrigger$2;->$r8$classId:I

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const-string p2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 21
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 23
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_3

    .line 29
    :cond_0
    const-string/jumbo p0, "power"

    .line 32
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/os/PowerManager;

    .line 38
    if-eqz p0, :cond_3

    .line 40
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 46
    invoke-virtual {p0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v2

    .line 54
    :cond_2
    :goto_0
    const-string p0, "FreecessTrigger"

    .line 56
    const-string/jumbo p1, "doze state changed : "

    .line 59
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 64
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    .line 70
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_3

    .line 76
    if-nez v1, :cond_3

    .line 78
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 80
    const-string p1, "DeviceIdleOFF"

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p0

    .line 88
    throw p1

    .line 89
    :cond_3
    :goto_1
    return-void

    .line 90
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    if-nez p0, :cond_4

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const-string/jumbo p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 106
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 108
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 110
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 112
    if-eqz p1, :cond_5

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 117
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(IZ)V

    .line 120
    goto :goto_2

    .line 121
    :cond_6
    const-string/jumbo p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_7

    .line 130
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 132
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 134
    const-string p1, "FRZ"

    .line 136
    const-string p2, "OFF by SmartSwitch-Ongoing"

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 143
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 145
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 147
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    .line 152
    goto :goto_2

    .line 153
    :cond_7
    const-string/jumbo p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_8

    .line 162
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 164
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 166
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 168
    if-nez p1, :cond_8

    .line 170
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 172
    const/16 p2, 0xb

    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p1, p2, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 178
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(IZ)V

    .line 183
    :cond_8
    :goto_2
    return-void

    .line 184
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 187
    move-result-object p0

    .line 188
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 190
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_b

    .line 196
    const-string p0, "android.intent.extra.REPLACING"

    .line 198
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 201
    move-result p0

    .line 202
    if-nez p0, :cond_b

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 207
    move-result-object p0

    .line 208
    if-eqz p0, :cond_b

    .line 210
    const-string p1, "android.intent.extra.UID"

    .line 212
    const/4 v2, -0x1

    .line 213
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 216
    move-result p1

    .line 217
    if-eq p1, v2, :cond_b

    .line 219
    sget-object p2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 221
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 225
    iget-object v2, p2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 227
    if-nez v2, :cond_9

    .line 229
    goto :goto_3

    .line 230
    :cond_9
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 232
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 234
    invoke-virtual {v2, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 237
    move-result-object v2

    .line 238
    if-nez v2, :cond_a

    .line 240
    goto :goto_3

    .line 241
    :cond_a
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 243
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 246
    invoke-virtual {p2, v0, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 249
    const/16 v0, 0x1c

    .line 251
    invoke-virtual {p2, v0, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 254
    const/4 v0, 0x3

    .line 255
    invoke-virtual {p2, v0, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 258
    const/4 v0, 0x4

    .line 259
    invoke-virtual {p2, v0, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 262
    new-instance v0, Landroid/os/Bundle;

    .line 264
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    const-string/jumbo v1, "packageName"

    .line 270
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo p0, "uid"

    .line 276
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object p0, p2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 281
    const/16 p1, 0x10

    .line 283
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 290
    iget-object p1, p2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 292
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    :cond_b
    :goto_3
    return-void

    .line 296
    nop

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
