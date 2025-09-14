.class public final Lcom/android/server/enterprise/threatdefense/MTDSignature;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mData:[B

.field public final mSignature:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 8
    move-result-object p1

    .line 9
    array-length v1, p1

    .line 10
    const/16 v2, 0x100

    .line 12
    if-le v1, v2, :cond_0

    .line 14
    array-length v1, p1

    .line 15
    sub-int/2addr v1, v2

    .line 16
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mData:[B

    .line 22
    array-length v0, p1

    .line 23
    sub-int/2addr v0, v2

    .line 24
    array-length v1, p1

    .line 25
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mSignature:[B

    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v0, "data size="

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    array-length p1, p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    const-string p1, "MTDSignature"

    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 55
    const-string p1, "Invalid SHA256. please encode the String as UTF_8"

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
.end method

.method public static getCertificate()Ljava/security/cert/Certificate;
    .locals 7

    .line 1
    const-string v0, "IOException"

    .line 3
    const-string v1, "MTDSignature"

    .line 5
    const-string v2, "FileNotFoundException : "

    .line 7
    const-string v3, "CertificateException : "

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 12
    const-string v6, "/etc/mtdl.crt"

    .line 14
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    const-string v6, "X.509"

    .line 19
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 26
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    goto :goto_3

    .line 31
    :catch_0
    move-exception v2

    .line 32
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    goto :goto_3

    .line 36
    :catchall_0
    move-exception v2

    .line 37
    move-object v4, v5

    .line 38
    goto :goto_4

    .line 39
    :catch_1
    move-exception v2

    .line 40
    goto :goto_0

    .line 41
    :catch_2
    move-exception v3

    .line 42
    goto :goto_1

    .line 43
    :catch_3
    move-exception v2

    .line 44
    goto :goto_2

    .line 45
    :catchall_1
    move-exception v2

    .line 46
    goto :goto_4

    .line 47
    :catch_4
    move-exception v2

    .line 48
    move-object v5, v4

    .line 49
    goto :goto_0

    .line 50
    :catch_5
    move-exception v3

    .line 51
    move-object v5, v4

    .line 52
    goto :goto_1

    .line 53
    :catch_6
    move-exception v2

    .line 54
    move-object v5, v4

    .line 55
    goto :goto_2

    .line 56
    :goto_0
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    if-eqz v5, :cond_0

    .line 80
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    goto :goto_3

    .line 84
    :goto_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    if-eqz v5, :cond_0

    .line 105
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 108
    goto :goto_3

    .line 109
    :goto_2
    :try_start_7
    const-string v3, "SecurityException"

    .line 111
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 114
    if-eqz v5, :cond_0

    .line 116
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 119
    :cond_0
    :goto_3
    return-object v4

    .line 120
    :goto_4
    if-eqz v4, :cond_1

    .line 122
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 125
    goto :goto_5

    .line 126
    :catch_7
    move-exception v3

    .line 127
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :cond_1
    :goto_5
    throw v2
.end method

.method public static getPublicKey([B)Ljava/security/PublicKey;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    const-string p0, "X.509"

    .line 9
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 19
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 22
    move-result-object p0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    :goto_0
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    move-object v0, v1

    .line 34
    goto :goto_3

    .line 35
    :catch_1
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    goto :goto_3

    .line 39
    :catch_2
    move-exception p0

    .line 40
    move-object v1, v0

    .line 41
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    if-eqz v1, :cond_0

    .line 46
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 49
    goto :goto_2

    .line 50
    :catch_3
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_0
    :goto_2
    return-object v0

    .line 55
    :goto_3
    if-eqz v0, :cond_1

    .line 57
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 60
    goto :goto_4

    .line 61
    :catch_4
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    :cond_1
    :goto_4
    throw p0
.end method


# virtual methods
.method public final getVerifiedData()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mData:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getCertificate()Ljava/security/cert/Certificate;

    .line 7
    move-result-object v2

    .line 8
    if-eqz v2, :cond_1

    .line 10
    const-string v3, "SHA256withRSA/PSS"

    .line 12
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getPublicKey([B)Ljava/security/PublicKey;

    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 30
    invoke-virtual {v3, v0}, Ljava/security/Signature;->update([B)V

    .line 33
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mSignature:[B

    .line 35
    invoke-virtual {v3, p0}, Ljava/security/Signature;->verify([B)Z

    .line 38
    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 44
    :cond_1
    :goto_0
    const-string p0, "MTDSignature"

    .line 46
    if-eqz v1, :cond_3

    .line 48
    new-instance v1, Ljava/lang/String;

    .line 50
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    sget-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 57
    if-eqz v0, :cond_2

    .line 59
    const-string v0, "Verified !!! data="

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string v0, "Verified !!!"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_1
    return-object v1

    .line 75
    :cond_3
    const-string v0, "Verification failed !!!"

    .line 77
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 p0, 0x0

    .line 81
    return-object p0
.end method
