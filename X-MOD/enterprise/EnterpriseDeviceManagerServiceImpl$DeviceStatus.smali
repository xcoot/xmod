.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isKCClientActive:I

.field public isKSPActive:I

.field public isUserTypeAppSeparationExists:I

.field public isUserTypeSecureFolderExists:I

.field public mAerSupported:I

.field public mDAs:Landroid/util/ArrayMap;

.field public mDAsBundle:[Landroid/os/Bundle;

.field public mDPMRoleHolders:Landroid/util/ArrayMap;

.field public mDPMRoleHoldersBundle:[Landroid/os/Bundle;

.field public mDelegatedAdminContainerType:I

.field public mDelegatedAdmins:Landroid/util/ArrayMap;

.field public mDelegatedAdminsBundle:[Landroid/os/Bundle;

.field public mDeviceStatusBundle:Landroid/os/Bundle;

.field public mInternalKnoxAdminCount:I

.field public mKGClientState:Ljava/lang/String;

.field public mKnoxDACount:I

.field public mKnoxDAs:Landroid/util/ArrayMap;

.field public mKnoxDAsBundle:[Landroid/os/Bundle;

.field public mKnoxInternalAdmins:Landroid/util/ArrayMap;

.field public mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

.field public mOwnerPackageName:Ljava/lang/String;

.field public mOwnerType:I

.field public mUserCount:I


# direct methods
.method public static logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;

    .line 3
    const-string v1, "KNOX_CONTAINER"

    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    instance-of v3, v2, Ljava/lang/Integer;

    .line 35
    if-eqz v3, :cond_1

    .line 37
    check-cast v2, Ljava/lang/Integer;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    .line 49
    if-eqz v3, :cond_0

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V

    .line 60
    return-void
.end method


# virtual methods
.method public final logData()V
    .locals 5

    .line 1
    const-string v0, "DEVICE_STATUS"

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 5
    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 12
    array-length v3, v2

    .line 13
    const-string v4, "DEVICE_STATUS_ADMIN_INFO"

    .line 15
    if-ge v1, v3, :cond_0

    .line 17
    aget-object v2, v2, v1

    .line 19
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v0

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 28
    array-length v3, v2

    .line 29
    if-ge v1, v3, :cond_1

    .line 31
    aget-object v2, v2, v1

    .line 33
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v1, v0

    .line 40
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;

    .line 42
    array-length v3, v2

    .line 43
    if-ge v1, v3, :cond_2

    .line 45
    aget-object v2, v2, v1

    .line 47
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v1, v0

    .line 54
    :goto_3
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;

    .line 56
    array-length v3, v2

    .line 57
    if-ge v1, v3, :cond_3

    .line 59
    aget-object v2, v2, v1

    .line 61
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

    .line 69
    array-length v2, v1

    .line 70
    if-ge v0, v2, :cond_4

    .line 72
    aget-object v1, v1, v0

    .line 74
    invoke-static {v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 79
    goto :goto_4

    .line 80
    :cond_4
    return-void
.end method

.method public final writeToBundle()V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "OwnerType: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " and its packageName: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 24
    if-nez v1, :cond_0

    .line 26
    const-string v1, ""

    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string v1, "EDM_KnoxAnalytics"

    .line 37
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v0, v2, :cond_1

    .line 45
    const-string v0, "SecureFolder exists"

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "SecureFolder does not exist"

    .line 50
    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 55
    if-ne v0, v2, :cond_2

    .line 57
    const-string v0, "SeparatedApps exists"

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v0, "SeparatedApps does not exist"

    .line 62
    :goto_1
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "Knox licensed admin count: "

    .line 69
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "Knox internal admin count: "

    .line 92
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/os/Bundle;

    .line 113
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 118
    const-string/jumbo v1, "ucnt"

    .line 121
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mUserCount:I

    .line 123
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 128
    const-string v1, "KLAcnt"

    .line 130
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 132
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 137
    const-string/jumbo v1, "iklacnt"

    .line 140
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 142
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 147
    const-string/jumbo v1, "ot"

    .line 150
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 152
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 157
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 159
    const-string/jumbo v3, "dapn"

    .line 162
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 167
    const-string/jumbo v1, "sa"

    .line 170
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 172
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 177
    const-string/jumbo v1, "sf"

    .line 180
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 182
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 187
    const-string/jumbo v1, "kg"

    .line 190
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 197
    const-string/jumbo v1, "kc"

    .line 200
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKCClientActive:I

    .line 202
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 207
    const-string/jumbo v1, "ksp"

    .line 210
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKSPActive:I

    .line 212
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 217
    const-string v1, "aer"

    .line 219
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mAerSupported:I

    .line 221
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 226
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 229
    move-result v0

    .line 230
    new-array v0, v0, [Landroid/os/Bundle;

    .line 232
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 234
    const/4 v0, 0x0

    .line 235
    move v1, v0

    .line 236
    :goto_2
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 238
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 241
    move-result v4

    .line 242
    const-string v5, "at"

    .line 244
    const-string/jumbo v6, "cTp"

    .line 247
    if-ge v1, v4, :cond_5

    .line 249
    new-instance v4, Landroid/os/Bundle;

    .line 251
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 254
    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminContainerType:I

    .line 256
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const/4 v6, 0x3

    .line 260
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 265
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Ljava/lang/String;

    .line 271
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    .line 276
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 279
    move-result-object v5

    .line 280
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 283
    move-result-object v5

    .line 284
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_3

    .line 290
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    move-result-object v6

    .line 294
    check-cast v6, Ljava/lang/String;

    .line 296
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    goto :goto_3

    .line 300
    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 302
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 305
    move-result-object v5

    .line 306
    check-cast v5, Ljava/util/List;

    .line 308
    move v6, v0

    .line 309
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 312
    move-result v7

    .line 313
    if-ge v6, v7, :cond_4

    .line 315
    sget-object v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    .line 317
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 320
    move-result-object v8

    .line 321
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    move-result-object v7

    .line 325
    check-cast v7, Ljava/lang/String;

    .line 327
    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    add-int/lit8 v6, v6, 0x1

    .line 332
    goto :goto_4

    .line 333
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 335
    aput-object v4, v5, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    .line 339
    goto :goto_2

    .line 340
    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 342
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 345
    move-result v1

    .line 346
    new-array v1, v1, [Landroid/os/Bundle;

    .line 348
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 350
    move v1, v0

    .line 351
    :goto_5
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 353
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 356
    move-result v4

    .line 357
    if-ge v1, v4, :cond_6

    .line 359
    new-instance v4, Landroid/os/Bundle;

    .line 361
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 364
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 366
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 369
    move-result-object v7

    .line 370
    check-cast v7, Ljava/lang/Integer;

    .line 372
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 375
    move-result v7

    .line 376
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const/4 v7, 0x2

    .line 380
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 385
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 388
    move-result-object v7

    .line 389
    check-cast v7, Ljava/lang/String;

    .line 391
    invoke-virtual {v4, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 396
    aput-object v4, v7, v1

    .line 398
    add-int/lit8 v1, v1, 0x1

    .line 400
    goto :goto_5

    .line 401
    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 403
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 406
    move-result-object v1

    .line 407
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 410
    move-result-object v1

    .line 411
    move v4, v0

    .line 412
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    move-result v7

    .line 416
    if-eqz v7, :cond_7

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    move-result-object v7

    .line 422
    check-cast v7, Ljava/util/Map$Entry;

    .line 424
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 427
    move-result-object v7

    .line 428
    check-cast v7, Ljava/util/List;

    .line 430
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 433
    move-result v7

    .line 434
    add-int/2addr v4, v7

    .line 435
    goto :goto_6

    .line 436
    :cond_7
    new-array v1, v4, [Landroid/os/Bundle;

    .line 438
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;

    .line 440
    move v1, v0

    .line 441
    move v4, v1

    .line 442
    :goto_7
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 444
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 447
    move-result v7

    .line 448
    if-ge v1, v7, :cond_9

    .line 450
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 452
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 455
    move-result-object v7

    .line 456
    check-cast v7, Ljava/lang/Integer;

    .line 458
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 461
    move-result v7

    .line 462
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 464
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 467
    move-result-object v8

    .line 468
    check-cast v8, Ljava/util/List;

    .line 470
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 473
    move-result-object v8

    .line 474
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    move-result v9

    .line 478
    if-eqz v9, :cond_8

    .line 480
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 483
    move-result-object v9

    .line 484
    check-cast v9, Ljava/lang/String;

    .line 486
    new-instance v10, Landroid/os/Bundle;

    .line 488
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 491
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    invoke-virtual {v10, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 502
    add-int/lit8 v11, v4, 0x1

    .line 504
    :try_start_1
    aput-object v10, v9, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    move v4, v11

    .line 507
    goto :goto_8

    .line 508
    :catch_0
    move-exception v4

    .line 509
    goto :goto_9

    .line 510
    :catch_1
    move-exception v7

    .line 511
    move v11, v4

    .line 512
    move-object v4, v7

    .line 513
    :goto_9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    move v4, v11

    .line 517
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 519
    goto :goto_7

    .line 520
    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 522
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 525
    move-result-object v1

    .line 526
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 529
    move-result-object v1

    .line 530
    move v4, v0

    .line 531
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 534
    move-result v7

    .line 535
    if-eqz v7, :cond_a

    .line 537
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 540
    move-result-object v7

    .line 541
    check-cast v7, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 546
    move-result-object v7

    .line 547
    check-cast v7, Ljava/util/List;

    .line 549
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 552
    move-result v7

    .line 553
    add-int/2addr v4, v7

    .line 554
    goto :goto_a

    .line 555
    :cond_a
    new-array v1, v4, [Landroid/os/Bundle;

    .line 557
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;

    .line 559
    move v1, v0

    .line 560
    move v4, v1

    .line 561
    :goto_b
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 563
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 566
    move-result v7

    .line 567
    if-ge v1, v7, :cond_c

    .line 569
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 571
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 574
    move-result-object v7

    .line 575
    check-cast v7, Ljava/lang/Integer;

    .line 577
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 580
    move-result v7

    .line 581
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 583
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 586
    move-result-object v8

    .line 587
    check-cast v8, Ljava/util/List;

    .line 589
    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 592
    move-result-object v8

    .line 593
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 596
    move-result v9

    .line 597
    if-eqz v9, :cond_b

    .line 599
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 602
    move-result-object v9

    .line 603
    check-cast v9, Ljava/lang/String;

    .line 605
    new-instance v10, Landroid/os/Bundle;

    .line 607
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 610
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    const/4 v11, 0x4

    .line 614
    invoke-virtual {v10, v5, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 622
    add-int/lit8 v11, v4, 0x1

    .line 624
    :try_start_3
    aput-object v10, v9, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 626
    move v4, v11

    .line 627
    goto :goto_c

    .line 628
    :catch_2
    move-exception v4

    .line 629
    goto :goto_d

    .line 630
    :catch_3
    move-exception v7

    .line 631
    move v11, v4

    .line 632
    move-object v4, v7

    .line 633
    :goto_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    move v4, v11

    .line 637
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 639
    goto :goto_b

    .line 640
    :cond_c
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 642
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 645
    move-result-object v1

    .line 646
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 649
    move-result-object v1

    .line 650
    move v4, v0

    .line 651
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 654
    move-result v7

    .line 655
    if-eqz v7, :cond_d

    .line 657
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    move-result-object v7

    .line 661
    check-cast v7, Ljava/util/Map$Entry;

    .line 663
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 666
    move-result-object v7

    .line 667
    check-cast v7, Ljava/util/List;

    .line 669
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 672
    move-result v7

    .line 673
    add-int/2addr v4, v7

    .line 674
    goto :goto_e

    .line 675
    :cond_d
    new-array v1, v4, [Landroid/os/Bundle;

    .line 677
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

    .line 679
    move v1, v0

    .line 680
    move v4, v1

    .line 681
    :goto_f
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 683
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 686
    move-result v7

    .line 687
    if-ge v1, v7, :cond_11

    .line 689
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 691
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 694
    move-result-object v7

    .line 695
    check-cast v7, Ljava/lang/Integer;

    .line 697
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 700
    move-result v7

    .line 701
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 703
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 706
    move-result-object v8

    .line 707
    check-cast v8, Ljava/util/List;

    .line 709
    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 712
    move-result-object v8

    .line 713
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 716
    move-result v9

    .line 717
    if-eqz v9, :cond_10

    .line 719
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 722
    move-result-object v9

    .line 723
    check-cast v9, Ljava/lang/String;

    .line 725
    new-instance v10, Landroid/os/Bundle;

    .line 727
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 730
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
    invoke-virtual {v10, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    const-string v11, ";"

    .line 738
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 741
    move-result-object v9

    .line 742
    aget-object v11, v9, v0

    .line 744
    if-eqz v11, :cond_e

    .line 746
    invoke-virtual {v10, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    goto :goto_11

    .line 750
    :catch_4
    move-exception v7

    .line 751
    goto :goto_12

    .line 752
    :cond_e
    :goto_11
    aget-object v9, v9, v2

    .line 754
    if-eqz v9, :cond_f

    .line 756
    const-string/jumbo v11, "state"

    .line 759
    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_f
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 764
    add-int/lit8 v11, v4, 0x1

    .line 766
    :try_start_5
    aput-object v10, v9, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 768
    move v4, v11

    .line 769
    goto :goto_10

    .line 770
    :catch_5
    move-exception v7

    .line 771
    move v4, v11

    .line 772
    :goto_12
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 777
    goto :goto_f

    .line 778
    :cond_11
    return-void
.end method
