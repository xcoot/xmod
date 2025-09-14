.class public final Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# instance fields
.field public final mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mIsRevocationCheckEnabled:Z

.field public mIsSDEnabled:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

.field public final mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field public final mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MdfService"

    .line 5
    .line 6
    const-string/jumbo v1, "v3.21.0"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v0, "device_policy"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 23
    .line 24
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 64
    .line 65
    const-string/jumbo v0, "user"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/os/UserManager;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mUserManager:Landroid/os/UserManager;

    .line 75
    .line 76
    new-instance p1, Lcom/samsung/android/security/mdf/MdfUtils;

    .line 77
    .line 78
    invoke-direct {p1}, Lcom/samsung/android/security/mdf/MdfUtils;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 82
    .line 83
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method public static logForAuditAndLogcat(IILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v4, "MdfStatus"

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    move v1, p0

    .line 10
    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "MdfService"

    .line 15
    .line 16
    invoke-static {p1, p0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final checkDevicePolicy()I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const-string v2, "DevicePolicyManager is null"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "MdfService"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move v0, v1

    .line 20
    :goto_0
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x5

    .line 24
    const/4 v9, 0x0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    const/16 v10, 0x1e

    .line 28
    .line 29
    if-le v0, v10, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string v0, "Password attempts : OK"

    .line 33
    .line 34
    invoke-static {v8, v5, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move v0, v9

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v10, "Password attempts : setMaximumFailedPasswordsForWipe() should be set between 1 and 30. Current value = %d"

    .line 48
    .line 49
    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v7, v6, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 58
    .line 59
    if-eqz v10, :cond_3

    .line 60
    .line 61
    invoke-virtual {v10, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :goto_3
    const/high16 v10, 0x50000

    .line 70
    .line 71
    const/high16 v11, 0x60000

    .line 72
    .line 73
    if-lt v1, v10, :cond_5

    .line 74
    .line 75
    if-le v1, v11, :cond_4

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    const-string v1, "Password quality : OK"

    .line 79
    .line 80
    invoke-static {v8, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_5
    :goto_4
    const-string v1, "Password quality : setPasswordQuality() should be set between alphanumeric and complex."

    .line 85
    .line 86
    invoke-static {v7, v6, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    or-int/lit16 v0, v0, 0x2000

    .line 90
    .line 91
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/high16 v10, 0x40000

    .line 104
    .line 105
    if-lt v1, v10, :cond_7

    .line 106
    .line 107
    if-gt v1, v11, :cond_7

    .line 108
    .line 109
    const-string v1, "Screen lock : OK"

    .line 110
    .line 111
    invoke-static {v8, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_6
    const-string v1, "LockPatternUtils is null"

    .line 116
    .line 117
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_7
    const-string v1, "Screen lock : Screen lock should be set to Password above alphanumeric (Biometric lock is available)"

    .line 121
    .line 122
    invoke-static {v7, v6, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    or-int/lit8 v0, v0, 0x4

    .line 126
    .line 127
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 128
    .line 129
    const-string v10, "CertificatePolicy is null"

    .line 130
    .line 131
    const-string v11, "*"

    .line 132
    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    invoke-virtual {v1, v11}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    goto :goto_7

    .line 140
    :cond_8
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move v1, v9

    .line 144
    :goto_7
    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsRevocationCheckEnabled:Z

    .line 145
    .line 146
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 147
    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    invoke-virtual {v1, v11}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    goto :goto_8

    .line 155
    :cond_9
    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move v1, v9

    .line 159
    :goto_8
    if-eqz v1, :cond_a

    .line 160
    .line 161
    const-string v1, "Certificate revocation : OK (OCSP/CRL)"

    .line 162
    .line 163
    invoke-static {v8, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_9

    .line 167
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsRevocationCheckEnabled:Z

    .line 168
    .line 169
    if-eqz v1, :cond_b

    .line 170
    .line 171
    const-string v1, "Certificate revocation : OK (CRL)"

    .line 172
    .line 173
    invoke-static {v8, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_9

    .line 177
    :cond_b
    const-string v1, "Certificate revocation : enableOcspCheck() or enableRevocationCheck() should be set on all packages."

    .line 178
    .line 179
    invoke-static {v7, v6, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    or-int/lit8 v0, v0, 0x20

    .line 183
    .line 184
    :goto_9
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_c

    .line 189
    .line 190
    const-string v1, "SDCARD SLOT Support"

    .line 191
    .line 192
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move v1, v7

    .line 196
    goto :goto_a

    .line 197
    :cond_c
    const-string v1, "SDCARD SLOT None"

    .line 198
    .line 199
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move v1, v9

    .line 203
    :goto_a
    if-eqz v1, :cond_10

    .line 204
    .line 205
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSdCardEnabled()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_d

    .line 212
    .line 213
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mUserManager:Landroid/os/UserManager;

    .line 214
    .line 215
    const-string/jumbo v10, "no_physical_media"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_d

    .line 223
    .line 224
    move v1, v7

    .line 225
    goto :goto_b

    .line 226
    :cond_d
    move v1, v9

    .line 227
    :goto_b
    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    .line 228
    .line 229
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 230
    .line 231
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    iget-boolean v10, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    .line 236
    .line 237
    if-nez v10, :cond_e

    .line 238
    .line 239
    const-string v1, "SD card status : OK (Blocked)"

    .line 240
    .line 241
    invoke-static {v8, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_c

    .line 245
    :cond_e
    if-eqz v1, :cond_f

    .line 246
    .line 247
    const-string v1, "SD card status : OK (Encrypted)"

    .line 248
    .line 249
    invoke-static {v8, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_c

    .line 253
    :cond_f
    const-string v1, "SD card status : setRequireStorageCardEncryption() should be set to true, setSdCardState() should be set to false or DISALLOW_MOUNT_PHYSICAL_MEDIA should be set to addUserRestriction()."

    .line 254
    .line 255
    invoke-static {v8, v6, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    or-int/lit16 v0, v0, 0x80

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_10
    const-string v1, "SD card status : OK (No slot)"

    .line 262
    .line 263
    invoke-static {v8, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :goto_c
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 267
    .line 268
    if-eqz v1, :cond_15

    .line 269
    .line 270
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    and-int/lit16 v1, v1, 0x80

    .line 275
    .line 276
    if-eqz v1, :cond_11

    .line 277
    .line 278
    move v1, v7

    .line 279
    goto :goto_d

    .line 280
    :cond_11
    move v1, v9

    .line 281
    :goto_d
    iget-object v10, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 282
    .line 283
    if-eqz v10, :cond_13

    .line 284
    .line 285
    invoke-virtual {v10, v5}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    xor-int/2addr v10, v7

    .line 290
    if-nez v1, :cond_12

    .line 291
    .line 292
    if-eqz v10, :cond_14

    .line 293
    .line 294
    :cond_12
    move v1, v7

    .line 295
    goto :goto_f

    .line 296
    :cond_13
    const-string v1, "PasswordPolicy is null"

    .line 297
    .line 298
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    :cond_14
    :goto_e
    move v1, v9

    .line 302
    goto :goto_f

    .line 303
    :cond_15
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    goto :goto_e

    .line 307
    :goto_f
    if-eqz v1, :cond_16

    .line 308
    .line 309
    const-string v1, "Face lock : OK"

    .line 310
    .line 311
    invoke-static {v8, v5, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_10

    .line 315
    :cond_16
    const-string v1, "Face lock : BIOMETRIC_AUTHENTICATION_FACE should be set to false in the setBiometricAuthenticationEnabled() or KEYGUARD_DISABLE_FACE should be set to setKeyguardDisabledFeatures()."

    .line 316
    .line 317
    invoke-static {v7, v6, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    or-int/lit16 v0, v0, 0x4000

    .line 321
    .line 322
    :goto_10
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 323
    .line 324
    if-eqz p0, :cond_17

    .line 325
    .line 326
    invoke-virtual {p0, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    .line 327
    .line 328
    .line 329
    move-result p0

    .line 330
    and-int/lit8 p0, p0, 0x10

    .line 331
    .line 332
    if-eqz p0, :cond_18

    .line 333
    .line 334
    move v9, v7

    .line 335
    goto :goto_11

    .line 336
    :cond_17
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    :cond_18
    :goto_11
    if-eqz v9, :cond_19

    .line 340
    .line 341
    const-string p0, "Smart lock : OK"

    .line 342
    .line 343
    invoke-static {v8, v5, p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 344
    .line 345
    .line 346
    goto :goto_12

    .line 347
    :cond_19
    const-string p0, "Smart lock : KEYGUARD_DISABLE_TRUST_AGENTS should be set to setKeyguardDisabledFeatures()."

    .line 348
    .line 349
    invoke-static {v7, v6, p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    const p0, 0x8000

    .line 353
    .line 354
    .line 355
    or-int/2addr v0, p0

    .line 356
    :goto_12
    return v0
.end method

.method public final enableCCMode(Z)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "security.mdf.result"

    .line 4
    .line 5
    .line 6
    const-string v2, "None"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "ro.security.mdf.ux"

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "Enabled"

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string v3, "MdfService"

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const-string v0, "This model does not support CC mode."

    .line 29
    .line 30
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/16 v0, -0x10

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/16 v4, 0x10

    .line 50
    .line 51
    const/16 v5, 0x8

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    const/4 v7, 0x1

    .line 55
    if-ne v2, v7, :cond_1

    .line 56
    .line 57
    move v2, v7

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-ne v2, v6, :cond_2

    .line 60
    .line 61
    move v2, v6

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-ne v2, v5, :cond_3

    .line 64
    .line 65
    move v2, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v2, v4

    .line 68
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string/jumbo v9, "the current mode : "

    .line 71
    .line 72
    .line 73
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    const/16 v9, -0xd

    .line 92
    .line 93
    const/16 v10, -0xb

    .line 94
    .line 95
    const/16 v11, -0xc

    .line 96
    .line 97
    const v12, 0x10407d5

    .line 98
    .line 99
    .line 100
    const v13, 0x10407d4

    .line 101
    .line 102
    .line 103
    const v14, 0x10407d6

    .line 104
    .line 105
    .line 106
    const-string v15, "Failed. setCCMode. res = "

    .line 107
    .line 108
    if-eqz p1, :cond_10

    .line 109
    .line 110
    if-ne v2, v7, :cond_4

    .line 111
    .line 112
    const-string v0, "CCMode is already enabled."

    .line 113
    .line 114
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return v8

    .line 118
    :cond_4
    if-ne v2, v6, :cond_a

    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v9, "Prerequisite policies have yet to set. res = "

    .line 136
    .line 137
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v4, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/samsung/android/security/mdf/MdfUtils;->FIPS_Openssl_SelfTest()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_6

    .line 150
    .line 151
    const-string v2, "FIPS self-test : FAILED"

    .line 152
    .line 153
    const/4 v4, 0x6

    .line 154
    invoke-static {v7, v4, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/16 v8, -0x14

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    const-string v2, "FIPS self-test : OK"

    .line 161
    .line 162
    const/4 v4, 0x5

    .line 163
    invoke-static {v4, v6, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    if-eqz v8, :cond_8

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v2, "Failed. check fips self test. res = "

    .line 178
    .line 179
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-eqz v9, :cond_7

    .line 201
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v9, v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_4

    .line 211
    .line 212
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :cond_8
    invoke-virtual {v0, v7}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-eqz v9, :cond_9

    .line 242
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v9, v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :cond_9
    iget-object v1, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 264
    .line 265
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    const v3, 0x10407c4

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :cond_a
    if-ne v2, v4, :cond_c

    .line 282
    .line 283
    invoke-virtual {v0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_b

    .line 288
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :cond_b
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :goto_2
    move v9, v11

    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :cond_c
    if-ne v2, v5, :cond_e

    .line 308
    .line 309
    invoke-virtual {v0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_d

    .line 314
    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_d
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :goto_3
    move v9, v10

    .line 331
    goto/16 :goto_4

    .line 332
    .line 333
    :cond_e
    invoke-virtual {v0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_f

    .line 338
    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_f
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_4

    .line 355
    .line 356
    :cond_10
    if-ne v2, v7, :cond_12

    .line 357
    .line 358
    invoke-virtual {v0, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    if-eqz v9, :cond_11

    .line 363
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v9, v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_4

    .line 373
    .line 374
    :cond_11
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    iget-object v3, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 385
    .line 386
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    const v4, 0x10407c6

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_12
    if-ne v2, v6, :cond_13

    .line 409
    .line 410
    const-string v0, "CCMode is already ready."

    .line 411
    .line 412
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    return v8

    .line 416
    :cond_13
    if-ne v2, v5, :cond_15

    .line 417
    .line 418
    invoke-virtual {v0, v5}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    if-eqz v9, :cond_14

    .line 423
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-static {v9, v0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto :goto_4

    .line 433
    :cond_14
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 434
    .line 435
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    iget-object v3, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 444
    .line 445
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_3

    .line 464
    .line 465
    :cond_15
    if-ne v2, v4, :cond_17

    .line 466
    .line 467
    invoke-virtual {v0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_16

    .line 472
    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    :cond_16
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_2

    .line 489
    .line 490
    :cond_17
    invoke-virtual {v0, v4}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-eqz v0, :cond_18

    .line 495
    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-static {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    :cond_18
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    :goto_4
    return v9
.end method

.method public final initCCMode()I
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_e

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    const/4 v4, 0x1

    .line 21
    if-ne v0, v4, :cond_0

    .line 22
    .line 23
    move v0, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-ne v0, v2, :cond_2

    .line 30
    .line 31
    move v0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move v0, v1

    .line 34
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v6, "current mode : "

    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "MdfService"

    .line 53
    .line 54
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const-string v7, "Failed. setCCMode. res = "

    .line 59
    .line 60
    if-ne v0, v4, :cond_5

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->FIPS_Openssl_SelfTest()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    const-string v0, "FIPS self-test : FAILED"

    .line 71
    .line 72
    const/4 v1, 0x6

    .line 73
    invoke-static {v4, v1, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/16 v0, -0x14

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-string v0, "FIPS self-test : OK"

    .line 80
    .line 81
    const/4 v1, 0x5

    .line 82
    invoke-static {v1, v3, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move v0, v5

    .line 86
    :goto_1
    if-eqz v0, :cond_4

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "Failed. check fips self test. res = "

    .line 91
    .line 92
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const v1, 0x10407d6

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const v3, 0x10407d4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_c

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_c

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v2, "Prerequisite policies have yet to set. res = "

    .line 151
    .line 152
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    if-ne v0, v3, :cond_6

    .line 160
    .line 161
    invoke-virtual {p0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_c

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    if-ne v0, v2, :cond_8

    .line 177
    .line 178
    invoke-virtual {p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_7
    const/16 v0, -0xb

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_8
    if-ne v0, v1, :cond_a

    .line 196
    .line 197
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_9

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    const/16 v0, -0xc

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_a
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v0, v1, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_b
    const/16 v0, -0xd

    .line 229
    .line 230
    :cond_c
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v2, "AE CommonCriteriaMode is "

    .line 233
    .line 234
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 238
    .line 239
    if-eqz p0, :cond_d

    .line 240
    .line 241
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    goto :goto_3

    .line 247
    :cond_d
    const-string p0, "Failed isCommonCriteriaMode(). mDevicePolicyManager is null"

    .line 248
    .line 249
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    return v0

    .line 267
    :cond_e
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 268
    .line 269
    const-string v0, "Security Exception Occurred. Only SYSTEM can use the MdfService."

    .line 270
    .line 271
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :catch_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 277
    .line 278
    .line 279
    throw p0
.end method

.method public final setCCMode(I)I
    .locals 14

    .line 1
    const-string/jumbo v0, "security.mdf"

    .line 2
    .line 3
    .line 4
    const-string v1, "CC Mode status : "

    .line 5
    .line 6
    const-string v2, "MdfService"

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq p1, v3, :cond_3

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eq p1, v4, :cond_2

    .line 14
    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    if-eq p1, v4, :cond_1

    .line 18
    .line 19
    const-string v4, "None"

    .line 20
    .line 21
    const/16 v6, 0x10

    .line 22
    .line 23
    if-eq p1, v6, :cond_0

    .line 24
    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v7, "setCCMode default... status = "

    .line 28
    .line 29
    .line 30
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v6, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    move-object p1, v4

    .line 37
    move v4, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move-object p1, v4

    .line 40
    move v4, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p1, "Disabled"

    .line 43
    .line 44
    move v5, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const-string p1, "Ready"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const-string v4, "Enabled"

    .line 50
    .line 51
    move v5, v3

    .line 52
    goto :goto_0

    .line 53
    :goto_1
    const-string v6, "Failed. SBFlag has yet to set. current flag = "

    .line 54
    .line 55
    const/16 v7, -0x18

    .line 56
    .line 57
    if-eqz v5, :cond_6

    .line 58
    .line 59
    iget-object v8, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOn()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_4

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v6, "Failed. setSBFlagOn() res = "

    .line 70
    .line 71
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v8, v3, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 79
    .line 80
    invoke-virtual {v9}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eq v9, v3, :cond_5

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v9, v3, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    move v7, v8

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOff()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_7

    .line 104
    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v8, "Failed. setSBFlagOff() res = "

    .line 108
    .line 109
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v6, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 117
    .line 118
    invoke-virtual {v8}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_8

    .line 123
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v8, v3, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_8
    move v7, v3

    .line 134
    :goto_2
    const-string v3, ", result = "

    .line 135
    .line 136
    if-eqz v7, :cond_9

    .line 137
    .line 138
    const-string p0, "Failed. enforceSB : "

    .line 139
    .line 140
    invoke-static {p0, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 160
    .line 161
    invoke-virtual {v5, v4}, Lcom/samsung/android/security/mdf/MdfUtils;->setCCModeFlag(I)I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    const/16 v6, -0x1b

    .line 166
    .line 167
    if-eqz v5, :cond_a

    .line 168
    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v7, "Failed. setCCModeFlag() res = "

    .line 172
    .line 173
    invoke-direct {p0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v5, p0, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_3
    move v7, v6

    .line 180
    goto :goto_4

    .line 181
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eq p0, v4, :cond_b

    .line 188
    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v7, "Failed. CCMode Flag has yet to set. current flag = "

    .line 192
    .line 193
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {p0, v5, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_b
    move v7, v5

    .line 201
    :goto_4
    if-eqz v7, :cond_c

    .line 202
    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v5, "Failed. setCCModeFlag : "

    .line 206
    .line 207
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :cond_c
    :goto_5
    if-eqz v7, :cond_d

    .line 235
    .line 236
    return v7

    .line 237
    :cond_d
    const/4 p0, -0x3

    .line 238
    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-nez v3, :cond_e

    .line 247
    .line 248
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_e
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    const-string v12, "MdfStatus"

    .line 260
    .line 261
    const/4 v9, 0x5

    .line 262
    const/4 v8, 0x1

    .line 263
    const/4 v10, 0x0

    .line 264
    invoke-static/range {v8 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .line 266
    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string/jumbo p1, "security.mdf : "

    .line 270
    .line 271
    .line 272
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    return v7

    .line 290
    :catch_0
    const-string p1, "SystemProperties Exception Occurs"

    .line 291
    .line 292
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    return p0

    .line 296
    :catch_1
    const-string p1, "SystemProperties RuntimeException Occurs"

    .line 297
    .line 298
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    return p0
.end method

.method public final setNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "Notice for applying security policy"

    .line 3
    .line 4
    const-string v2, "MdfService"

    .line 5
    .line 6
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v3, "notification"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/app/NotificationManager;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string p0, "NotificationManager is null"

    .line 23
    .line 24
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v2, Landroid/app/NotificationChannel;

    .line 29
    .line 30
    const-string/jumbo v3, "mdf_channel_id"

    .line 31
    .line 32
    .line 33
    const-string v4, "Mdf Channel"

    .line 34
    .line 35
    const/4 v5, 0x4

    .line 36
    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 41
    .line 42
    .line 43
    new-array v3, v0, [J

    .line 44
    .line 45
    fill-array-data v3, :array_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Landroid/app/Notification$Builder;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 65
    .line 66
    .line 67
    const p1, 0x1080027

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v1, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method
