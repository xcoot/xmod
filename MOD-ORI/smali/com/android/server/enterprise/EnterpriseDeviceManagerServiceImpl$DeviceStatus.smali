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

    .line 2
    .line 3
    const-string v1, "KNOX_CONTAINER"

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    instance-of v3, v2, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final logData()V
    .locals 5

    .line 1
    const-string v0, "DEVICE_STATUS"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    const-string v4, "DEVICE_STATUS_ADMIN_INFO"

    .line 14
    .line 15
    if-ge v1, v3, :cond_0

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v0

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    if-ge v1, v3, :cond_1

    .line 30
    .line 31
    aget-object v2, v2, v1

    .line 32
    .line 33
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v1, v0

    .line 40
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;

    .line 41
    .line 42
    array-length v3, v2

    .line 43
    if-ge v1, v3, :cond_2

    .line 44
    .line 45
    aget-object v2, v2, v1

    .line 46
    .line 47
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v1, v0

    .line 54
    :goto_3
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;

    .line 55
    .line 56
    array-length v3, v2

    .line 57
    if-ge v1, v3, :cond_3

    .line 58
    .line 59
    aget-object v2, v2, v1

    .line 60
    .line 61
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

    .line 68
    .line 69
    array-length v2, v1

    .line 70
    if-ge v0, v2, :cond_4

    .line 71
    .line 72
    aget-object v1, v1, v0

    .line 73
    .line 74
    invoke-static {v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
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

    .line 2
    .line 3
    const-string v1, "OwnerType: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " and its packageName: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "EDM_KnoxAnalytics"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v0, v2, :cond_1

    .line 44
    .line 45
    const-string v0, "SecureFolder exists"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "SecureFolder does not exist"

    .line 49
    .line 50
    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 54
    .line 55
    if-ne v0, v2, :cond_2

    .line 56
    .line 57
    const-string v0, "SeparatedApps exists"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v0, "SeparatedApps does not exist"

    .line 61
    .line 62
    :goto_1
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "Knox licensed admin count: "

    .line 68
    .line 69
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "Knox internal admin count: "

    .line 91
    .line 92
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 117
    .line 118
    const-string/jumbo v1, "ucnt"

    .line 119
    .line 120
    .line 121
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mUserCount:I

    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 127
    .line 128
    const-string v1, "KLAcnt"

    .line 129
    .line 130
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 131
    .line 132
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 136
    .line 137
    const-string/jumbo v1, "iklacnt"

    .line 138
    .line 139
    .line 140
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 141
    .line 142
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 146
    .line 147
    const-string/jumbo v1, "ot"

    .line 148
    .line 149
    .line 150
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 151
    .line 152
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 158
    .line 159
    const-string/jumbo v3, "dapn"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 166
    .line 167
    const-string/jumbo v1, "sa"

    .line 168
    .line 169
    .line 170
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 171
    .line 172
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 176
    .line 177
    const-string/jumbo v1, "sf"

    .line 178
    .line 179
    .line 180
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 181
    .line 182
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 186
    .line 187
    const-string/jumbo v1, "kg"

    .line 188
    .line 189
    .line 190
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 196
    .line 197
    const-string/jumbo v1, "kc"

    .line 198
    .line 199
    .line 200
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKCClientActive:I

    .line 201
    .line 202
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 206
    .line 207
    const-string/jumbo v1, "ksp"

    .line 208
    .line 209
    .line 210
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKSPActive:I

    .line 211
    .line 212
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 216
    .line 217
    const-string v1, "aer"

    .line 218
    .line 219
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mAerSupported:I

    .line 220
    .line 221
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    new-array v0, v0, [Landroid/os/Bundle;

    .line 231
    .line 232
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 233
    .line 234
    const/4 v0, 0x0

    .line 235
    move v1, v0

    .line 236
    :goto_2
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 237
    .line 238
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    const-string v5, "at"

    .line 243
    .line 244
    const-string/jumbo v6, "cTp"

    .line 245
    .line 246
    .line 247
    if-ge v1, v4, :cond_5

    .line 248
    .line 249
    new-instance v4, Landroid/os/Bundle;

    .line 250
    .line 251
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 252
    .line 253
    .line 254
    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminContainerType:I

    .line 255
    .line 256
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    .line 258
    .line 259
    const/4 v6, 0x3

    .line 260
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 264
    .line 265
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    check-cast v5, Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_3

    .line 289
    .line 290
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    check-cast v6, Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 301
    .line 302
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    check-cast v5, Ljava/util/List;

    .line 307
    .line 308
    move v6, v0

    .line 309
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    if-ge v6, v7, :cond_4

    .line 314
    .line 315
    sget-object v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    .line 316
    .line 317
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    check-cast v7, Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    add-int/lit8 v6, v6, 0x1

    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 334
    .line 335
    aput-object v4, v5, v1

    .line 336
    .line 337
    add-int/lit8 v1, v1, 0x1

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 341
    .line 342
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    new-array v1, v1, [Landroid/os/Bundle;

    .line 347
    .line 348
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 349
    .line 350
    move v1, v0

    .line 351
    :goto_5
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 352
    .line 353
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-ge v1, v4, :cond_6

    .line 358
    .line 359
    new-instance v4, Landroid/os/Bundle;

    .line 360
    .line 361
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 362
    .line 363
    .line 364
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 365
    .line 366
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    check-cast v7, Ljava/lang/Integer;

    .line 371
    .line 372
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    .line 378
    .line 379
    const/4 v7, 0x2

    .line 380
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    .line 382
    .line 383
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 384
    .line 385
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    check-cast v7, Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v4, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 395
    .line 396
    aput-object v4, v7, v1

    .line 397
    .line 398
    add-int/lit8 v1, v1, 0x1

    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 402
    .line 403
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    move v4, v0

    .line 412
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    if-eqz v7, :cond_7

    .line 417
    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    check-cast v7, Ljava/util/Map$Entry;

    .line 423
    .line 424
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    check-cast v7, Ljava/util/List;

    .line 429
    .line 430
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    add-int/2addr v4, v7

    .line 435
    goto :goto_6

    .line 436
    :cond_7
    new-array v1, v4, [Landroid/os/Bundle;

    .line 437
    .line 438
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;

    .line 439
    .line 440
    move v1, v0

    .line 441
    move v4, v1

    .line 442
    :goto_7
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 443
    .line 444
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 445
    .line 446
    .line 447
    move-result v7

    .line 448
    if-ge v1, v7, :cond_9

    .line 449
    .line 450
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 451
    .line 452
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    check-cast v7, Ljava/lang/Integer;

    .line 457
    .line 458
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result v7

    .line 462
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 463
    .line 464
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    check-cast v8, Ljava/util/List;

    .line 469
    .line 470
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    if-eqz v9, :cond_8

    .line 479
    .line 480
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    check-cast v9, Ljava/lang/String;

    .line 485
    .line 486
    new-instance v10, Landroid/os/Bundle;

    .line 487
    .line 488
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v10, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 501
    .line 502
    add-int/lit8 v11, v4, 0x1

    .line 503
    .line 504
    :try_start_1
    aput-object v10, v9, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
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

    .line 514
    .line 515
    .line 516
    move v4, v11

    .line 517
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 521
    .line 522
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    move v4, v0

    .line 531
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    .line 533
    .line 534
    move-result v7

    .line 535
    if-eqz v7, :cond_a

    .line 536
    .line 537
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    check-cast v7, Ljava/util/Map$Entry;

    .line 542
    .line 543
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    check-cast v7, Ljava/util/List;

    .line 548
    .line 549
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    add-int/2addr v4, v7

    .line 554
    goto :goto_a

    .line 555
    :cond_a
    new-array v1, v4, [Landroid/os/Bundle;

    .line 556
    .line 557
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;

    .line 558
    .line 559
    move v1, v0

    .line 560
    move v4, v1

    .line 561
    :goto_b
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 562
    .line 563
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 564
    .line 565
    .line 566
    move-result v7

    .line 567
    if-ge v1, v7, :cond_c

    .line 568
    .line 569
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 570
    .line 571
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v7

    .line 575
    check-cast v7, Ljava/lang/Integer;

    .line 576
    .line 577
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 578
    .line 579
    .line 580
    move-result v7

    .line 581
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 582
    .line 583
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v8

    .line 587
    check-cast v8, Ljava/util/List;

    .line 588
    .line 589
    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 590
    .line 591
    .line 592
    move-result-object v8

    .line 593
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 594
    .line 595
    .line 596
    move-result v9

    .line 597
    if-eqz v9, :cond_b

    .line 598
    .line 599
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v9

    .line 603
    check-cast v9, Ljava/lang/String;

    .line 604
    .line 605
    new-instance v10, Landroid/os/Bundle;

    .line 606
    .line 607
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    .line 612
    .line 613
    const/4 v11, 0x4

    .line 614
    invoke-virtual {v10, v5, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 621
    .line 622
    add-int/lit8 v11, v4, 0x1

    .line 623
    .line 624
    :try_start_3
    aput-object v10, v9, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 625
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

    .line 634
    .line 635
    .line 636
    move v4, v11

    .line 637
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 638
    .line 639
    goto :goto_b

    .line 640
    :cond_c
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 641
    .line 642
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    move v4, v0

    .line 651
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v7

    .line 655
    if-eqz v7, :cond_d

    .line 656
    .line 657
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v7

    .line 661
    check-cast v7, Ljava/util/Map$Entry;

    .line 662
    .line 663
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v7

    .line 667
    check-cast v7, Ljava/util/List;

    .line 668
    .line 669
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 670
    .line 671
    .line 672
    move-result v7

    .line 673
    add-int/2addr v4, v7

    .line 674
    goto :goto_e

    .line 675
    :cond_d
    new-array v1, v4, [Landroid/os/Bundle;

    .line 676
    .line 677
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

    .line 678
    .line 679
    move v1, v0

    .line 680
    move v4, v1

    .line 681
    :goto_f
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 682
    .line 683
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 684
    .line 685
    .line 686
    move-result v7

    .line 687
    if-ge v1, v7, :cond_11

    .line 688
    .line 689
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 690
    .line 691
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v7

    .line 695
    check-cast v7, Ljava/lang/Integer;

    .line 696
    .line 697
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 698
    .line 699
    .line 700
    move-result v7

    .line 701
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 702
    .line 703
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v8

    .line 707
    check-cast v8, Ljava/util/List;

    .line 708
    .line 709
    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 710
    .line 711
    .line 712
    move-result-object v8

    .line 713
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 714
    .line 715
    .line 716
    move-result v9

    .line 717
    if-eqz v9, :cond_10

    .line 718
    .line 719
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v9

    .line 723
    check-cast v9, Ljava/lang/String;

    .line 724
    .line 725
    new-instance v10, Landroid/os/Bundle;

    .line 726
    .line 727
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v10, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 734
    .line 735
    .line 736
    const-string v11, ";"

    .line 737
    .line 738
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v9

    .line 742
    aget-object v11, v9, v0

    .line 743
    .line 744
    if-eqz v11, :cond_e

    .line 745
    .line 746
    invoke-virtual {v10, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .line 748
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

    .line 753
    .line 754
    if-eqz v9, :cond_f

    .line 755
    .line 756
    const-string/jumbo v11, "state"

    .line 757
    .line 758
    .line 759
    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    :cond_f
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 763
    .line 764
    add-int/lit8 v11, v4, 0x1

    .line 765
    .line 766
    :try_start_5
    aput-object v10, v9, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 767
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

    .line 773
    .line 774
    .line 775
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 776
    .line 777
    goto :goto_f

    .line 778
    :cond_11
    return-void
.end method
