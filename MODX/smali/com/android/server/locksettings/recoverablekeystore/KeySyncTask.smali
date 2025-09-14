.class public final Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final SCRYPT_PARAM_N:I = 0x1000

.field static final SCRYPT_PARAM_OUTLEN_BYTES:I = 0x20

.field static final SCRYPT_PARAM_P:I = 0x1

.field static final SCRYPT_PARAM_R:I = 0x8


# instance fields
.field public final mCredential:[B

.field public final mCredentialType:I

.field public final mCredentialUpdated:Z

.field public final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field public final mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field public final mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field public final mScrypt:Landroid/security/Scrypt;

.field public final mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field public final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 6
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 8
    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 10
    iput p5, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 12
    if-eqz p6, :cond_0

    .line 14
    array-length p1, p6

    .line 15
    invoke-static {p6, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 23
    iput-boolean p7, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    .line 25
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 27
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 29
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 31
    iput-object p10, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    .line 33
    return-void
.end method

.method public static getUiFormat(I)I
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p0, v1, :cond_0

    .line 5
    return v0

    .line 6
    :cond_0
    if-ne p0, v0, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    const/4 p0, 0x2

    .line 10
    return p0
.end method

.method public static hashCredentialsBySaltedSha256([B[B)[B
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    add-int/2addr v0, v1

    .line 4
    add-int/lit8 v0, v0, 0x8

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    array-length v1, p0

    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 22
    array-length p0, p1

    .line 23
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 32
    move-result-object p0

    .line 33
    :try_start_0
    const-string p1, "SHA-256"

    .line 35
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object p1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/RuntimeException;

    .line 51
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    throw p1
.end method


# virtual methods
.method public final generateAndStoreCounterId(I)J
    .locals 9

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 9
    move-result-wide v7

    .line 10
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 12
    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 14
    const-string/jumbo v6, "counter_id"

    .line 17
    move v3, p1

    .line 18
    move-wide v4, v7

    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IIJLjava/lang/String;)J

    .line 22
    move-result-wide p0

    .line 23
    const-wide/16 v0, 0x0

    .line 25
    cmp-long p0, p0, v0

    .line 27
    if-ltz p0, :cond_0

    .line 29
    return-wide v7

    .line 30
    :cond_0
    const-string p0, "KeySyncTask"

    .line 32
    const-string p1, "Failed to set the snapshot version in the local DB."

    .line 34
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance p0, Ljava/io/IOException;

    .line 39
    const-string p1, "Failed to set counterId in the local DB."

    .line 41
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
.end method

.method public final getKeysToSync(I)Ljava/util/Map;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 3
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->init(I)V

    .line 8
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    .line 11
    move-result-object v2

    .line 12
    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->ensureDecryptionKeyIsValid(ILcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;)V
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "Regenerating permanently invalid Platform key for user "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "."

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    const-string v3, "PlatformKeyManager"

    .line 39
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->regenerate(I)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    .line 48
    move-result-object v2

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 51
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 53
    iget v1, v2, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mGenerationId:I

    .line 55
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getAllKeys(III)Ljava/util/Map;

    .line 58
    move-result-object p0

    .line 59
    new-instance p1, Ljava/util/HashMap;

    .line 61
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string v0, "AES/GCM/NoPadding"

    .line 66
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 69
    move-result-object v0

    .line 70
    check-cast p0, Ljava/util/HashMap;

    .line 72
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 75
    move-result-object v3

    .line 76
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v3

    .line 80
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 98
    iget v6, v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    .line 100
    if-ne v6, v1, :cond_0

    .line 102
    iget-object v6, v2, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mKey:Ljavax/crypto/SecretKey;

    .line 104
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    .line 106
    const/16 v8, 0x80

    .line 108
    iget-object v9, v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    .line 110
    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 113
    const/4 v8, 0x4

    .line 114
    invoke-virtual {v0, v8, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 117
    :try_start_1
    iget-object v6, v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    .line 119
    const-string v7, "AES"

    .line 121
    const/4 v8, 0x3

    .line 122
    invoke-virtual {v0, v6, v7, v8}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    iget-object v5, v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMetadata:[B

    .line 130
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    goto :goto_1

    .line 138
    :catch_1
    move-exception v5

    .line 139
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    const-string v7, "Error unwrapping recoverable key with alias \'"

    .line 145
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v4, "\'"

    .line 153
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v4

    .line 160
    const-string v6, "WrappedKey"

    .line 162
    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    goto :goto_1

    .line 166
    :cond_0
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;

    .line 168
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 170
    const-string p1, "WrappedKey with alias \'"

    .line 172
    const-string v0, "\' was wrapped with platform key "

    .line 174
    invoke-static {p1, v4, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    move-result-object p1

    .line 178
    iget v0, v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, ", not platform key "

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;-><init>(Ljava/lang/String;)V

    .line 198
    throw p0

    .line 199
    :cond_1
    return-object p1
.end method

.method public getSnapshotVersion(IZ)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 3
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 5
    const-string/jumbo v2, "snapshot_version"

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x1

    .line 14
    if-eqz p2, :cond_1

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v1

    .line 23
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object p2

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide v3

    .line 35
    add-long/2addr v1, v3

    .line 36
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    move-result-object p2

    .line 40
    :goto_2
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 42
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 44
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 47
    move-result-wide v3

    .line 48
    const-string/jumbo v5, "snapshot_version"

    .line 51
    move v2, p1

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IIJLjava/lang/String;)J

    .line 55
    move-result-wide p0

    .line 56
    const-wide/16 v0, 0x0

    .line 58
    cmp-long p0, p0, v0

    .line 60
    if-ltz p0, :cond_3

    .line 62
    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_3
    const-string p0, "KeySyncTask"

    .line 69
    const-string p1, "Failed to set the snapshot version in the local DB."

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p0, Ljava/io/IOException;

    .line 76
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0
.end method

.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    .line 4
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->syncKeys()V

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v2

    .line 18
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :catchall_1
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v1

    .line 23
    :try_start_4
    const-string v2, "KeySyncTask"

    .line 25
    const-string v3, "Unexpected exception thrown during KeySyncTask"

    .line 27
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 30
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 32
    if-eqz p0, :cond_0

    .line 34
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 38
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 40
    if-eqz p0, :cond_1

    .line 42
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 45
    :cond_1
    throw v1
.end method

.method public final syncKeys()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 7
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBadRemoteGuessCounter(I)I

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 17
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBadRemoteGuessCounter(II)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 25
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 27
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    .line 32
    move-result v0

    .line 33
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 35
    const v2, 0xf4628

    .line 38
    const/4 v3, -0x1

    .line 39
    const-string v4, "KeySyncTask"

    .line 41
    if-ne v1, v3, :cond_2

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string v3, "Credentials are not set for user "

    .line 47
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget v3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 52
    invoke-static {v1, v3, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 55
    if-ge v0, v2, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 59
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 61
    invoke-virtual {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->invalidatePlatformKey(II)V

    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    if-eq v1, v3, :cond_4

    .line 67
    const/4 v3, 0x1

    .line 68
    if-eq v1, v3, :cond_4

    .line 70
    const/4 v3, 0x3

    .line 71
    if-eq v1, v3, :cond_4

    .line 73
    const/4 v5, 0x4

    .line 74
    if-eq v1, v5, :cond_4

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    const-string v5, "Unsupported credential type "

    .line 80
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget v5, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 85
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v5, " for user "

    .line 90
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v5, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 95
    invoke-static {v1, v5, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 98
    if-ge v0, v2, :cond_3

    .line 100
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 102
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 104
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 106
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/ContentValues;

    .line 112
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v2

    .line 119
    const-string/jumbo v3, "recovery_status"

    .line 122
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    filled-new-array {p0}, [Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    const-string/jumbo v2, "keys"

    .line 136
    const-string/jumbo v3, "user_id = ?"

    .line 139
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    :cond_3
    return-void

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 145
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 147
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mContext:Landroid/content/Context;

    .line 149
    const-class v2, Landroid/app/KeyguardManager;

    .line 151
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/app/KeyguardManager;

    .line 157
    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_5

    .line 163
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 165
    if-nez v0, :cond_5

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "Can\'t sync keys for locked user "

    .line 171
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 176
    invoke-static {v0, p0, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 179
    return-void

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 182
    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryAgents(I)Ljava/util/List;

    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    move-result-object v1

    .line 194
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_6

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 209
    move-result v2

    .line 210
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->syncKeysForAgent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 214
    :catch_0
    move-exception v3

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    .line 217
    const-string v6, "IOException during sync for agent "

    .line 219
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v2

    .line 229
    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    goto :goto_0

    .line 233
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_7

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    const-string v1, "No recovery agent initialized for user "

    .line 243
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 248
    invoke-static {v0, p0, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 251
    :cond_7
    return-void
.end method

.method public final syncKeysForAgent(I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v3, p1

    .line 5
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 7
    iget v2, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    .line 12
    move-result-object v0

    .line 13
    const/16 v2, 0x64

    .line 15
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 18
    move-result v0

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    .line 26
    if-eqz v0, :cond_1

    .line 28
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 30
    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 32
    const-string/jumbo v7, "snapshot_version"

    .line 35
    invoke-virtual {v0, v6, v3, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 41
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 43
    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 45
    invoke-virtual {v0, v6, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 51
    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 53
    const-string/jumbo v7, "should_create_snapshot"

    .line 56
    invoke-virtual {v0, v6, v3, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 65
    move-result-wide v6

    .line 66
    const-wide/16 v8, 0x0

    .line 68
    cmp-long v0, v6, v8

    .line 70
    if-eqz v0, :cond_2

    .line 72
    :goto_0
    move v6, v5

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 76
    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 78
    const-string/jumbo v7, "snapshot_version"

    .line 81
    invoke-virtual {v0, v6, v3, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 87
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 89
    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_3

    .line 95
    move v0, v4

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move v0, v5

    .line 98
    :goto_2
    if-eqz v0, :cond_1e

    .line 100
    const-string v6, "KeySyncTask"

    .line 102
    const-string v7, "Recreating most recent snapshot"

    .line 104
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move v6, v0

    .line 108
    :goto_3
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 110
    iget v7, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 112
    invoke-virtual {v0, v7, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    iget-object v7, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 118
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v7

    .line 125
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 127
    iget v8, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 129
    iget-object v9, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 131
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {v7}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v9

    .line 138
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 140
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    move-result-object v10

    .line 144
    const-string v0, "_id"

    .line 146
    const-string/jumbo v11, "user_id"

    .line 149
    const-string/jumbo v12, "uid"

    .line 152
    const-string/jumbo v13, "root_alias"

    .line 155
    const-string/jumbo v15, "cert_path"

    .line 158
    filled-new-array {v0, v11, v12, v13, v15}, [Ljava/lang/String;

    .line 161
    move-result-object v12

    .line 162
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 169
    move-result-object v11

    .line 170
    filled-new-array {v0, v11, v9}, [Ljava/lang/String;

    .line 173
    move-result-object v14

    .line 174
    const-string/jumbo v13, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 177
    const-string/jumbo v11, "root_of_trust"

    .line 180
    const/16 v17, 0x0

    .line 182
    const/4 v0, 0x0

    .line 183
    const/16 v16, 0x0

    .line 185
    move-object v9, v15

    .line 186
    move-object v15, v0

    .line 187
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 190
    move-result-object v10

    .line 191
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    .line 194
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    const-string v11, " uid="

    .line 197
    const-string v12, "RecoverableKeyStoreDb"

    .line 199
    const/4 v13, 0x0

    .line 200
    if-nez v0, :cond_4

    .line 202
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 205
    move-object v0, v13

    .line 206
    goto :goto_5

    .line 207
    :cond_4
    if-le v0, v4, :cond_5

    .line 209
    :try_start_1
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 211
    new-instance v9, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v0, " entries found for userId="

    .line 221
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, ". Should only ever be 0 or 1."

    .line 235
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    invoke-static {v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    goto :goto_4

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    move-object v1, v0

    .line 248
    goto/16 :goto_18

    .line 250
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 256
    move-result v0

    .line 257
    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 260
    move-result v9

    .line 261
    if-eqz v9, :cond_6

    .line 263
    goto :goto_4

    .line 264
    :cond_6
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 267
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 271
    :goto_5
    if-nez v0, :cond_7

    .line 273
    :goto_6
    move-object v8, v13

    .line 274
    goto :goto_8

    .line 275
    :cond_7
    :try_start_2
    const-string v9, "X.509"

    .line 277
    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 280
    move-result-object v9
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    :try_start_3
    new-instance v10, Ljava/io/ByteArrayInputStream;

    .line 283
    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 286
    const-string v0, "PkiPath"

    .line 288
    invoke-virtual {v9, v10, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    .line 291
    move-result-object v0

    .line 292
    move-object v8, v0

    .line 293
    goto :goto_8

    .line 294
    :catch_0
    move-exception v0

    .line 295
    goto :goto_7

    .line 296
    :catch_1
    move-exception v0

    .line 297
    new-instance v9, Ljava/lang/RuntimeException;

    .line 299
    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 302
    throw v9
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 303
    :goto_7
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 305
    const-string v9, "Recovery service CertPath entry cannot be decoded for userId="

    .line 307
    const-string v10, "."

    .line 309
    invoke-static {v8, v3, v9, v11, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    move-result-object v8

    .line 313
    invoke-static {v12, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    goto :goto_6

    .line 317
    :goto_8
    if-eqz v8, :cond_8

    .line 319
    const-string v0, "KeySyncTask"

    .line 321
    const-string v9, "Using the public key in stored CertPath for syncing"

    .line 323
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v8}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    .line 329
    move-result-object v0

    .line 330
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Ljava/security/cert/Certificate;

    .line 336
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 339
    move-result-object v0

    .line 340
    goto :goto_a

    .line 341
    :cond_8
    const-string v0, "KeySyncTask"

    .line 343
    const-string v9, "Using the stored raw public key for syncing"

    .line 345
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 350
    iget v9, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 352
    const-string/jumbo v10, "public_key"

    .line 355
    invoke-virtual {v0, v9, v3, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    .line 358
    move-result-object v0

    .line 359
    if-nez v0, :cond_9

    .line 361
    goto :goto_9

    .line 362
    :cond_9
    :try_start_4
    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    .line 364
    invoke-direct {v10, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_3

    .line 367
    :try_start_5
    const-string v0, "EC"

    .line 369
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 376
    move-result-object v13
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_5} :catch_3

    .line 377
    goto :goto_9

    .line 378
    :catch_2
    move-exception v0

    .line 379
    :try_start_6
    new-instance v10, Ljava/lang/RuntimeException;

    .line 381
    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 384
    throw v10
    :try_end_6
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_6 .. :try_end_6} :catch_3

    .line 385
    :catch_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 387
    const-string v0, "Recovery service public key entry cannot be decoded for userId="

    .line 389
    const-string v10, " uid="

    .line 391
    const-string v11, "."

    .line 393
    invoke-static {v9, v3, v0, v10, v11}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    move-result-object v0

    .line 397
    const-string v9, "RecoverableKeyStoreDb"

    .line 399
    invoke-static {v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_9
    move-object v0, v13

    .line 403
    :goto_a
    if-nez v0, :cond_a

    .line 405
    const-string v0, "KeySyncTask"

    .line 407
    const-string v1, "Not initialized for KeySync: no public key set. Cancelling task."

    .line 409
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 413
    :cond_a
    iget-object v9, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 415
    iget v10, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 417
    const-string/jumbo v11, "server_params"

    .line 420
    invoke-virtual {v9, v10, v3, v11}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    .line 423
    move-result-object v9

    .line 424
    if-nez v9, :cond_b

    .line 426
    const-string v0, "KeySyncTask"

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    .line 430
    const-string v3, "No device ID set for user "

    .line 432
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    iget v1, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 437
    invoke-static {v2, v1, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 440
    return-void

    .line 441
    :cond_b
    iget-object v10, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 443
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    const-string v10, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    .line 448
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    move-result v10

    .line 452
    const/4 v11, 0x3

    .line 453
    const/4 v12, 0x4

    .line 454
    if-eqz v10, :cond_11

    .line 456
    const-string v10, "KeySyncTask"

    .line 458
    const-string v13, "Insecure root certificate is used by recovery agent "

    .line 460
    invoke-static {v3, v13, v10}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v10, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 465
    iget v13, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 467
    iget-object v14, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 469
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    if-nez v14, :cond_c

    .line 474
    goto :goto_c

    .line 475
    :cond_c
    if-eq v13, v12, :cond_d

    .line 477
    if-eq v13, v11, :cond_d

    .line 479
    goto :goto_c

    .line 480
    :cond_d
    const-string v10, "INSECURE_PSWD_"

    .line 482
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 485
    move-result-object v10

    .line 486
    array-length v13, v14

    .line 487
    array-length v15, v10

    .line 488
    if-ge v13, v15, :cond_e

    .line 490
    goto :goto_c

    .line 491
    :cond_e
    move v13, v5

    .line 492
    :goto_b
    array-length v15, v10

    .line 493
    if-ge v13, v15, :cond_10

    .line 495
    aget-byte v15, v14, v13

    .line 497
    aget-byte v4, v10, v13

    .line 499
    if-eq v15, v4, :cond_f

    .line 501
    :goto_c
    const-string v0, "KeySyncTask"

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    .line 505
    const-string v2, "Non whitelisted credential is used to generate recovery snapshot by "

    .line 507
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    const-string v2, " - ignore attempt."

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    move-result-object v1

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-void

    .line 526
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 528
    const/4 v4, 0x1

    .line 529
    goto :goto_b

    .line 530
    :cond_10
    const-string v4, "KeySyncTask"

    .line 532
    const-string v10, "Whitelisted credential is used to generate snapshot by recovery agent "

    .line 534
    invoke-static {v3, v10, v4}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_11
    iget v4, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 539
    if-eq v4, v12, :cond_13

    .line 541
    if-ne v4, v11, :cond_12

    .line 543
    goto :goto_d

    .line 544
    :cond_12
    move v4, v5

    .line 545
    goto :goto_e

    .line 546
    :cond_13
    :goto_d
    const/4 v4, 0x1

    .line 547
    :goto_e
    const/16 v10, 0x10

    .line 549
    new-array v10, v10, [B

    .line 551
    new-instance v11, Ljava/security/SecureRandom;

    .line 553
    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    .line 556
    invoke-virtual {v11, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 559
    if-eqz v4, :cond_14

    .line 561
    iget-object v12, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 563
    iget-object v11, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    .line 565
    const/16 v16, 0x1

    .line 567
    const/16 v17, 0x20

    .line 569
    const/16 v14, 0x1000

    .line 571
    const/16 v15, 0x8

    .line 573
    move-object v13, v10

    .line 574
    invoke-virtual/range {v11 .. v17}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    .line 577
    move-result-object v11

    .line 578
    goto :goto_f

    .line 579
    :cond_14
    iget-object v11, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:[B

    .line 581
    invoke-static {v10, v11}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsBySaltedSha256([B[B)[B

    .line 584
    move-result-object v11

    .line 585
    :goto_f
    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getKeysToSync(I)Ljava/util/Map;

    .line 588
    move-result-object v12
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 589
    iget-object v13, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 591
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    const-string v13, "TEST_ONLY_INSECURE_CERTIFICATE_ALIAS"

    .line 596
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    move-result v7

    .line 600
    if-eqz v7, :cond_17

    .line 602
    iget-object v7, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 604
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    new-instance v7, Ljava/util/HashMap;

    .line 609
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 612
    check-cast v12, Ljava/util/HashMap;

    .line 614
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 617
    move-result-object v12

    .line 618
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 621
    move-result-object v12

    .line 622
    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 625
    move-result v13

    .line 626
    if-eqz v13, :cond_16

    .line 628
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 631
    move-result-object v13

    .line 632
    check-cast v13, Ljava/util/Map$Entry;

    .line 634
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 637
    move-result-object v14

    .line 638
    check-cast v14, Ljava/lang/String;

    .line 640
    if-eqz v14, :cond_15

    .line 642
    const-string v15, "INSECURE_KEY_ALIAS_KEY_MATERIAL_IS_NOT_PROTECTED_"

    .line 644
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 647
    move-result v15

    .line 648
    if-eqz v15, :cond_15

    .line 650
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 653
    move-result-object v15

    .line 654
    check-cast v15, Ljava/lang/String;

    .line 656
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 659
    move-result-object v16

    .line 660
    move-object/from16 v5, v16

    .line 662
    check-cast v5, Landroid/util/Pair;

    .line 664
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 666
    check-cast v5, Ljavax/crypto/SecretKey;

    .line 668
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 671
    move-result-object v13

    .line 672
    check-cast v13, Landroid/util/Pair;

    .line 674
    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 676
    check-cast v13, [B

    .line 678
    invoke-static {v5, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 681
    move-result-object v5

    .line 682
    invoke-virtual {v7, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    new-instance v5, Ljava/lang/StringBuilder;

    .line 687
    const-string v13, "adding key with insecure alias "

    .line 689
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    const-string v13, " to the recovery snapshot"

    .line 694
    const-string v15, "TestCertHelper"

    .line 696
    invoke-static {v5, v14, v13, v15}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_15
    const/4 v5, 0x0

    .line 700
    goto :goto_10

    .line 701
    :cond_16
    move-object v12, v7

    .line 702
    :cond_17
    :try_start_8
    const-string v5, "AES"

    .line 704
    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 707
    move-result-object v5

    .line 708
    const/16 v7, 0x100

    .line 710
    invoke-virtual {v5, v7}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 713
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 716
    move-result-object v5
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_9

    .line 717
    :try_start_9
    invoke-static {v5, v12}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;

    .line 720
    move-result-object v7
    :try_end_9
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_8

    .line 721
    iget-boolean v13, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    .line 723
    if-eqz v13, :cond_18

    .line 725
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    .line 728
    move-result-wide v13

    .line 729
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 732
    move-result-object v13

    .line 733
    goto :goto_11

    .line 734
    :cond_18
    iget-object v13, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 736
    iget v14, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 738
    const-string/jumbo v15, "counter_id"

    .line 741
    invoke-virtual {v13, v14, v3, v15}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 744
    move-result-object v13

    .line 745
    if-nez v13, :cond_19

    .line 747
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    .line 750
    move-result-wide v13

    .line 751
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 754
    move-result-object v13

    .line 755
    :cond_19
    :goto_11
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 758
    move-result-wide v14

    .line 759
    array-length v2, v9

    .line 760
    add-int/lit8 v2, v2, 0x4d

    .line 762
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 765
    move-result-object v2

    .line 766
    move-object/from16 v18, v8

    .line 768
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 770
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 773
    move-result-object v2

    .line 774
    invoke-static {v0}, Lcom/android/security/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    .line 777
    move-result-object v8

    .line 778
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 781
    move-result-object v2

    .line 782
    invoke-virtual {v2, v14, v15}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 785
    move-result-object v2

    .line 786
    const/16 v8, 0xa

    .line 788
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 791
    move-result-object v2

    .line 792
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 795
    move-result-object v2

    .line 796
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 799
    move-result-object v2

    .line 800
    :try_start_a
    invoke-static {v11, v5}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->locallyEncryptRecoveryKey([BLjavax/crypto/SecretKey;)[B

    .line 803
    move-result-object v5

    .line 804
    const-string v14, "SHA-256"

    .line 806
    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 809
    move-result-object v14

    .line 810
    sget-object v15, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    .line 812
    invoke-virtual {v14, v15}, Ljava/security/MessageDigest;->update([B)V

    .line 815
    invoke-virtual {v14, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 818
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    .line 821
    move-result-object v11

    .line 822
    sget-object v14, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 824
    filled-new-array {v14, v2}, [[B

    .line 827
    move-result-object v2

    .line 828
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 831
    move-result-object v2

    .line 832
    invoke-static {v0, v11, v2, v5}, Lcom/android/security/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    .line 835
    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_a} :catch_6

    .line 836
    if-eqz v4, :cond_1a

    .line 838
    const/16 v2, 0x1000

    .line 840
    invoke-static {v10, v2}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 843
    move-result-object v2

    .line 844
    goto :goto_12

    .line 845
    :cond_1a
    invoke-static {v10}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 848
    move-result-object v2

    .line 849
    :goto_12
    new-instance v4, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 851
    invoke-direct {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    .line 854
    const/16 v5, 0x64

    .line 856
    invoke-virtual {v4, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 859
    move-result-object v4

    .line 860
    iget v5, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 862
    invoke-static {v5}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getUiFormat(I)I

    .line 865
    move-result v5

    .line 866
    invoke-virtual {v4, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 869
    move-result-object v4

    .line 870
    invoke-virtual {v4, v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 873
    move-result-object v2

    .line 874
    const/4 v4, 0x0

    .line 875
    new-array v4, v4, [B

    .line 877
    invoke-virtual {v2, v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setSecret([B)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 880
    move-result-object v2

    .line 881
    invoke-virtual {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 884
    move-result-object v2

    .line 885
    new-instance v4, Ljava/util/ArrayList;

    .line 887
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 890
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    new-instance v2, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 895
    invoke-direct {v2}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 898
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getSnapshotVersion(IZ)I

    .line 901
    move-result v5

    .line 902
    invoke-virtual {v2, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 905
    move-result-object v2

    .line 906
    invoke-virtual {v2, v8}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 909
    move-result-object v2

    .line 910
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 913
    move-result-wide v5

    .line 914
    invoke-virtual {v2, v5, v6}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 917
    move-result-object v2

    .line 918
    invoke-virtual {v2, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 921
    move-result-object v2

    .line 922
    invoke-virtual {v2, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 925
    move-result-object v2

    .line 926
    new-instance v4, Ljava/util/ArrayList;

    .line 928
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 931
    check-cast v7, Ljava/util/HashMap;

    .line 933
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 936
    move-result-object v5

    .line 937
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 940
    move-result-object v5

    .line 941
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 944
    move-result v6

    .line 945
    if-eqz v6, :cond_1b

    .line 947
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 950
    move-result-object v6

    .line 951
    check-cast v6, Ljava/lang/String;

    .line 953
    new-instance v8, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 955
    invoke-direct {v8}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 958
    invoke-virtual {v8, v6}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 961
    move-result-object v8

    .line 962
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    move-result-object v9

    .line 966
    check-cast v9, [B

    .line 968
    invoke-virtual {v8, v9}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 971
    move-result-object v8

    .line 972
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    move-result-object v6

    .line 976
    check-cast v6, Landroid/util/Pair;

    .line 978
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 980
    check-cast v6, [B

    .line 982
    invoke-virtual {v8, v6}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 985
    move-result-object v6

    .line 986
    invoke-virtual {v6}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 989
    move-result-object v6

    .line 990
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    goto :goto_13

    .line 994
    :cond_1b
    invoke-virtual {v2, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 997
    move-result-object v2

    .line 998
    invoke-virtual {v2, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 1001
    move-result-object v0

    .line 1002
    move-object/from16 v13, v18

    .line 1004
    :try_start_b
    invoke-virtual {v0, v13}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_5

    .line 1007
    iget-object v2, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 1009
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    .line 1012
    move-result-object v0

    .line 1013
    const-string v4, "Error persisting snapshot for "

    .line 1015
    monitor-enter v2

    .line 1016
    :try_start_c
    iget-object v5, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->mSnapshotByUid:Landroid/util/SparseArray;

    .line 1018
    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1021
    :try_start_d
    invoke-virtual {v2, v3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->writeToDisk(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1024
    goto :goto_14

    .line 1025
    :catchall_1
    move-exception v0

    .line 1026
    goto :goto_17

    .line 1027
    :catch_4
    move-exception v0

    .line 1028
    :try_start_e
    const-string v5, "RecoverySnapshotStorage"

    .line 1030
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1032
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1034
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1040
    const-string v4, " to disk"

    .line 1042
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    move-result-object v4

    .line 1049
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1052
    :goto_14
    monitor-exit v2

    .line 1053
    iget-object v2, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 1055
    const-string v0, "Snapshot available for agent "

    .line 1057
    monitor-enter v2

    .line 1058
    :try_start_f
    iget-object v4, v2, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    .line 1060
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1063
    move-result-object v4

    .line 1064
    check-cast v4, Landroid/app/PendingIntent;

    .line 1066
    if-nez v4, :cond_1c

    .line 1068
    const-string v4, "RecoverySnapshotLstnrs"

    .line 1070
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1072
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1078
    const-string v0, " but agent has not yet initialized. Will notify agent when it does."

    .line 1080
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1086
    move-result-object v0

    .line 1087
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, v2, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    .line 1092
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1095
    move-result-object v4

    .line 1096
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1099
    monitor-exit v2

    .line 1100
    goto :goto_15

    .line 1101
    :catchall_2
    move-exception v0

    .line 1102
    goto :goto_16

    .line 1103
    :cond_1c
    :try_start_10
    invoke-virtual {v2, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->tryToSendIntent(ILandroid/app/PendingIntent;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1106
    monitor-exit v2

    .line 1107
    :goto_15
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 1109
    iget v2, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    const-wide/16 v4, 0x0

    .line 1116
    const-string/jumbo v6, "should_create_snapshot"

    .line 1119
    move-object v1, v0

    .line 1120
    move/from16 v3, p1

    .line 1122
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IIJLjava/lang/String;)J

    .line 1125
    return-void

    .line 1126
    :goto_16
    monitor-exit v2

    .line 1127
    throw v0

    .line 1128
    :goto_17
    monitor-exit v2

    .line 1129
    throw v0

    .line 1130
    :catch_5
    move-exception v0

    .line 1131
    move-object v1, v0

    .line 1132
    const-string v0, "KeySyncTask"

    .line 1134
    const-string v2, "Cannot serialize CertPath when calling setTrustedHardwareCertPath"

    .line 1136
    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1139
    return-void

    .line 1140
    :catch_6
    move-exception v0

    .line 1141
    const-string v1, "KeySyncTask"

    .line 1143
    const-string v2, "Could not encrypt with recovery key"

    .line 1145
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    return-void

    .line 1149
    :catch_7
    move-exception v0

    .line 1150
    const-string v1, "KeySyncTask"

    .line 1152
    const-string v2, "SecureBox encrypt algorithms unavailable"

    .line 1154
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    return-void

    .line 1158
    :catch_8
    move-exception v0

    .line 1159
    const-string v1, "KeySyncTask"

    .line 1161
    const-string v2, "Should be impossible: could not encrypt application keys with random key"

    .line 1163
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1166
    return-void

    .line 1167
    :catch_9
    move-exception v0

    .line 1168
    const-string v1, "AES should never be unavailable"

    .line 1170
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1173
    return-void

    .line 1174
    :catch_a
    move-exception v0

    .line 1175
    move-object v1, v0

    .line 1176
    const-string v0, "KeySyncTask"

    .line 1178
    const-string v2, "Local database error."

    .line 1180
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1183
    return-void

    .line 1184
    :catch_b
    move-exception v0

    .line 1185
    move-object v1, v0

    .line 1186
    const-string v0, "KeySyncTask"

    .line 1188
    const-string v2, "Loaded keys for same generation ID as platform key, so BadPlatformKeyException should be impossible."

    .line 1190
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    return-void

    .line 1194
    :catch_c
    move-exception v0

    .line 1195
    move-object v1, v0

    .line 1196
    const-string v0, "KeySyncTask"

    .line 1198
    const-string v2, "A screen unlock triggered the key sync flow, so user must have lock screen. This should be impossible."

    .line 1200
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    return-void

    .line 1204
    :catch_d
    move-exception v0

    .line 1205
    move-object v1, v0

    .line 1206
    const-string v0, "KeySyncTask"

    .line 1208
    const-string v2, "Failed to load recoverable keys for sync"

    .line 1210
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    return-void

    .line 1214
    :goto_18
    if-eqz v10, :cond_1d

    .line 1216
    :try_start_11
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1219
    goto :goto_19

    .line 1220
    :catchall_3
    move-exception v0

    .line 1221
    move-object v2, v0

    .line 1222
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1225
    :cond_1d
    :goto_19
    throw v1

    .line 1226
    :cond_1e
    const-string v0, "KeySyncTask"

    .line 1228
    const-string v1, "Key sync not needed."

    .line 1230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return-void
.end method
