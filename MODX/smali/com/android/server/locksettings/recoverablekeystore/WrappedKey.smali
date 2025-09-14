.class public final Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKeyMaterial:[B

.field public final mKeyMetadata:[B

.field public final mNonce:[B

.field public final mPlatformKeyGenerationId:I

.field public final mRecoveryStatus:I


# direct methods
.method public constructor <init>([B[B[BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    .line 8
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMetadata:[B

    .line 10
    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    .line 12
    iput p5, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    .line 14
    return-void
.end method

.method public static fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .locals 9

    .line 1
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    .line 9
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->mKey:Ljavax/crypto/SecretKey;

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 19
    :try_start_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 22
    move-result-object v5
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 25
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 28
    move-result-object v4

    .line 29
    const/4 v8, 0x1

    .line 30
    iget v7, p0, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->mGenerationId:I

    .line 32
    move-object v3, p1

    .line 33
    move-object v6, p2

    .line 34
    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    .line 37
    return-object p1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getCause()Ljava/lang/Throwable;

    .line 42
    move-result-object p1

    .line 43
    instance-of p2, p1, Ljava/security/KeyStoreException;

    .line 45
    if-eqz p2, :cond_0

    .line 47
    check-cast p1, Ljava/security/KeyStoreException;

    .line 49
    throw p1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 52
    const-string p2, "IllegalBlockSizeException should not be thrown by AES/GCM/NoPadding mode."

    .line 54
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw p1

    .line 58
    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 60
    const-string p1, "Android does not support AES/GCM/NoPadding. This should never happen."

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0

    .line 66
    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 68
    const-string/jumbo p1, "key does not expose encoded material. It cannot be wrapped."

    .line 71
    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0
.end method
