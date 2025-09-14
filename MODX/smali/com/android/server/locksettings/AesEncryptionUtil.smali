.class public abstract Lcom/android/server/locksettings/AesEncryptionUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 7
    move-result v0

    .line 8
    if-ltz v0, :cond_1

    .line 10
    const/16 v1, 0x20

    .line 12
    if-gt v0, v1, :cond_1

    .line 14
    new-array v0, v0, [B

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 19
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 22
    move-result v1

    .line 23
    if-ltz v1, :cond_0

    .line 25
    new-array v1, v1, [B

    .line 27
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 30
    :try_start_0
    const-string p1, "AES/GCM/NoPadding"

    .line 32
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 35
    move-result-object p1

    .line 36
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    .line 38
    const/16 v3, 0x80

    .line 40
    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-virtual {p1, v0, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 47
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 50
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Ljava/io/IOException;

    .line 55
    const-string v0, "Could not decrypt cipher text"

    .line 57
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    throw p1

    .line 61
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 63
    const-string p1, "Invalid cipher text size: "

    .line 65
    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0

    .line 73
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 75
    const-string p1, "IV out of range: "

    .line 77
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
.end method

.method public static encrypt([BLjavax/crypto/SecretKey;)[B
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 9
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    new-instance v1, Ljava/io/DataOutputStream;

    .line 14
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    :try_start_0
    const-string v2, "AES/GCM/NoPadding"

    .line 19
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v2, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 27
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    .line 34
    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    array-length v2, p1

    .line 36
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 39
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 42
    array-length p1, p0

    .line 43
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 46
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-instance p1, Ljava/io/IOException;

    .line 57
    const-string v0, "Could not encrypt input data"

    .line 59
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    throw p1
.end method
