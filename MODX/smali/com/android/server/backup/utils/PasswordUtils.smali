.class public abstract Lcom/android/server/backup/utils/PasswordUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .locals 3

    .line 1
    const-string v0, "BackupManagerService"

    .line 3
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    .line 9
    const/16 v2, 0x100

    .line 11
    invoke-direct {v1, p1, p2, p3, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 14
    invoke-virtual {p0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    const-string p0, "PBKDF2 unavailable!"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    const-string p0, "Invalid key spec for PBKDF2!"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 7
    mul-int/lit8 v1, v0, 0x2

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v2

    .line 13
    if-ne v1, v2, :cond_1

    .line 15
    new-array v0, v0, [B

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_0

    .line 24
    div-int/lit8 v2, v1, 0x2

    .line 26
    add-int/lit8 v3, v1, 0x2

    .line 28
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const/16 v4, 0x10

    .line 34
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 37
    move-result v1

    .line 38
    int-to-byte v1, v1

    .line 39
    aput-byte v1, v0, v2

    .line 41
    move v1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string v0, "Hex string must have an even number of digits"

    .line 48
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method
