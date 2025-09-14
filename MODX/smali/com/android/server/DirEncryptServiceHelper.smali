.class public final Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mMountSDcardToHelper:Z

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

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 14
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 19
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 21
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 25
    const-string v2, ""

    .line 27
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 33
    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 35
    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 37
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 39
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 44
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 46
    new-instance v1, Ljava/lang/Object;

    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 53
    const-wide/16 v1, -0x1

    .line 55
    iput-wide v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 57
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    .line 59
    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    .line 62
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 64
    new-instance v2, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 66
    invoke-direct {v2, p0, p1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    .line 69
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 71
    new-instance v2, Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 73
    invoke-direct {v2, p1}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 78
    const-string/jumbo p0, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    .line 81
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 83
    invoke-static {p0, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, v1, p0, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    new-instance v1, Ljava/util/Date;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v2

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 19
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

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

    .line 27
    const-string v2, "DirEncryptServiceHelper"

    .line 29
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "Unknown"

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

    .line 4
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 6
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 11
    move-result v1

    .line 12
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 15
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 18
    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v3, :cond_0

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

    .line 30
    move v3, v0

    .line 31
    :cond_1
    const-string/jumbo v5, "sec.fle.encryption.status"

    .line 34
    const-string v6, ""

    .line 36
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v7, "checkSdCardMetafile result:"

    .line 45
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v7, " unlocked:"

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, " Policy:"

    .line 61
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, " skipMounting:"

    .line 69
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    const-string v6, "DirEncryptServiceHelper"

    .line 81
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string/jumbo v2, "encrypted"

    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v2

    .line 91
    const-string/jumbo v7, "checkSdCardMetafile but user locked yet"

    .line 94
    if-eqz v2, :cond_3

    .line 96
    const-string v1, "ENC_META_CHECK : Encryption State Normal"

    .line 98
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v3, :cond_2

    .line 103
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 107
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 109
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 111
    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    const-string/jumbo v2, "decrypting"

    .line 122
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v8

    .line 126
    const-string v9, "ENC_META_CHECK : EAS Policy Set"

    .line 128
    if-nez v8, :cond_6

    .line 130
    const-string/jumbo v8, "encrypting"

    .line 133
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_4

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    if-ne v1, v4, :cond_5

    .line 142
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    .line 148
    goto :goto_2

    .line 149
    :cond_5
    const-string v1, "ENC_META_CHECK : Normal SD Card"

    .line 151
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 156
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 158
    const/4 v1, 0x3

    .line 159
    const-string/jumbo v2, "done"

    .line 162
    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v2

    .line 170
    if-eqz v2, :cond_7

    .line 172
    if-ne v1, v4, :cond_7

    .line 174
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    .line 180
    goto :goto_2

    .line 181
    :cond_7
    const-string v1, "SD card has encrypting/decrypting state -> Self Encrypting/Decrypting!!"

    .line 183
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-eqz v3, :cond_8

    .line 188
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 192
    :cond_8
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 194
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 196
    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 203
    :goto_2
    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 205
    return-void
.end method

.method public final clearNotification()V
    .locals 2

    .line 1
    const-string v0, "DirEncryptServiceHelper"

    .line 3
    const-string/jumbo v1, "clearNotification"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 11
    const-string/jumbo v0, "notification"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/NotificationManager;

    .line 20
    sget v0, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 25
    return-void
.end method

.method public final doWorkForUSBState(Ljava/lang/String;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "doWorkForUSBState:: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "DirEncryptServiceHelper"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string/jumbo v0, "vold.decrypt"

    .line 24
    const-string v2, "0"

    .line 26
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v2, "trigger_restart_min_framework"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    const-string p0, "Do not work if encryption lock page"

    .line 41
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 45
    :cond_0
    const-string v0, "HiddenMount"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    const-string/jumbo v2, "encrypted"

    .line 54
    const-string/jumbo v3, "sec.fle.encryption.status"

    .line 57
    const/4 v4, 0x1

    .line 58
    const-string v5, ""

    .line 60
    const/4 v6, 0x0

    .line 61
    if-eqz v0, :cond_5

    .line 63
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 69
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    .line 71
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 76
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 78
    if-eqz p1, :cond_4

    .line 80
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 82
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_2

    .line 92
    const-string/jumbo p1, "encrypting"

    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_1

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

    .line 106
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 109
    move-result-object p0

    .line 110
    if-eqz p0, :cond_3

    .line 112
    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_10

    .line 118
    invoke-interface {p0, v4}, Landroid/os/storage/IStorageManager;->encryptExternalStorage(Z)I

    .line 121
    goto/16 :goto_1

    .line 123
    :cond_3
    const-string p0, "Can\'t get storagemanager service"

    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance p0, Landroid/os/RemoteException;

    .line 130
    const-string p1, "Could not contact storagemanager service"

    .line 132
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    const-string p0, "Unable to communicate with Mountservice"

    .line 138
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto/16 :goto_1

    .line 143
    :cond_4
    :try_start_1
    const-string/jumbo p1, "vold.crypto.ext_migrate"

    .line 146
    invoke-static {p1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    const-string v0, "1"

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_10

    .line 158
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->checkSdCardMetafile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    goto/16 :goto_1

    .line 163
    :catch_1
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    goto/16 :goto_1

    .line 169
    :cond_5
    const-string v0, "MoveMount"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v0

    .line 175
    const-string v7, "Mount"

    .line 177
    const-string/jumbo v8, "success"

    .line 180
    const/4 v9, 0x3

    .line 181
    const/4 v10, 0x2

    .line 182
    if-eqz v0, :cond_9

    .line 184
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_7

    .line 190
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 192
    const/16 v0, 0x8

    .line 194
    if-eq p1, v0, :cond_7

    .line 196
    const-string p1, "Since encrypt is OFF: no final mount command (DECRYPTED)"

    .line 198
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 204
    invoke-virtual {p0, v9, v6, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 207
    const-string/jumbo p1, "delete uuid"

    .line 210
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 215
    if-nez p1, :cond_6

    .line 217
    invoke-virtual {p0, v10, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 220
    goto/16 :goto_1

    .line 222
    :cond_6
    const-string/jumbo p0, "don\'t send encryption notification"

    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    goto/16 :goto_1

    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 233
    move-result p1

    .line 234
    if-nez p1, :cond_8

    .line 236
    const-string/jumbo p1, "looks like encryption policies were received while SD card decryption was on going (DECRYPTING)!!"

    .line 239
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0, v10, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 245
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 248
    const-string/jumbo p1, "busy"

    .line 251
    invoke-virtual {p0, v9, v6, v6, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 254
    goto/16 :goto_1

    .line 256
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    .line 259
    move-result p0

    .line 260
    if-eqz p0, :cond_10

    .line 262
    const-string p0, "MOVE_MOUNT => ENCRYPTING, ENCRYPTED or OTHER_ENCRYPT"

    .line 264
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    goto/16 :goto_1

    .line 269
    :cond_9
    const-string/jumbo v0, "mounted"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    move-result v0

    .line 276
    const-string/jumbo v11, "free"

    .line 279
    if-eqz v0, :cond_b

    .line 281
    const-string p1, "Update SD card encryption status"

    .line 283
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string/jumbo p1, "sec.vold.ext_encrypted_type"

    .line 289
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    move-result-object p1

    .line 293
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 297
    const-string/jumbo v3, "block"

    .line 300
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_a

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_a

    .line 312
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 314
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 317
    invoke-virtual {p0, v10, v4, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 320
    invoke-virtual {p0, v10, v6, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    .line 325
    const-string v0, "ENCRYPT Response admin : "

    .line 327
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    .line 333
    move-result v0

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object p1

    .line 341
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    .line 347
    move-result-object p1

    .line 348
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 350
    iput-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 352
    goto :goto_1

    .line 353
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 356
    invoke-virtual {p0, v9, v6, v6, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 359
    goto :goto_1

    .line 360
    :cond_b
    const-string/jumbo v0, "removed"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_c

    .line 369
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 371
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 373
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 375
    const-string p1, "SD card removed"

    .line 377
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 383
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 386
    invoke-virtual {p0, v6, v6, v6, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 389
    goto :goto_1

    .line 390
    :cond_c
    const-string/jumbo v0, "unmounted"

    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_e

    .line 399
    const-string p1, "SD card unmounted"

    .line 401
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 406
    if-nez p1, :cond_d

    .line 408
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 411
    :cond_d
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 413
    if-ne p1, v4, :cond_10

    .line 415
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 417
    const/16 p1, 0xa

    .line 419
    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 423
    goto :goto_1

    .line 424
    :cond_e
    const-string v0, "bad_removal"

    .line 426
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result p1

    .line 430
    if-eqz p1, :cond_10

    .line 432
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 434
    const-string p1, "SD card bad removed"

    .line 436
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 441
    if-nez p1, :cond_f

    .line 443
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 446
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 449
    invoke-virtual {p0, v6, v6, v6, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    .line 452
    :cond_f
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 454
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 456
    :cond_10
    :goto_1
    return-void
.end method

.method public final getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/Notification$Builder;

    .line 3
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 20
    :cond_0
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 23
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 26
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    .line 28
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 31
    invoke-virtual {p0, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 38
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 41
    const-string/jumbo p0, "sdcard_encryption_channel"

    .line 44
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 47
    return-object v0
.end method

.method public final getTopClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "activity"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 31
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, ""

    .line 38
    :goto_0
    return-object p0
.end method

.method public final isAdminApplied()I
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    .line 3
    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 8
    const-string/jumbo v1, "device_policy"

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 25
    iput p0, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

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

    .line 4
    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v2, "persist.vold.ext_encrypted_type"

    .line 13
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    const-string/jumbo v2, "isSdCardEncryped state: "

    .line 26
    const-string v3, " isExistMeta: "

    .line 28
    const-string v4, " isEncryptionType: "

    .line 30
    invoke-static {v2, p0, v3, v0, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v2

    .line 34
    const-string v3, "DirEncryptServiceHelper"

    .line 36
    invoke-static {v2, v1, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz p0, :cond_1

    .line 41
    const-string/jumbo v2, "mounted"

    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 50
    const-string/jumbo p0, "block"

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_0

    .line 59
    const-string/jumbo p0, "encrypted"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_1

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

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "notifyEncryptionStatusChanged: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, " "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 34
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_0
    if-ge v2, v1, :cond_0

    .line 41
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 43
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 46
    move-result-object v3

    .line 47
    move-object v4, v3

    .line 48
    check-cast v4, Lcom/samsung/android/security/IDirEncryptServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :try_start_1
    const-string v3, "DirEncryptServiceHelper"

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v6, "Listener :"

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 74
    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

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

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    const-string v6, "Listener failed: "

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v3

    .line 108
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_1

    .line 112
    :catch_1
    const-string v3, "DirEncryptServiceHelper"

    .line 114
    const-string v4, "Listener dead"

    .line 116
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 124
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

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

    .line 4
    const-string v1, "DirEncryptServiceHelper"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 11
    return-void
.end method

.method public final showNotification(IILjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    const-string v4, ""

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v9, 0x2

    .line 14
    const v11, 0x1040d3f

    .line 17
    const v12, 0x1040d43

    .line 20
    if-eq v1, v6, :cond_13

    .line 22
    const/4 v13, 0x6

    .line 23
    const/4 v14, 0x5

    .line 24
    const v15, 0x1040d3c

    .line 27
    const v16, 0x10802da

    .line 30
    const v7, 0x1040d41

    .line 33
    const v17, 0x1080336

    .line 36
    const/high16 v10, 0xc000000

    .line 38
    const/4 v8, 0x0

    .line 39
    if-eq v1, v9, :cond_d

    .line 41
    const/4 v9, 0x3

    .line 42
    if-eq v1, v9, :cond_b

    .line 44
    if-eq v1, v14, :cond_7

    .line 46
    if-eq v1, v13, :cond_5

    .line 48
    const/4 v3, 0x7

    .line 49
    if-eq v1, v3, :cond_4

    .line 51
    const/16 v3, 0xa

    .line 53
    if-eq v1, v3, :cond_3

    .line 55
    const/16 v3, 0xb

    .line 57
    if-eq v1, v3, :cond_1

    .line 59
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 61
    iget-boolean v1, v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 63
    xor-int/2addr v1, v6

    .line 64
    if-eqz v1, :cond_0

    .line 66
    iput-boolean v6, v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 68
    iput-object v5, v0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 70
    :cond_0
    return-void

    .line 71
    :cond_1
    if-ne v2, v6, :cond_2

    .line 73
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    move/from16 v16, v17

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    :goto_0
    iput v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 118
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 120
    new-instance v4, Landroid/content/Intent;

    .line 122
    const-string/jumbo v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 125
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {v3, v8, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

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

    .line 138
    goto/16 :goto_b

    .line 140
    :cond_3
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object v1

    .line 146
    const v2, 0x1040d4b

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object v2

    .line 159
    const v3, 0x1040d4a

    .line 162
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 168
    new-instance v4, Landroid/content/Intent;

    .line 170
    const-string/jumbo v7, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    .line 173
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {v3, v8, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 179
    move-result-object v3

    .line 180
    iput v8, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 182
    const v4, 0x108007b

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

    .line 192
    :cond_4
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    move-result-object v1

    .line 198
    const v2, 0x1040d76

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 210
    move-result-object v2

    .line 211
    const v3, 0x1040d75

    .line 214
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 218
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 220
    new-instance v7, Landroid/content/Intent;

    .line 222
    const-string/jumbo v9, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 225
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    const-string v9, "adminStart"

    .line 230
    const-string v11, "1"

    .line 232
    invoke-virtual {v7, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-static {v3, v8, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

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

    .line 245
    goto/16 :goto_b

    .line 247
    :cond_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 250
    move-result v1

    .line 251
    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 253
    if-ne v2, v6, :cond_6

    .line 255
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 264
    move-result-object v1

    .line 265
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 274
    move-result-object v2

    .line 275
    move/from16 v16, v17

    .line 277
    goto :goto_2

    .line 278
    :cond_6
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 288
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 297
    move-result-object v2

    .line 298
    :goto_2
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 300
    new-instance v4, Landroid/content/Intent;

    .line 302
    const-string/jumbo v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 305
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-static {v3, v8, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 311
    move-result-object v3

    .line 312
    const/4 v4, 0x4

    .line 313
    iput v4, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 315
    goto/16 :goto_1

    .line 317
    :cond_7
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 320
    move-result v1

    .line 321
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 323
    monitor-enter v3

    .line 324
    :try_start_0
    iget-wide v9, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 326
    const-wide/16 v11, -0x1

    .line 328
    cmp-long v4, v9, v11

    .line 330
    if-nez v4, :cond_8

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 335
    move-result-wide v9

    .line 336
    iput-wide v9, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

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

    .line 343
    iput v1, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    .line 345
    iput v2, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    .line 347
    if-nez v1, :cond_9

    .line 349
    iput-boolean v8, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 351
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 353
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    goto :goto_4

    .line 357
    :cond_9
    const/16 v0, 0x64

    .line 359
    if-ne v0, v1, :cond_a

    .line 361
    iput-boolean v6, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 363
    iput-object v5, v4, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

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

    .line 371
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 380
    move-result-object v1

    .line 381
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 383
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 390
    move-result-object v2

    .line 391
    goto :goto_6

    .line 392
    :cond_c
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 401
    move-result-object v1

    .line 402
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 411
    move-result-object v2

    .line 412
    :goto_6
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 414
    new-instance v4, Landroid/content/Intent;

    .line 416
    const-string/jumbo v7, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 419
    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-static {v3, v8, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

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

    .line 432
    goto/16 :goto_b

    .line 434
    :cond_d
    const/16 v1, 0x8

    .line 436
    const v4, 0x1040d3d

    .line 439
    if-ne v2, v6, :cond_10

    .line 441
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 450
    move-result-object v2

    .line 451
    const-string/jumbo v9, "success"

    .line 454
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    move-result v9

    .line 458
    if-eqz v9, :cond_e

    .line 460
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 462
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 465
    move-result-object v1

    .line 466
    const v3, 0x1040d42

    .line 469
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 472
    move-result-object v1

    .line 473
    iput v8, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 475
    move-object v3, v2

    .line 476
    move-object v2, v5

    .line 477
    const v7, 0x1080337

    .line 480
    goto/16 :goto_9

    .line 482
    :cond_e
    const-string/jumbo v9, "exception"

    .line 485
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    move-result v3

    .line 489
    if-eqz v3, :cond_f

    .line 491
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 493
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 500
    move-result-object v3

    .line 501
    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 503
    move-object v1, v3

    .line 504
    move/from16 v7, v17

    .line 506
    :goto_7
    move-object v3, v2

    .line 507
    move-object v2, v5

    .line 508
    goto/16 :goto_9

    .line 510
    :cond_f
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 512
    new-instance v3, Landroid/content/Intent;

    .line 514
    const-string/jumbo v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 517
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    invoke-static {v1, v8, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 523
    move-result-object v1

    .line 524
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 526
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 533
    move-result-object v3

    .line 534
    iput v14, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 536
    move/from16 v7, v17

    .line 538
    :goto_8
    move-object/from16 v18, v2

    .line 540
    move-object v2, v1

    .line 541
    move-object v1, v3

    .line 542
    move-object/from16 v3, v18

    .line 544
    goto :goto_9

    .line 545
    :cond_10
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 547
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 554
    move-result-object v2

    .line 555
    const-string/jumbo v7, "success"

    .line 558
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    move-result v7

    .line 562
    if-eqz v7, :cond_11

    .line 564
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 566
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 569
    move-result-object v1

    .line 570
    const v3, 0x1040d3e

    .line 573
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 576
    move-result-object v1

    .line 577
    iput v8, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 579
    move-object v3, v2

    .line 580
    move-object v2, v5

    .line 581
    const v7, 0x10802db

    .line 584
    goto :goto_9

    .line 585
    :cond_11
    const-string/jumbo v7, "exception"

    .line 588
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    move-result v3

    .line 592
    if-eqz v3, :cond_12

    .line 594
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 596
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 599
    move-result-object v3

    .line 600
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 603
    move-result-object v3

    .line 604
    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 606
    move-object v1, v3

    .line 607
    move/from16 v7, v16

    .line 609
    goto :goto_7

    .line 610
    :cond_12
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 612
    new-instance v3, Landroid/content/Intent;

    .line 614
    const-string/jumbo v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 617
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-static {v1, v8, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 623
    move-result-object v1

    .line 624
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 626
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 629
    move-result-object v3

    .line 630
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 633
    move-result-object v3

    .line 634
    iput v13, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 636
    move/from16 v7, v16

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

    .line 646
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 648
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 651
    move-result-object v1

    .line 652
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 655
    move-result-object v1

    .line 656
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 658
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 661
    move-result-object v2

    .line 662
    const v3, 0x1040d44

    .line 665
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 668
    move-result-object v2

    .line 669
    const v7, 0x1080337

    .line 672
    goto :goto_a

    .line 673
    :cond_14
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 675
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 678
    move-result-object v1

    .line 679
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 682
    move-result-object v1

    .line 683
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 685
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 688
    move-result-object v2

    .line 689
    const v3, 0x1040d40

    .line 692
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 695
    move-result-object v2

    .line 696
    const v7, 0x10802db

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

    .line 706
    iget-boolean v9, v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 708
    xor-int/2addr v9, v6

    .line 709
    if-eqz v9, :cond_15

    .line 711
    iput-boolean v6, v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 713
    iput-object v5, v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 715
    :cond_15
    move-object/from16 v1, p0

    .line 717
    move-object v5, v7

    .line 718
    move-object v6, v8

    .line 719
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 726
    move-result-object v1

    .line 727
    if-eqz v1, :cond_16

    .line 729
    iget v2, v1, Landroid/app/Notification;->flags:I

    .line 731
    or-int/lit8 v2, v2, 0x11

    .line 733
    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 735
    iget v2, v1, Landroid/app/Notification;->defaults:I

    .line 737
    const/4 v3, 0x4

    .line 738
    or-int/2addr v2, v3

    .line 739
    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 741
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 743
    const-string/jumbo v3, "notification"

    .line 746
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 749
    move-result-object v2

    .line 750
    check-cast v2, Landroid/app/NotificationManager;

    .line 752
    new-instance v3, Landroid/app/NotificationChannel;

    .line 754
    const-string/jumbo v4, "sdcard_encryption_channel"

    .line 757
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 759
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 766
    move-result-object v0

    .line 767
    const/4 v5, 0x2

    .line 768
    invoke-direct {v3, v4, v0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 771
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 774
    sget v0, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 776
    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 779
    :cond_16
    return-void
.end method

.method public final startCryptSDCardSettingsActivity()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "isCryptSDCardSettings : "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DirEncryptServiceHelper"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v2, "com.android.settings.Settings$CryptSDCardSettingsActivity"

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string/jumbo v0, "startCryptSDCardSettingsActivity"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Landroid/content/Intent;

    .line 53
    const-string/jumbo v2, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    .line 56
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const/high16 v2, 0x10400000

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    sget-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    .line 66
    if-nez v2, :cond_1

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v2, "startCryptSDCardSettingsActivity Failed to start intent activity"

    .line 80
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    :goto_0
    return-void
.end method
