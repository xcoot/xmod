.class public final Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;


# instance fields
.field public final mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

.field public final mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

.field public final mContext:Landroid/content/Context;

.field public final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field public final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field public final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field public final mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

.field public final mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

.field public final mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

.field public final mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field public final mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;)V
    .locals 1

    .line 1
    const-string v0, "RecoverableKeyStoreMgr"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 19
    .line 20
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 21
    .line 22
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 23
    .line 24
    iput-object p10, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p10}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->verifyKnownUsers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    const-string p2, "Failed to verify known users"

    .line 32
    .line 33
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 37
    .line 38
    const-string p2, "AES"

    .line 39
    .line 40
    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    new-instance p3, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    .line 45
    .line 46
    invoke-direct {p3, p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;-><init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V

    .line 47
    .line 48
    .line 49
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    iput-object p11, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    .line 52
    .line 53
    return-void

    .line 54
    :catch_1
    move-exception p0

    .line 55
    const-string p1, "AES keygen algorithm not available. AOSP must support this."

    .line 56
    .line 57
    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 61
    .line 62
    const/16 p2, 0x16

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public static decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B
    .locals 7

    .line 1
    const-string v0, "Failed to decrypt recovery key "

    .line 2
    .line 3
    const-string v1, "RecoverableKeyStoreMgr"

    .line 4
    .line 5
    const/16 v2, 0x16

    .line 6
    .line 7
    const/16 v3, 0x1a

    .line 8
    .line 9
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    .line 12
    .line 13
    sget-object v6, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_RESPONSE_HEADER:[B

    .line 14
    .line 15
    filled-new-array {v6, v5}, [[B

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-static {v6, v4, v5, p1}, Lcom/android/security/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 28
    :try_start_1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    .line 29
    .line 30
    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 31
    .line 32
    invoke-static {v6, p0, v4, p1}, Lcom/android/security/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_2
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :goto_0
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :goto_1
    const-string p1, "Got AEADBadTagException during decrypting recovery key"

    .line 54
    .line 55
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {p1, v3, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :goto_2
    const-string p1, "Got InvalidKeyException during decrypting recovery key"

    .line 81
    .line 82
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 86
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {p1, v3, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :catch_3
    move-exception p0

    .line 108
    goto :goto_3

    .line 109
    :catch_4
    move-exception p0

    .line 110
    goto :goto_4

    .line 111
    :catch_5
    move-exception p0

    .line 112
    goto :goto_5

    .line 113
    :goto_3
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-direct {p1, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :goto_4
    const-string p1, "Got AEADBadTagException during decrypting recovery claim response"

    .line 124
    .line 125
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-direct {p1, v3, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1

    .line 150
    :goto_5
    const-string p1, "Got InvalidKeyException during decrypting recovery claim response"

    .line 151
    .line 152
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-direct {p1, v3, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
.end method

.method public static lockPatternUtilsToKeyguardType(I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "Screen lock is not set"

    .line 3
    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq p0, v2, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    return v0

    .line 24
    :cond_2
    const/4 p0, 0x2

    .line 25
    return p0

    .line 26
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public static recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x1a

    .line 15
    .line 16
    const-string v4, "RecoverableKeyStoreMgr"

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :try_start_0
    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    filled-new-array {v7, v2}, [[B

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    :goto_1
    const/4 v2, 0x0

    .line 52
    invoke-static {v2, p0, v7, v6}, Lcom/android/security/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    goto :goto_2

    .line 62
    :catch_1
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :catch_2
    move-exception p0

    .line 65
    goto :goto_4

    .line 66
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "Got AEADBadTagException during decrypting application key with alias: "

    .line 69
    .line 70
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "Got InvalidKeyException during decrypting application key with alias: "

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 102
    .line 103
    const-string v0, "Failed to recover key with alias \'"

    .line 104
    .line 105
    const-string v1, "\': "

    .line 106
    .line 107
    invoke-static {v0, v5, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {p1, v3, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :goto_4
    const-string p1, "Missing SecureBox algorithm. AOSP required to support this."

    .line 127
    .line 128
    invoke-static {v4, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 132
    .line 133
    const/16 v0, 0x16

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-direct {p1, v0, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_3

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_2

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_2
    const-string p0, "Failed to recover any of the application keys."

    .line 157
    .line 158
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 162
    .line 163
    invoke-direct {p1, v3, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_3
    :goto_5
    return-object v0
.end method


# virtual methods
.method public final checkRecoverKeyStorePermission()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Caller "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " doesn\'t have RecoverKeyStore permission."

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "android.permission.RECOVER_KEYSTORE"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->registerRecoveryAgent(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final checkVerifyRemoteLockscreenPermission()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Caller "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " doesn\'t have CHECK_REMOTE_LOCKSCREEN permission."

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "android.permission.CHECK_REMOTE_LOCKSCREEN"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->registerRecoveryAgent(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "alias is null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    const/16 v8, 0x16

    .line 18
    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 20
    .line 21
    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    .line 26
    .line 27
    move v3, v7

    .line 28
    move v4, v0

    .line 29
    move-object v5, p1

    .line 30
    move-object v6, p2

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)[B

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 36
    .line 37
    invoke-virtual {v1, v7, v0, p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(II[BLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v7, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    return-object p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {p1, v8, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :catch_1
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :catch_2
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catch_3
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :goto_0
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 63
    .line 64
    const/16 p2, 0x17

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :goto_1
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {p1, v8, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public final getAlias(IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    const-string p0, "Get "

    .line 9
    .line 10
    const-string v0, "/"

    .line 11
    .line 12
    invoke-static {p1, p2, p0, v0, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "RecoverableAppKeyStore"

    .line 17
    .line 18
    invoke-static {p0, p3, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p3, Landroid/system/keystore2/KeyDescriptor;

    .line 30
    .line 31
    invoke-direct {p3}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput v1, p3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 36
    .line 37
    const-wide/16 v1, -0x1

    .line 38
    .line 39
    iput-wide v1, p3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 40
    .line 41
    iput-object p0, p3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, p3, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 44
    .line 45
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/16 p1, 0x105

    .line 50
    .line 51
    invoke-virtual {p0, p3, p2, p1}, Landroid/security/KeyStore2;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-wide p0, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 56
    .line 57
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string/jumbo p1, "recoverable_key:"

    .line 62
    .line 63
    .line 64
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "%s%016X"

    .line 69
    .line 70
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    return-object p1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 p2, 0x6

    .line 81
    if-ne p1, p2, :cond_1

    .line 82
    .line 83
    const-string p1, "Failed to get grant for KeyStore key - key not found"

    .line 84
    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 89
    .line 90
    const/16 p2, 0x1e

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_1
    const-string p1, "Failed to get grant for KeyStore key."

    .line 101
    .line 102
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 106
    .line 107
    const/16 p2, 0x16

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method public final handleVerifyCredentialResponse(Lcom/android/internal/widget/VerifyCredentialResponse;I)Landroid/app/RemoteLockscreenValidationResult;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {v2, p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBadRemoteGuessCounter(II)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->finishSession(I)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 20
    .line 21
    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ne p0, v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    int-to-long p0, p0

    .line 44
    new-instance p2, Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 45
    .line 46
    invoke-direct {p2}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    invoke-virtual {p2, v0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, p0, p1}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setTimeoutMillis(J)Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBadRemoteGuessCounter(I)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    add-int/2addr p0, v1

    .line 68
    invoke-virtual {v2, p2, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBadRemoteGuessCounter(II)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 72
    .line 73
    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x2

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public final importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    check-cast p3, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, [B

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 39
    .line 40
    invoke-virtual {v4, p1, p2, v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(II[BLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v5, "Import "

    .line 52
    .line 53
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, " -> "

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v5, "RecoverableKeyStoreMgr"

    .line 72
    .line 73
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-object v0
.end method

.method public final importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "alias is null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "keyBytes is null"

    .line 10
    .line 11
    .line 12
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    array-length v0, p2

    .line 16
    const/16 v1, 0x20

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v9, 0x16

    .line 29
    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    .line 33
    .line 34
    .line 35
    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    .line 37
    .line 38
    move v4, v1

    .line 39
    move v5, v0

    .line 40
    move-object v6, p1

    .line 41
    move-object v7, p2

    .line 42
    move-object v8, p3

    .line 43
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B[B)V

    .line 44
    .line 45
    .line 46
    iget-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 47
    .line 48
    invoke-virtual {p3, v1, v0, p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(II[BLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    return-object p0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {p1, v9, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :catch_1
    move-exception p0

    .line 68
    goto :goto_0

    .line 69
    :catch_2
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :catch_3
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :goto_0
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 74
    .line 75
    const/16 p2, 0x17

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :goto_1
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-direct {p1, v9, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_0
    const-string p0, "RecoverableKeyStoreMgr"

    .line 102
    .line 103
    const-string p1, "The given key for import doesn\'t have the required length 256"

    .line 104
    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 109
    .line 110
    const/16 p1, 0x1b

    .line 111
    .line 112
    const-string p2, "The given key does not contain 256 bits."

    .line 113
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public initRecoveryService(Ljava/lang/String;[B)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static/range {p1 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificates()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v2, 0x1c

    .line 32
    .line 33
    const-string v3, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Landroid/os/ServiceSpecificException;

    .line 45
    .line 46
    const-string v1, "Invalid root certificate alias"

    .line 47
    .line 48
    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    iget-object v9, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 53
    .line 54
    invoke-virtual {v9, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v10, "RecoverableKeyStoreMgr"

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v4, "Root of trust for recovery agent + "

    .line 65
    .line 66
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, " is assigned for the first time to "

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_3

    .line 93
    .line 94
    const-string v4, "Root of trust for recovery agent "

    .line 95
    .line 96
    const-string v5, " is changed to "

    .line 97
    .line 98
    const-string v11, " from  "

    .line 99
    .line 100
    invoke-static {v8, v4, v5, v6, v11}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v4, v1, v10}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_1
    iget-object v1, v9, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    new-instance v5, Landroid/content/ContentValues;

    .line 114
    .line 115
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v11, "active_root_of_trust"

    .line 119
    .line 120
    invoke-virtual {v5, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 124
    .line 125
    .line 126
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    filled-new-array {v11, v12}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    const-string/jumbo v12, "recovery_service_metadata"

    .line 139
    .line 140
    .line 141
    const-string/jumbo v13, "user_id = ? AND uid = ?"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v12, v5, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    int-to-long v4, v4

    .line 149
    const-wide/16 v11, 0x0

    .line 150
    .line 151
    cmp-long v4, v4, v11

    .line 152
    .line 153
    if-ltz v4, :cond_f

    .line 154
    .line 155
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;

    .line 156
    .line 157
    .line 158
    move-result-object v4
    :try_end_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    iget-object v5, v9, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-static {v6}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    const-string v1, "_id"

    .line 173
    .line 174
    const-string/jumbo v2, "user_id"

    .line 175
    .line 176
    .line 177
    const-string/jumbo v14, "uid"

    .line 178
    .line 179
    .line 180
    const-string/jumbo v13, "root_alias"

    .line 181
    .line 182
    .line 183
    const-string/jumbo v11, "cert_serial"

    .line 184
    .line 185
    .line 186
    filled-new-array {v1, v2, v14, v13, v11}, [Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v17

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    filled-new-array {v1, v2, v5}, [Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v19

    .line 202
    const-string/jumbo v18, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 203
    .line 204
    .line 205
    const/16 v20, 0x0

    .line 206
    .line 207
    const-string/jumbo v16, "root_of_trust"

    .line 208
    .line 209
    .line 210
    const/16 v21, 0x0

    .line 211
    .line 212
    const/16 v22, 0x0

    .line 213
    .line 214
    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 219
    .line 220
    .line 221
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/4 v5, 0x0

    .line 223
    if-nez v2, :cond_4

    .line 224
    .line 225
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_4
    const/4 v12, 0x1

    .line 230
    if-le v2, v12, :cond_5

    .line 231
    .line 232
    :try_start_2
    const-string v11, "RecoverableKeyStoreDb"

    .line 233
    .line 234
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 235
    .line 236
    new-instance v12, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v2, " entries found for userId="

    .line 245
    .line 246
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v2, " uid="

    .line 253
    .line 254
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v2, ". Should only ever be 0 or 1."

    .line 261
    .line 262
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v11, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    move-object v2, v0

    .line 275
    goto/16 :goto_7

    .line 276
    .line 277
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 278
    .line 279
    .line 280
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-eqz v11, :cond_6

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 292
    .line 293
    .line 294
    move-result-wide v11

    .line 295
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 296
    .line 297
    .line 298
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    goto :goto_2

    .line 300
    :goto_3
    iget-wide v11, v4, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->serial:J

    .line 301
    .line 302
    if-eqz v5, :cond_8

    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 305
    .line 306
    .line 307
    move-result-wide v1

    .line 308
    cmp-long v1, v1, v11

    .line 309
    .line 310
    if-ltz v1, :cond_8

    .line 311
    .line 312
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_8

    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 319
    .line 320
    .line 321
    move-result-wide v0

    .line 322
    cmp-long v0, v0, v11

    .line 323
    .line 324
    if-nez v0, :cond_7

    .line 325
    .line 326
    const-string v0, "The cert file serial number is the same, so skip updating."

    .line 327
    .line 328
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :cond_7
    const-string v0, "The cert file serial number is older than the one in database."

    .line 333
    .line 334
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    new-instance v1, Landroid/os/ServiceSpecificException;

    .line 338
    .line 339
    const/16 v2, 0x1d

    .line 340
    .line 341
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v1

    .line 345
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v2, "Updating the certificate with the new serial number "

    .line 348
    .line 349
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    invoke-static {v6}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-static {v6}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getValidationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    :try_start_3
    const-string v3, "Getting and validating a random endpoint certificate"

    .line 371
    .line 372
    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    new-instance v3, Ljava/security/SecureRandom;

    .line 376
    .line 377
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 378
    .line 379
    .line 380
    iget-object v5, v4, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    .line 381
    .line 382
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    invoke-virtual {v4, v3, v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getEndpointCert(ILjava/util/Date;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 391
    .line 392
    .line 393
    move-result-object v1
    :try_end_3
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 394
    :try_start_4
    const-string v2, "Saving the randomly chosen endpoint certificate to database"

    .line 395
    .line 396
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    invoke-virtual {v9, v7, v8, v6, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J

    .line 400
    .line 401
    .line 402
    move-result-wide v1

    .line 403
    const-wide/16 v13, 0x0

    .line 404
    .line 405
    cmp-long v1, v1, v13

    .line 406
    .line 407
    if-lez v1, :cond_b

    .line 408
    .line 409
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 410
    .line 411
    move v2, v7

    .line 412
    move v3, v8

    .line 413
    move-wide v4, v11

    .line 414
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertSerial(IIJLjava/lang/String;)J

    .line 415
    .line 416
    .line 417
    move-result-wide v1

    .line 418
    cmp-long v1, v1, v13

    .line 419
    .line 420
    if-ltz v1, :cond_a

    .line 421
    .line 422
    const-string/jumbo v1, "snapshot_version"

    .line 423
    .line 424
    .line 425
    invoke-virtual {v9, v7, v8, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    if-eqz v1, :cond_9

    .line 430
    .line 431
    invoke-virtual {v9, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 432
    .line 433
    .line 434
    const-string v1, "This is a certificate change. Snapshot must be updated"

    .line 435
    .line 436
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    goto :goto_4

    .line 440
    :catch_0
    move-exception v0

    .line 441
    goto :goto_6

    .line 442
    :cond_9
    const-string v1, "This is a certificate change. Snapshot didn\'t exist"

    .line 443
    .line 444
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    :goto_4
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 448
    .line 449
    new-instance v1, Ljava/security/SecureRandom;

    .line 450
    .line 451
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    .line 455
    .line 456
    .line 457
    move-result-wide v3

    .line 458
    const-string/jumbo v5, "counter_id"

    .line 459
    .line 460
    .line 461
    move v1, v7

    .line 462
    move v2, v8

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IIJLjava/lang/String;)J

    .line 464
    .line 465
    .line 466
    move-result-wide v0

    .line 467
    const-wide/16 v2, 0x0

    .line 468
    .line 469
    cmp-long v0, v0, v2

    .line 470
    .line 471
    if-gez v0, :cond_c

    .line 472
    .line 473
    const-string v0, "Failed to set the counter id in the local DB."

    .line 474
    .line 475
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_a
    new-instance v0, Landroid/os/ServiceSpecificException;

    .line 480
    .line 481
    const-string v1, "Failed to set the certificate serial number in the local DB."

    .line 482
    .line 483
    const/16 v2, 0x16

    .line 484
    .line 485
    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw v0

    .line 489
    :cond_b
    if-ltz v1, :cond_d

    .line 490
    .line 491
    :cond_c
    :goto_5
    return-void

    .line 492
    :cond_d
    new-instance v0, Landroid/os/ServiceSpecificException;

    .line 493
    .line 494
    const-string v1, "Failed to set the certificate path in the local DB."

    .line 495
    .line 496
    const/16 v2, 0x16

    .line 497
    .line 498
    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 499
    .line 500
    .line 501
    throw v0
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 502
    :goto_6
    const-string v1, "Failed to encode CertPath"

    .line 503
    .line 504
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .line 506
    .line 507
    new-instance v1, Landroid/os/ServiceSpecificException;

    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    const/16 v2, 0x19

    .line 514
    .line 515
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw v1

    .line 519
    :catch_1
    move-exception v0

    .line 520
    const-string v1, "Invalid endpoint cert"

    .line 521
    .line 522
    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .line 524
    .line 525
    new-instance v1, Landroid/os/ServiceSpecificException;

    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    const/16 v2, 0x1c

    .line 532
    .line 533
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 534
    .line 535
    .line 536
    throw v1

    .line 537
    :goto_7
    if-eqz v1, :cond_e

    .line 538
    .line 539
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 540
    .line 541
    .line 542
    goto :goto_8

    .line 543
    :catchall_1
    move-exception v0

    .line 544
    move-object v1, v0

    .line 545
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 546
    .line 547
    .line 548
    :cond_e
    :goto_8
    throw v2

    .line 549
    :catch_2
    move-exception v0

    .line 550
    move-object v1, v0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string v2, "Failed to parse the input as a cert file: "

    .line 554
    .line 555
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .line 571
    .line 572
    new-instance v0, Landroid/os/ServiceSpecificException;

    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    const/16 v2, 0x19

    .line 579
    .line 580
    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 581
    .line 582
    .line 583
    throw v0

    .line 584
    :cond_f
    new-instance v0, Landroid/os/ServiceSpecificException;

    .line 585
    .line 586
    const-string v1, "Failed to set the root of trust in the local DB."

    .line 587
    .line 588
    const/16 v2, 0x16

    .line 589
    .line 590
    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 591
    .line 592
    .line 593
    throw v0
.end method

.method public startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x19

    .line 16
    .line 17
    :try_start_0
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_3

    .line 18
    .line 19
    :try_start_1
    const-string v2, "EC"

    .line 20
    .line 21
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_3

    .line 25
    :try_start_2
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 26
    .line 27
    invoke-direct {v3, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 31
    .line 32
    .line 33
    move-result-object p2
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_3

    .line 34
    invoke-static {p2}, Lcom/android/security/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/16 v3, 0x41

    .line 39
    .line 40
    invoke-static {p3, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    new-instance v2, Ljava/security/SecureRandom;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 53
    .line 54
    .line 55
    const/16 v3, 0x10

    .line 56
    .line 57
    new-array v3, v3, [B

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p5

    .line 67
    check-cast p5, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 68
    .line 69
    invoke-virtual {p5}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getSecret()[B

    .line 70
    .line 71
    .line 72
    move-result-object p5

    .line 73
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 74
    .line 75
    invoke-direct {v2, p1, p5, v3, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;-><init>(Ljava/lang/String;[B[B[B)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-nez p1, :cond_0

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 89
    .line 90
    new-instance v4, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string p1, "Received VaultParams for recovery: "

    .line 112
    .line 113
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const-string p1, "RecoverableKeyStoreMgr"

    .line 128
    .line 129
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :try_start_3
    const-string p0, "SHA-256"

    .line 133
    .line 134
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p5}, Ljava/security/MessageDigest;->update([B)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    sget-object p5, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_CLAIM_HEADER:[B

    .line 151
    .line 152
    filled-new-array {p5, p3, p4}, [[B

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    filled-new-array {p0, v3}, [[B

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const/4 p4, 0x0

    .line 169
    invoke-static {p2, p4, p3, p0}, Lcom/android/security/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    .line 170
    .line 171
    .line 172
    move-result-object p0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0

    .line 173
    return-object p0

    .line 174
    :catch_0
    move-exception p0

    .line 175
    goto :goto_0

    .line 176
    :catch_1
    move-exception p0

    .line 177
    goto :goto_1

    .line 178
    :goto_0
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :goto_1
    const-string p2, "SecureBox algorithm missing. AOSP must support this."

    .line 189
    .line 190
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .line 192
    .line 193
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 194
    .line 195
    const/16 p2, 0x16

    .line 196
    .line 197
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 206
    .line 207
    const/16 p1, 0x1c

    .line 208
    .line 209
    const-string p2, "The public keys given in verifierPublicKey and vaultParams do not match."

    .line 210
    .line 211
    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0

    .line 215
    :catch_2
    move-exception p0

    .line 216
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 217
    .line 218
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    throw p1
    :try_end_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    :catch_3
    move-exception p0

    .line 223
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 224
    .line 225
    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 234
    .line 235
    const-string p1, "Only a single KeyChainProtectionParams is supported"

    .line 236
    .line 237
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0
.end method
