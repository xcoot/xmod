.class public final Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mMountSDcardToHelper:Z = false

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mAlreadyDecrypted:Z

.field public final mAnimateSync:Ljava/lang/Object;

.field public final mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field public mBootCompleted:Z

.field public final mBroadcastReceiver:Lcom/android/server/DirEncryptServiceHelper$1;

.field public final mContext:Landroid/content/Context;

.field public mDecryptTimestamp:Ljava/lang/String;

.field public final mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field public mEncryptTimestamp:Ljava/lang/String;

.field public mErrAdditionalSpace:I

.field public mHandler:Landroid/os/Handler;

.field public mLastError:I

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public mProgressTime:J

.field public mSelfSDMountRequested:Z

.field public mServiceStatus:I

.field public final mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field public mUnnmountRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 30
    .line 31
    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 32
    .line 33
    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 34
    .line 35
    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 36
    .line 37
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/Object;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 52
    .line 53
    const-wide/16 v1, -0x1

    .line 54
    .line 55
    iput-wide v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 56
    .line 57
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    new-instance v2, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 65
    .line 66
    invoke-direct {v2, p0, p1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 70
    .line 71
    new-instance v2, Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 72
    .line 73
    invoke-direct {v2, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 77
    .line 78
    const-string/jumbo p0, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    .line 79
    .line 80
    .line 81
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 82
    .line 83
    invoke-static {p0, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, v1, p0, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/Date;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v1, "Exception : "

    .line 26
    .line 27
    const-string v2, "DirEncryptServiceHelper"

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "Unknown"

    .line 33
    .line 34
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final checkSdCardMetafile()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    move v3, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v0

    .line 28
    :goto_0
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move v3, v0

    .line 31
    :cond_1
    const-string/jumbo v5, "sec.fle.encryption.status"

    .line 32
    .line 33
    .line 34
    const-string v6, ""

    .line 35
    .line 36
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v7, "checkSdCardMetafile result:"

    .line 43
    .line 44
    .line 45
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v7, " unlocked:"

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " Policy:"

    .line 60
    .line 61
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " skipMounting:"

    .line 68
    .line 69
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v6, "DirEncryptServiceHelper"

    .line 80
    .line 81
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    const-string/jumbo v2, "encrypted"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const-string/jumbo v7, "checkSdCardMetafile but user locked yet"

    .line 92
    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    const-string v1, "ENC_META_CHECK : Encryption State Normal"

    .line 97
    .line 98
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    const-string/jumbo v2, "decrypting"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    const-string v9, "ENC_META_CHECK : EAS Policy Set"

    .line 127
    .line 128
    if-nez v8, :cond_6

    .line 129
    .line 130
    const-string/jumbo v8, "encrypting"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_4

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    if-ne v1, v4, :cond_5

    .line 141
    .line 142
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    const-string v1, "ENC_META_CHECK : Normal SD Card"

    .line 150
    .line 151
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 155
    .line 156
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 157
    .line 158
    const/4 v1, 0x3

    .line 159
    const-string/jumbo v2, "done"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_6
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_7

    .line 171
    .line 172
    if-ne v1, v4, :cond_7

    .line 173
    .line 174
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    const-string v1, "SD card has encrypting/decrypting state -> Self Encrypting/Decrypting!!"

    .line 182
    .line 183
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_8
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :goto_2
    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 204
    .line 205
    return-void
.end method

.method public final clearNotification()V
    .locals 2

    .line 1
    const-string v0, "DirEncryptServiceHelper"

    .line 2
    .line 3
    const-string/jumbo v1, "clearNotification"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string/jumbo v0, "notification"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/NotificationManager;

    .line 19
    .line 20
    sget v0, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final doWorkForUSBState(Ljava/lang/String;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "doWorkForUSBState:: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DirEncryptServiceHelper"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "vold.decrypt"

    .line 22
    .line 23
    .line 24
    const-string v2, "0"

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v2, "trigger_restart_min_framework"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const-string p0, "Do not work if encryption lock page"

    .line 40
    .line 41
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const-string v0, "HiddenMount"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string/jumbo v2, "encrypted"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v3, "sec.fle.encryption.status"

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    const-string v5, ""

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 81
    .line 82
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    const-string/jumbo p1, "encrypting"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move v4, v6

    .line 103
    :cond_2
    :goto_0
    :try_start_0
    const-string/jumbo p0, "mount"

    .line 104
    .line 105
    .line 106
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-eqz p0, :cond_3

    .line 111
    .line 112
    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_10

    .line 117
    .line 118
    invoke-interface {p0, v4}, Landroid/os/storage/IStorageManager;->encryptExternalStorage(Z)I

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :cond_3
    const-string p0, "Can\'t get storagemanager service"

    .line 124
    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    new-instance p0, Landroid/os/RemoteException;

    .line 129
    .line 130
    const-string p1, "Could not contact storagemanager service"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    const-string p0, "Unable to communicate with Mountservice"

    .line 137
    .line 138
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_4
    :try_start_1
    const-string/jumbo p1, "vold.crypto.ext_migrate"

    .line 144
    .line 145
    .line 146
    invoke-static {p1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v0, "1"

    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_10

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->checkSdCardMetafile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :catch_1
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :cond_5
    const-string v0, "MoveMount"

    .line 170
    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    const-string v7, "Mount"

    .line 176
    .line 177
    const-string/jumbo v8, "success"

    .line 178
    .line 179
    .line 180
    const/4 v9, 0x3

    .line 181
    const/4 v10, 0x2

    .line 182
    if-eqz v0, :cond_9

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_7

    .line 189
    .line 190
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 191
    .line 192
    const/16 v0, 0x8

    .line 193
    .line 194
    if-eq p1, v0, :cond_7

    .line 195
    .line 196
    const-string p1, "Since encrypt is OFF: no final mount command (DECRYPTED)"

    .line 197
    .line 198
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v9, v6, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string/jumbo p1, "delete uuid"

    .line 208
    .line 209
    .line 210
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 214
    .line 215
    if-nez p1, :cond_6

    .line 216
    .line 217
    invoke-virtual {p0, v10, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :cond_6
    const-string/jumbo p0, "don\'t send encryption notification"

    .line 223
    .line 224
    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-nez p1, :cond_8

    .line 235
    .line 236
    const-string/jumbo p1, "looks like encryption policies were received while SD card decryption was on going (DECRYPTING)!!"

    .line 237
    .line 238
    .line 239
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v10, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 246
    .line 247
    .line 248
    const-string/jumbo p1, "busy"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v9, v6, v6, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    if-eqz p0, :cond_10

    .line 261
    .line 262
    const-string p0, "MOVE_MOUNT => ENCRYPTING, ENCRYPTED or OTHER_ENCRYPT"

    .line 263
    .line 264
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_9
    const-string/jumbo v0, "mounted"

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    const-string/jumbo v11, "free"

    .line 277
    .line 278
    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    const-string p1, "Update SD card encryption status"

    .line 282
    .line 283
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    const-string/jumbo p1, "sec.vold.ext_encrypted_type"

    .line 287
    .line 288
    .line 289
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const-string/jumbo v3, "block"

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_a

    .line 305
    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_a

    .line 311
    .line 312
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 313
    .line 314
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v10, v4, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, v10, v6, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v0, "ENCRYPT Response admin : "

    .line 326
    .line 327
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 349
    .line 350
    iput-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v9, v6, v6, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_1

    .line 360
    :cond_b
    const-string/jumbo v0, "removed"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_c

    .line 368
    .line 369
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 370
    .line 371
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 372
    .line 373
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 374
    .line 375
    const-string p1, "SD card removed"

    .line 376
    .line 377
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0, v6, v6, v6, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_1

    .line 390
    :cond_c
    const-string/jumbo v0, "unmounted"

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_e

    .line 398
    .line 399
    const-string p1, "SD card unmounted"

    .line 400
    .line 401
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 405
    .line 406
    if-nez p1, :cond_d

    .line 407
    .line 408
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 409
    .line 410
    .line 411
    :cond_d
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 412
    .line 413
    if-ne p1, v4, :cond_10

    .line 414
    .line 415
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 416
    .line 417
    const/16 p1, 0xa

    .line 418
    .line 419
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    goto :goto_1

    .line 424
    :cond_e
    const-string v0, "bad_removal"

    .line 425
    .line 426
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    if-eqz p1, :cond_10

    .line 431
    .line 432
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 433
    .line 434
    const-string p1, "SD card bad removed"

    .line 435
    .line 436
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 440
    .line 441
    if-nez p1, :cond_f

    .line 442
    .line 443
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p0, v6, v6, v6, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :cond_f
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 453
    .line 454
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 455
    .line 456
    :cond_10
    :goto_1
    return-void
.end method

.method public final getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/Notification$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 39
    .line 40
    .line 41
    const-string/jumbo p0, "sdcard_encryption_channel"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final getTopClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "activity"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    .line 29
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, ""

    .line 37
    .line 38
    :goto_0
    return-object p0
.end method

.method public final isAdminApplied()I
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string/jumbo v1, "device_policy"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    iput p0, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    .line 26
    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final isSdCardEncryped()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "sec.fle.encryption.status"

    .line 2
    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v2, "persist.vold.ext_encrypted_type"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string/jumbo v2, "isSdCardEncryped state: "

    .line 24
    .line 25
    .line 26
    const-string v3, " isExistMeta: "

    .line 27
    .line 28
    const-string v4, " isEncryptionType: "

    .line 29
    .line 30
    invoke-static {v2, p0, v3, v0, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "DirEncryptServiceHelper"

    .line 35
    .line 36
    invoke-static {v2, v1, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const-string/jumbo v2, "mounted"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    const-string/jumbo p0, "block"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_0

    .line 58
    .line 59
    const-string/jumbo p0, "encrypted"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_1

    .line 67
    .line 68
    :cond_0
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :cond_1
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method public final notifyEncryptionStatusChanged(IIILjava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "DirEncryptServiceHelper"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "notifyEncryptionStatusChanged: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_0
    if-ge v2, v1, :cond_0

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    move-object v4, v3

    .line 48
    check-cast v4, Lcom/samsung/android/security/IDirEncryptServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    :try_start_1
    const-string v3, "DirEncryptServiceHelper"

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v6, "Listener :"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    move v6, p1

    .line 79
    move-object v7, p4

    .line 80
    move v8, p2

    .line 81
    move v9, p3

    .line 82
    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/security/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :catch_0
    move-exception v3

    .line 89
    :try_start_2
    const-string v4, "DirEncryptServiceHelper"

    .line 90
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v6, "Listener failed: "

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_1
    const-string v3, "DirEncryptServiceHelper"

    .line 113
    .line 114
    const-string v4, "Listener dead"

    .line 115
    .line 116
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 125
    .line 126
    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 129
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    throw p0
.end method

.method public final setStatus(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setStatus:"

    .line 2
    .line 3
    .line 4
    const-string v1, "DirEncryptServiceHelper"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 10
    .line 11
    return-void
.end method

.method public final showNotification(IILjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v9, 0x2

    .line 14
    const v11, 0x1040d3f

    .line 15
    .line 16
    .line 17
    const v12, 0x1040d43

    .line 18
    .line 19
    .line 20
    if-eq v1, v6, :cond_13

    .line 21
    .line 22
    const/4 v13, 0x6

    .line 23
    const/4 v14, 0x5

    .line 24
    const v15, 0x1040d3c

    .line 25
    .line 26
    .line 27
    const v16, 0x10802da

    .line 28
    .line 29
    .line 30
    const v7, 0x1040d41

    .line 31
    .line 32
    .line 33
    const v17, 0x1080336

    .line 34
    .line 35
    .line 36
    const/high16 v10, 0xc000000

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    if-eq v1, v9, :cond_d

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    if-eq v1, v9, :cond_b

    .line 43
    .line 44
    if-eq v1, v14, :cond_7

    .line 45
    .line 46
    if-eq v1, v13, :cond_5

    .line 47
    .line 48
    const/4 v3, 0x7

    .line 49
    if-eq v1, v3, :cond_4

    .line 50
    .line 51
    const/16 v3, 0xa

    .line 52
    .line 53
    if-eq v1, v3, :cond_3

    .line 54
    .line 55
    const/16 v3, 0xb

    .line 56
    .line 57
    if-eq v1, v3, :cond_1

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 60
    .line 61
    iget-boolean v1, v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 62
    .line 63
    xor-int/2addr v1, v6

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    iput-boolean v6, v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 67
    .line 68
    iput-object v5, v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 69
    .line 70
    :cond_0
    return-void

    .line 71
    :cond_1
    if-ne v2, v6, :cond_2

    .line 72
    .line 73
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    move/from16 v16, v17

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :goto_0
    iput v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 117
    .line 118
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    new-instance v4, Landroid/content/Intent;

    .line 121
    .line 122
    const-string/jumbo v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3, v8, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :goto_1
    move-object v4, v1

    .line 133
    move-object v8, v4

    .line 134
    move-object v7, v2

    .line 135
    move-object v2, v3

    .line 136
    move/from16 v3, v16

    .line 137
    .line 138
    goto/16 :goto_b

    .line 139
    .line 140
    :cond_3
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const v2, 0x1040d4b

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const v3, 0x1040d4a

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    new-instance v4, Landroid/content/Intent;

    .line 169
    .line 170
    const-string/jumbo v7, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    .line 171
    .line 172
    .line 173
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v3, v8, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    iput v8, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 181
    .line 182
    const v4, 0x108007b

    .line 183
    .line 184
    .line 185
    move-object v8, v1

    .line 186
    move-object v7, v2

    .line 187
    move-object v2, v3

    .line 188
    move v3, v4

    .line 189
    move-object v4, v8

    .line 190
    goto/16 :goto_b

    .line 191
    .line 192
    :cond_4
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const v2, 0x1040d76

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const v3, 0x1040d75

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    new-instance v7, Landroid/content/Intent;

    .line 221
    .line 222
    const-string/jumbo v9, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 223
    .line 224
    .line 225
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    const-string v9, "adminStart"

    .line 229
    .line 230
    const-string v11, "1"

    .line 231
    .line 232
    invoke-virtual {v7, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    invoke-static {v3, v8, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    move-object v8, v1

    .line 240
    move-object v7, v2

    .line 241
    move-object v2, v3

    .line 242
    const v3, 0x1080337

    .line 243
    .line 244
    .line 245
    goto/16 :goto_b

    .line 246
    .line 247
    :cond_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 252
    .line 253
    if-ne v2, v6, :cond_6

    .line 254
    .line 255
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    move/from16 v16, v17

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_6
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 289
    .line 290
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    :goto_2
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    new-instance v4, Landroid/content/Intent;

    .line 301
    .line 302
    const-string/jumbo v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 303
    .line 304
    .line 305
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v3, v8, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    const/4 v4, 0x4

    .line 313
    iput v4, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 314
    .line 315
    goto/16 :goto_1

    .line 316
    .line 317
    :cond_7
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 322
    .line 323
    monitor-enter v3

    .line 324
    :try_start_0
    iget-wide v9, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 325
    .line 326
    const-wide/16 v11, -0x1

    .line 327
    .line 328
    cmp-long v4, v9, v11

    .line 329
    .line 330
    if-nez v4, :cond_8

    .line 331
    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 333
    .line 334
    .line 335
    move-result-wide v9

    .line 336
    iput-wide v9, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 337
    .line 338
    goto :goto_3

    .line 339
    :catchall_0
    move-exception v0

    .line 340
    goto :goto_5

    .line 341
    :cond_8
    :goto_3
    iget-object v4, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 342
    .line 343
    iput v1, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    .line 344
    .line 345
    iput v2, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    .line 346
    .line 347
    if-nez v1, :cond_9

    .line 348
    .line 349
    iput-boolean v8, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 350
    .line 351
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 352
    .line 353
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_9
    const/16 v0, 0x64

    .line 358
    .line 359
    if-ne v0, v1, :cond_a

    .line 360
    .line 361
    iput-boolean v6, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 362
    .line 363
    iput-object v5, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 364
    .line 365
    :cond_a
    :goto_4
    monitor-exit v3

    .line 366
    return-void

    .line 367
    :goto_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    throw v0

    .line 369
    :cond_b
    if-ne v2, v6, :cond_c

    .line 370
    .line 371
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 372
    .line 373
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 382
    .line 383
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    goto :goto_6

    .line 392
    :cond_c
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 403
    .line 404
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    :goto_6
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 413
    .line 414
    new-instance v4, Landroid/content/Intent;

    .line 415
    .line 416
    const-string/jumbo v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 417
    .line 418
    .line 419
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-static {v3, v8, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    move-object v4, v1

    .line 427
    move-object v8, v4

    .line 428
    move-object v7, v2

    .line 429
    move-object v2, v3

    .line 430
    move/from16 v3, v17

    .line 431
    .line 432
    goto/16 :goto_b

    .line 433
    .line 434
    :cond_d
    const/16 v1, 0x8

    .line 435
    .line 436
    const v4, 0x1040d3d

    .line 437
    .line 438
    .line 439
    if-ne v2, v6, :cond_10

    .line 440
    .line 441
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 442
    .line 443
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    const-string/jumbo v9, "success"

    .line 452
    .line 453
    .line 454
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    if-eqz v9, :cond_e

    .line 459
    .line 460
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 461
    .line 462
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    const v3, 0x1040d42

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    iput v8, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 474
    .line 475
    move-object v3, v2

    .line 476
    move-object v2, v5

    .line 477
    const v7, 0x1080337

    .line 478
    .line 479
    .line 480
    goto/16 :goto_9

    .line 481
    .line 482
    :cond_e
    const-string/jumbo v9, "exception"

    .line 483
    .line 484
    .line 485
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    if-eqz v3, :cond_f

    .line 490
    .line 491
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 492
    .line 493
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 502
    .line 503
    move-object v1, v3

    .line 504
    move/from16 v7, v17

    .line 505
    .line 506
    :goto_7
    move-object v3, v2

    .line 507
    move-object v2, v5

    .line 508
    goto/16 :goto_9

    .line 509
    .line 510
    :cond_f
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 511
    .line 512
    new-instance v3, Landroid/content/Intent;

    .line 513
    .line 514
    const-string/jumbo v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 515
    .line 516
    .line 517
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-static {v1, v8, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 525
    .line 526
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    iput v14, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 535
    .line 536
    move/from16 v7, v17

    .line 537
    .line 538
    :goto_8
    move-object/from16 v18, v2

    .line 539
    .line 540
    move-object v2, v1

    .line 541
    move-object v1, v3

    .line 542
    move-object/from16 v3, v18

    .line 543
    .line 544
    goto :goto_9

    .line 545
    :cond_10
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 546
    .line 547
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    const-string/jumbo v7, "success"

    .line 556
    .line 557
    .line 558
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    if-eqz v7, :cond_11

    .line 563
    .line 564
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 565
    .line 566
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    const v3, 0x1040d3e

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    iput v8, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 578
    .line 579
    move-object v3, v2

    .line 580
    move-object v2, v5

    .line 581
    const v7, 0x10802db

    .line 582
    .line 583
    .line 584
    goto :goto_9

    .line 585
    :cond_11
    const-string/jumbo v7, "exception"

    .line 586
    .line 587
    .line 588
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    if-eqz v3, :cond_12

    .line 593
    .line 594
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 595
    .line 596
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 605
    .line 606
    move-object v1, v3

    .line 607
    move/from16 v7, v16

    .line 608
    .line 609
    goto :goto_7

    .line 610
    :cond_12
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 611
    .line 612
    new-instance v3, Landroid/content/Intent;

    .line 613
    .line 614
    const-string/jumbo v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 615
    .line 616
    .line 617
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-static {v1, v8, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 625
    .line 626
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    iput v13, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 635
    .line 636
    move/from16 v7, v16

    .line 637
    .line 638
    goto :goto_8

    .line 639
    :goto_9
    move-object v8, v1

    .line 640
    move-object v4, v3

    .line 641
    move v3, v7

    .line 642
    move-object v7, v8

    .line 643
    goto :goto_b

    .line 644
    :cond_13
    if-ne v2, v6, :cond_14

    .line 645
    .line 646
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 647
    .line 648
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 657
    .line 658
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    const v3, 0x1040d44

    .line 663
    .line 664
    .line 665
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    const v7, 0x1080337

    .line 670
    .line 671
    .line 672
    goto :goto_a

    .line 673
    :cond_14
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 674
    .line 675
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 684
    .line 685
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    const v3, 0x1040d40

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    const v7, 0x10802db

    .line 697
    .line 698
    .line 699
    :goto_a
    move-object v4, v1

    .line 700
    move-object v8, v4

    .line 701
    move v3, v7

    .line 702
    move-object v7, v2

    .line 703
    move-object v2, v5

    .line 704
    :goto_b
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 705
    .line 706
    iget-boolean v9, v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 707
    .line 708
    xor-int/2addr v9, v6

    .line 709
    if-eqz v9, :cond_15

    .line 710
    .line 711
    iput-boolean v6, v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 712
    .line 713
    iput-object v5, v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 714
    .line 715
    :cond_15
    move-object/from16 v1, p0

    .line 716
    .line 717
    move-object v5, v7

    .line 718
    move-object v6, v8

    .line 719
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    if-eqz v1, :cond_16

    .line 728
    .line 729
    iget v2, v1, Landroid/app/Notification;->flags:I

    .line 730
    .line 731
    or-int/lit8 v2, v2, 0x11

    .line 732
    .line 733
    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 734
    .line 735
    iget v2, v1, Landroid/app/Notification;->defaults:I

    .line 736
    .line 737
    const/4 v3, 0x4

    .line 738
    or-int/2addr v2, v3

    .line 739
    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 740
    .line 741
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 742
    .line 743
    const-string/jumbo v3, "notification"

    .line 744
    .line 745
    .line 746
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    check-cast v2, Landroid/app/NotificationManager;

    .line 751
    .line 752
    new-instance v3, Landroid/app/NotificationChannel;

    .line 753
    .line 754
    const-string/jumbo v4, "sdcard_encryption_channel"

    .line 755
    .line 756
    .line 757
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 758
    .line 759
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    const/4 v5, 0x2

    .line 768
    invoke-direct {v3, v4, v0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 772
    .line 773
    .line 774
    sget v0, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 775
    .line 776
    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 777
    .line 778
    .line 779
    :cond_16
    return-void
.end method

.method public final startCryptSDCardSettingsActivity()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "isCryptSDCardSettings : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DirEncryptServiceHelper"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v2, "com.android.settings.Settings$CryptSDCardSettingsActivity"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string/jumbo v0, "startCryptSDCardSettingsActivity"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance v0, Landroid/content/Intent;

    .line 52
    .line 53
    const-string/jumbo v2, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/high16 v2, 0x10400000

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    sget-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v2, "startCryptSDCardSettingsActivity Failed to start intent activity"

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    return-void
.end method
