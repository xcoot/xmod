.class abstract Lcom/android/server/locksettings/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PROTECTOR_SECRET_PERSONALIZATION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application-id"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    .line 9
    return-void
.end method

.method public static decrypt([BLjavax/crypto/SecretKey;)[B
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 1
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 2
    array-length v2, p0

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 3
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 4
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B[B[B)[B
    .locals 1

    .line 6
    filled-new-array {p0}, [[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object p0

    .line 7
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 8
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([BLjavax/crypto/SecretKey;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to decrypt"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encrypt([BLjavax/crypto/SecretKey;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 5
    array-length v1, p1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    const-class v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 7
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 8
    filled-new-array {p1, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid tag length: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bits"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid iv length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    const-string v1, " bytes"

    .line 11
    invoke-static {p1, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encrypt([B[B[B)[B
    .locals 1

    .line 16
    filled-new-array {p0}, [[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object p0

    .line 17
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 18
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([BLjavax/crypto/SecretKey;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to encrypt"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKeyStore()Ljava/security/KeyStore;
    .locals 3

    .line 1
    const-string v0, "AndroidKeyStore"

    .line 3
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    .line 9
    const/16 v2, 0x67

    .line 11
    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 17
    return-object v0
.end method

.method public static migrateLockSettingsKey(Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    .line 3
    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 9
    const-wide/16 v2, -0x1

    .line 11
    iput-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 13
    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 15
    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    .line 17
    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 20
    const/4 v3, 0x2

    .line 21
    iput v3, v2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 23
    const/16 v3, 0x67

    .line 25
    int-to-long v3, v3

    .line 26
    iput-wide v3, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 28
    iput-object p0, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    const-string v4, "Migrating key "

    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    const-string v3, "SyntheticPasswordCrypto"

    .line 46
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {v0, v2}, Landroid/security/AndroidKeyStoreMaintenance;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)I

    .line 52
    move-result p0

    .line 53
    const/4 v0, 0x1

    .line 54
    if-nez p0, :cond_0

    .line 56
    return v0

    .line 57
    :cond_0
    const/4 v2, 0x7

    .line 58
    if-ne p0, v2, :cond_1

    .line 60
    const-string p0, "Key does not exist"

    .line 62
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v0

    .line 66
    :cond_1
    const/16 v2, 0x14

    .line 68
    if-ne p0, v2, :cond_2

    .line 70
    const-string p0, "Key already exists"

    .line 72
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v0

    .line 76
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object p0

    .line 80
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 83
    move-result-object p0

    .line 84
    const-string v0, "Failed to migrate key: %d"

    .line 86
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v1
.end method

.method public static native nativeKBKDF([B[B[BI)[B
.end method

.method public static native nativeKDF([B[B[BI)[B
.end method

.method public static native nativePBKDF2([B[BII)[B
.end method

.method public static native nativeRBG(I)[B
.end method

.method public static varargs personalizedHash([B[[B)[B
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "SHA-512"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, p0

    .line 8
    const/16 v2, 0x80

    .line 10
    if-gt v1, v2, :cond_1

    .line 12
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    array-length p0, p1

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, p0, :cond_0

    .line 23
    aget-object v2, p1, v1

    .line 25
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string p1, "Personalization too long"

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    const-string v0, "NoSuchAlgorithmException for SHA-512"

    .line 50
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw p1
.end method
