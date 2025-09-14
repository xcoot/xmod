.class public Lcom/android/server/locksettings/UnifiedProfilePasswordCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CACHE_TIMEOUT_SECONDS:I


# instance fields
.field public final mEncryptedPasswords:Landroid/util/SparseArray;

.field public final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x7

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-int v0, v0

    .line 10
    sput v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final removePassword(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v2, "com.android.server.locksettings.unified_profile_cache_v2_"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v3, "com.android.server.locksettings.unified_profile_cache_"

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_3

    .line 50
    :catch_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    :try_start_2
    const-string v2, "UnifiedProfilePasswordCache"

    .line 67
    .line 68
    const-string v3, "Cannot delete key"

    .line 69
    .line 70
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, [B

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    monitor-exit v0

    .line 99
    return-void

    .line 100
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p0
.end method

.method public final storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v2, "com.android.server.locksettings.unified_profile_cache_v2_"

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    const-string v2, "AES"

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    invoke-direct {v3, v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x100

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v3, "GCM"

    .line 64
    .line 65
    filled-new-array {v3}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    .line 74
    .line 75
    const/16 v3, 0x67

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v3, "NoPadding"

    .line 82
    .line 83
    filled-new-array {v3}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, p3, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    sget p4, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    .line 101
    .line 102
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {v2, p3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 114
    .line 115
    .line 116
    move-result-object p3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    const-string p4, "AES/GCM/NoPadding"

    .line 118
    .line 119
    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-virtual {p4, v3, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p4}, Ljavax/crypto/Cipher;->getIV()[B

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    filled-new-array {p3, p2}, [[B

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iget-object p0, p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 147
    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catch_0
    move-exception p0

    .line 153
    :try_start_3
    const-string p1, "UnifiedProfilePasswordCache"

    .line 154
    .line 155
    const-string p2, "Cannot encrypt"

    .line 156
    .line 157
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .line 159
    .line 160
    :goto_0
    monitor-exit v0

    .line 161
    return-void

    .line 162
    :catch_1
    move-exception p0

    .line 163
    const-string p1, "UnifiedProfilePasswordCache"

    .line 164
    .line 165
    const-string p2, "Cannot generate key"

    .line 166
    .line 167
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 172
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    throw p0
.end method
