.class public final Lcom/android/server/battery/batteryInfo/QrData;
.super Lcom/android/server/battery/batteryInfo/BaseData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsQrEquals:[Z


# direct methods
.method public constructor <init>(II[Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 6
    iput p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 8
    iput-object p3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 10
    new-array p2, p2, [Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 14
    const/4 p2, 0x1

    .line 15
    const-string p3, "/efs/FactoryApp/HwParamBattQR"

    .line 17
    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "/sys/class/power_supply/sec_auth/qr_code"

    .line 27
    if-ne p1, p2, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x3

    .line 41
    const-string v2, "/efs/FactoryApp/HwParamBattQR_2nd"

    .line 43
    if-ne p1, v1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 62
    const-string p3, "/sys/class/power_supply/sec_auth_2nd/qr_code"

    .line 64
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v0, 0x2

    .line 69
    const-string v1, "/sys/class/power_supply/sbp-fg/qr_code"

    .line 71
    if-ne p1, v0, :cond_3

    .line 73
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/4 v0, 0x4

    .line 85
    if-ne p1, v0, :cond_4

    .line 87
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 104
    const-string p3, "/sys/class/power_supply/sbp-fg-2/qr_code"

    .line 106
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 111
    if-eqz p1, :cond_a

    .line 113
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 115
    new-array p1, p1, [Z

    .line 117
    const/4 p3, 0x0

    .line 118
    move v0, p3

    .line 119
    :goto_1
    iget v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 121
    if-ge v0, v1, :cond_7

    .line 123
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 125
    aget-boolean v1, v1, v0

    .line 127
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 129
    if-nez v1, :cond_5

    .line 131
    const-string v1, "[checkQrEquals]Authentification false => skip_"

    .line 133
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/String;

    .line 145
    invoke-static {v1, p3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Ljava/lang/String;

    .line 157
    invoke-static {v3, p3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_6

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_6

    .line 173
    aput-boolean p2, p1, v0

    .line 175
    goto :goto_2

    .line 176
    :cond_6
    aput-boolean p3, p1, v0

    .line 178
    :goto_2
    const-string v4, "[checkQrEquals]efsQr:"

    .line 180
    const-string v5, " ,authQr:"

    .line 182
    const-string v6, " =>Equal:"

    .line 184
    invoke-static {v4, v1, v5, v3, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    move-result-object v1

    .line 188
    aget-boolean v3, p1, v0

    .line 190
    invoke-static {v2, v1, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 193
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 195
    goto :goto_1

    .line 196
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo v0, "isQrEquals:"

    .line 201
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p2

    .line 215
    const-string v0, "/data/log/battery_service/battery_service_main_history"

    .line 217
    const-string v1, "Check QR Equals"

    .line 219
    invoke-static {v0, v1, p2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    .line 224
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 226
    const-string v0, "[syncAuthAndEfs]"

    .line 228
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move v0, p3

    .line 232
    :goto_4
    iget v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 234
    if-ge v0, v1, :cond_b

    .line 236
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 238
    aget-boolean v1, v1, v0

    .line 240
    if-nez v1, :cond_8

    .line 242
    const-string v1, "[syncAuthAndEfs]Authentification false => skip_"

    .line 244
    invoke-static {v0, v1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    goto :goto_5

    .line 248
    :cond_8
    aget-boolean v1, p1, v0

    .line 250
    if-nez v1, :cond_9

    .line 252
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Ljava/lang/String;

    .line 260
    invoke-static {v1, p3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 264
    const-string v2, "[syncAuthAndEfs]sync efs QR with auth"

    .line 266
    invoke-static {p2, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 271
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Ljava/lang/String;

    .line 277
    invoke-static {v2, v1}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 282
    goto :goto_4

    .line 283
    :cond_a
    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/QrData;->mIsQrEquals:[Z

    .line 286
    :cond_b
    const/16 p1, 0x3e8

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    .line 294
    move-result-object p1

    .line 295
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 297
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    .line 300
    return-void
.end method
