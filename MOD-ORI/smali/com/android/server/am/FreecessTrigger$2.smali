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

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
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

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    :cond_0
    const-string/jumbo p0, "power"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/os/PowerManager;

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v2

    .line 54
    :cond_2
    :goto_0
    const-string p0, "FreecessTrigger"

    .line 55
    .line 56
    const-string/jumbo p1, "doze state changed : "

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 63
    .line 64
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 65
    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_3

    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 79
    .line 80
    const-string p1, "DeviceIdleOFF"

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessHandler;->sendUnfreezeActivePackagesMsg(Ljava/lang/String;)V

    .line 83
    .line 84
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

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-nez p0, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const-string/jumbo p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 107
    .line 108
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 109
    .line 110
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 111
    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 116
    .line 117
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(IZ)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    const-string/jumbo p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_7

    .line 129
    .line 130
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 131
    .line 132
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 133
    .line 134
    const-string p1, "FRZ"

    .line 135
    .line 136
    const-string p2, "OFF by SmartSwitch-Ongoing"

    .line 137
    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 142
    .line 143
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 144
    .line 145
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 146
    .line 147
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    const-string/jumbo p1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_8

    .line 161
    .line 162
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 163
    .line 164
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 165
    .line 166
    iget-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 167
    .line 168
    if-nez p1, :cond_8

    .line 169
    .line 170
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 171
    .line 172
    const/16 p2, 0xb

    .line 173
    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p1, p2, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 179
    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(IZ)V

    .line 181
    .line 182
    .line 183
    :cond_8
    :goto_2
    return-void

    .line 184
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 189
    .line 190
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-eqz p0, :cond_b

    .line 195
    .line 196
    const-string p0, "android.intent.extra.REPLACING"

    .line 197
    .line 198
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-nez p0, :cond_b

    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    if-eqz p0, :cond_b

    .line 209
    .line 210
    const-string p1, "android.intent.extra.UID"

    .line 211
    .line 212
    const/4 v2, -0x1

    .line 213
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eq p1, v2, :cond_b

    .line 218
    .line 219
    sget-object p2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 220
    .line 221
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    iget-object v2, p2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 226
    .line 227
    if-nez v2, :cond_9

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 231
    .line 232
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 233
    .line 234
    invoke-virtual {v2, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    if-nez v2, :cond_a

    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_a
    iget-object v2, v2, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2, v0, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    const/16 v0, 0x1c

    .line 250
    .line 251
    invoke-virtual {p2, v0, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    const/4 v0, 0x3

    .line 255
    invoke-virtual {p2, v0, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    const/4 v0, 0x4

    .line 259
    invoke-virtual {p2, v0, v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    new-instance v0, Landroid/os/Bundle;

    .line 263
    .line 264
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string/jumbo v1, "packageName"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const-string/jumbo p0, "uid"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    iget-object p0, p2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 280
    .line 281
    const/16 p1, 0x10

    .line 282
    .line 283
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p2, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 291
    .line 292
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    .line 294
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
