.class public final Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GCM_INSECURE_NONCE_BYTES:[B


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field public final mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->GCM_INSECURE_NONCE_BYTES:[B

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 9
    .line 10
    return-void
.end method

.method public static ensureDecryptionKeyIsValid(ILcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;)V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p1, p1, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->mKey:Ljavax/crypto/SecretKey;

    .line 8
    .line 9
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 10
    .line 11
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->GCM_INSECURE_NONCE_BYTES:[B

    .line 12
    .line 13
    const/16 v3, 0x80

    .line 14
    .line 15
    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Landroid/security/keystore/KeyPermanentlyInvalidatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :catch_1
    :goto_0
    return-void

    .line 26
    :goto_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "The platform key for user "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, " became invalid."

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v0, "PlatformKeyManager"

    .line 48
    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public static getDecryptAlias(II)Ljava/lang/String;
    .locals 3

    .line 1
    const-string/jumbo v0, "com.android.server.locksettings.recoverablekeystore/platform/"

    .line 2
    .line 3
    .line 4
    const-string v1, "/"

    .line 5
    .line 6
    const-string v2, "/decrypt"

    .line 7
    .line 8
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getEncryptAlias(II)Ljava/lang/String;
    .locals 3

    .line 1
    const-string/jumbo v0, "com.android.server.locksettings.recoverablekeystore/platform/"

    .line 2
    .line 3
    .line 4
    const-string v1, "/"

    .line 5
    .line 6
    const-string v2, "/encrypt"

    .line 7
    .line 8
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 8
    .line 9
    const-string v2, "AndroidKeyStore"

    .line 10
    .line 11
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;-><init>(Ljava/security/KeyStore;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    new-instance p1, Ljava/security/KeyStoreException;

    .line 28
    .line 29
    const-string v0, "Unable to load keystore."

    .line 30
    .line 31
    invoke-direct {p1, v0, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method


# virtual methods
.method public final generateAndLoadKey(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "AES"

    .line 12
    .line 13
    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v4, 0x100

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v4, Landroid/security/keystore/KeyProtection$Builder;

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const-string v5, "GCM"

    .line 33
    .line 34
    filled-new-array {v5}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v4, v6}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v6, "NoPadding"

    .line 43
    .line 44
    filled-new-array {v6}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v4, v7}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const/4 v7, 0x1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v4, v7}, Landroid/security/keystore/KeyProtection$Builder;->setUnlockedDeviceRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 56
    .line 57
    .line 58
    :cond_0
    :try_start_0
    new-instance v8, Ljava/security/KeyStore$SecretKeyEntry;

    .line 59
    .line 60
    invoke-direct {v8, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    move-object v9, v0

    .line 68
    check-cast v9, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 69
    .line 70
    iget-object v9, v9, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 71
    .line 72
    invoke-virtual {v9, v2, v8, v4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    .line 81
    .line 82
    invoke-direct {v3, v7}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 83
    .line 84
    .line 85
    filled-new-array {v5}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    filled-new-array {v6}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2, v3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Landroid/content/ContentValues;

    .line 121
    .line 122
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string/jumbo v3, "user_id"

    .line 126
    .line 127
    .line 128
    const-string/jumbo v4, "platform_key_generation_id"

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v2, v3, p2, v4}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    filled-new-array {p2}, [Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    new-instance v0, Landroid/content/ContentValues;

    .line 150
    .line 151
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .line 153
    .line 154
    const/4 v3, 0x3

    .line 155
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const-string/jumbo v4, "recovery_status"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    filled-new-array {p1}, [Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string/jumbo v3, "keys"

    .line 174
    .line 175
    .line 176
    const-string/jumbo v4, "user_id = ?"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v3, v0, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    const-string/jumbo p0, "user_metadata"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p0, v2, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :catch_0
    move-exception p2

    .line 190
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    const-class v0, Landroid/app/KeyguardManager;

    .line 193
    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    check-cast p0, Landroid/app/KeyguardManager;

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-nez p0, :cond_1

    .line 205
    .line 206
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;

    .line 207
    .line 208
    const-string p1, "Screenlock is not set"

    .line 209
    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_1
    throw p2
.end method

.method public final getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 18
    .line 19
    check-cast p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, v1, p1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljavax/crypto/SecretKey;

    .line 29
    .line 30
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    .line 31
    .line 32
    invoke-direct {p1, v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;-><init>(ILjavax/crypto/SecretKey;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    .line 37
    .line 38
    const-string p1, "KeyStore doesn\'t contain key "

    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->init(I)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Regenerating permanently invalid Platform key for user "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "."

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "PlatformKeyManager"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->regenerate(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final getEncryptKeyInternal(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 18
    .line 19
    check-cast p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, v1, p1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljavax/crypto/SecretKey;

    .line 29
    .line 30
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    .line 31
    .line 32
    invoke-direct {p1, v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;-><init>(ILjavax/crypto/SecretKey;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    .line 37
    .line 38
    const-string p1, "KeyStore doesn\'t contain key "

    .line 39
    .line 40
    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0

    .line 1
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final init(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->isKeyLoaded(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "PlatformKeyManager"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, "Platform key generation "

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " exists already."

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const/4 v1, -0x1

    .line 41
    const/4 v3, 0x1

    .line 42
    if-ne v0, v1, :cond_1

    .line 43
    .line 44
    const-string v0, "Generating initial platform key generation ID."

    .line 45
    .line 46
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, "Platform generation ID was "

    .line 55
    .line 56
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, " but no entry was present in AndroidKeyStore. Generating fresh key."

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    add-int/2addr v3, v0

    .line 75
    :goto_0
    const v0, 0xf4628

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->generateAndLoadKey(II)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final invalidatePlatformKey(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v1, p0

    .line 11
    check-cast v1, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :cond_0
    return-void
.end method

.method public final isKeyLoaded(II)Z
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptAlias(II)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptAlias(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method

.method public regenerate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Landroid/os/RemoteException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getPlatformKeyGenerationId(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->invalidatePlatformKey(II)V

    .line 13
    .line 14
    .line 15
    add-int/2addr v2, v0

    .line 16
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->generateAndLoadKey(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
