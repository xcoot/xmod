.class public final Lcom/android/server/knox/dar/KeyProtector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/knox/dar/KeyProtector;


# direct methods
.method public static attach(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string v0, "_"

    .line 5
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static checkSecretKey(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getKeyStore()Ljava/security/KeyStore;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "Failed to check secret key - "

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string v1, "KeyProtectorBase"

    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public static decryptFast([B[B)[B
    .locals 6

    .line 1
    const-string v0, "KeyProtector"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 6
    array-length v2, p0

    .line 7
    const/16 v3, 0x20

    .line 9
    if-ne v2, v3, :cond_1

    .line 11
    if-nez p1, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    const/16 v3, 0xc

    .line 17
    :try_start_0
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 20
    move-result-object v2

    .line 21
    array-length v4, p1

    .line 22
    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 25
    move-result-object p1

    .line 26
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    const-string v4, "AES"

    .line 30
    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 33
    const-string p0, "AES/GCM/NoPadding"

    .line 35
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 38
    move-result-object p0

    .line 39
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    .line 41
    const/16 v5, 0x80

    .line 43
    invoke-direct {v4, v5, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {p0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 53
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string/jumbo p1, "fast decryption - Unexpected error"

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_0
    return-object v1

    .line 66
    :cond_1
    :goto_1
    const-string/jumbo p0, "fast decryption - Only supported for 32-bytes key"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v1
.end method

.method public static delete(ILjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->attach(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/knox/dar/KeyProtector;->checkSecretKey(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 12
    invoke-static {v0}, Lcom/android/server/knox/dar/KeyProtector;->checkSecretKey(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-static {v0}, Lcom/android/server/knox/dar/KeyProtector;->deleteSecretKey(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "/ENCRYPTED_KEY_"

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v3, "_"

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v4, "deleteFile - File path : "

    .line 69
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    const-string v4, "KeyProtector"

    .line 81
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v3, Ljava/io/File;

    .line 86
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 95
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 98
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "Unexpected failure while delete key with "

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->attach(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    if-nez v2, :cond_4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "Unexpected failure while delete file with "

    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->attach(ILjava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_4
    return-void
.end method

.method public static deleteSecretKey(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getKeyStore()Ljava/security/KeyStore;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "Failed to delete secret key - "

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string v1, "KeyProtectorBase"

    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public static encryptFast([B[B)[B
    .locals 5

    .line 1
    const-string v0, "KeyProtector"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 6
    array-length v2, p0

    .line 7
    const/16 v3, 0x20

    .line 9
    if-eq v2, v3, :cond_0

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 14
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 19
    const-string v4, "AES"

    .line 21
    invoke-direct {v3, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 24
    const-string p0, "AES/GCM/NoPadding"

    .line 26
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 29
    move-result-object p0

    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-virtual {p0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 34
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 45
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 48
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 51
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 68
    :goto_1
    const-string/jumbo p1, "fast encryption - Unexpected error"

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :goto_2
    return-object v1

    .line 78
    :cond_1
    :goto_3
    const-string/jumbo p0, "fast encryption - Only supported for 32-bytes key"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-object v1
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
    const/16 v2, 0x4e2

    .line 11
    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 17
    return-object v0
.end method

.method public static getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getKeyStore()Ljava/security/KeyStore;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p0, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    move-object v0, v1

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "Failed to get secret key - "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string v2, "KeyProtectorBase"

    .line 31
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :goto_0
    return-object v0
.end method

.method public static protect(ILjava/lang/String;[B)Z
    .locals 8

    .line 1
    const-string v0, "Invalid iv length : "

    .line 3
    const-string v1, "KeyProtector"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_6

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto/16 :goto_8

    .line 12
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->attach(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    :try_start_0
    invoke-static {v3}, Lcom/android/server/knox/dar/KeyProtector;->setSecretKey(Ljava/lang/String;)Z

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_5

    .line 22
    invoke-static {v3}, Lcom/android/server/knox/dar/KeyProtector;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 25
    move-result-object v4

    .line 26
    const-string v5, "AES/GCM/NoPadding"

    .line 28
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 31
    move-result-object v5

    .line 32
    const/4 v6, 0x1

    .line 33
    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 36
    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    .line 43
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 44
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 46
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    if-nez v3, :cond_1

    .line 51
    move v5, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    array-length v5, v3

    .line 54
    :goto_0
    const/16 v7, 0xc

    .line 56
    if-eq v5, v7, :cond_2

    .line 58
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(ILjava/lang/String;)V

    .line 76
    return v2

    .line 77
    :catch_0
    move-exception p2

    .line 78
    goto/16 :goto_6

    .line 80
    :cond_2
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 83
    invoke-virtual {v4, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 89
    move-result-object p2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "/ENCRYPTED_KEY_"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v3, "_"

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v4, "writeToFile - File path : "

    .line 131
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v3

    .line 141
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v3, Ljava/io/File;

    .line 146
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    .line 150
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    .line 152
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :try_start_3
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 158
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 164
    :catch_1
    const-string p0, "Successfully wrote into file!"

    .line 166
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v6

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    move-object v0, v4

    .line 172
    goto :goto_5

    .line 173
    :catch_2
    move-exception p2

    .line 174
    move-object v0, v4

    .line 175
    goto :goto_1

    .line 176
    :catch_3
    move-exception p2

    .line 177
    move-object v0, v4

    .line 178
    goto :goto_3

    .line 179
    :catchall_1
    move-exception p0

    .line 180
    goto :goto_5

    .line 181
    :catch_4
    move-exception p2

    .line 182
    goto :goto_1

    .line 183
    :catch_5
    move-exception p2

    .line 184
    goto :goto_3

    .line 185
    :goto_1
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 188
    if-eqz v0, :cond_3

    .line 190
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 193
    goto :goto_4

    .line 194
    :goto_3
    :try_start_7
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 197
    if-eqz v0, :cond_3

    .line 199
    goto :goto_2

    .line 200
    :catch_6
    :cond_3
    :goto_4
    const-string p2, "Failed to write into file..."

    .line 202
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(ILjava/lang/String;)V

    .line 208
    return v2

    .line 209
    :goto_5
    if-eqz v0, :cond_4

    .line 211
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 214
    :catch_7
    :cond_4
    throw p0

    .line 215
    :goto_6
    const-string v0, "Failed to concatenate byte arrays"

    .line 217
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    invoke-static {p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(ILjava/lang/String;)V

    .line 226
    return v2

    .line 227
    :catch_8
    move-exception p0

    .line 228
    goto :goto_7

    .line 229
    :cond_5
    :try_start_9
    new-instance p0, Ljava/lang/Exception;

    .line 231
    const-string p1, "Unexpected failure while set key"

    .line 233
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 236
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 237
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    invoke-static {v3}, Lcom/android/server/knox/dar/KeyProtector;->deleteSecretKey(Ljava/lang/String;)Z

    .line 243
    return v2

    .line 244
    :cond_6
    :goto_8
    const-string p0, "Wrong input parameter..."

    .line 246
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v2
.end method

.method public static setSecretKey(Ljava/lang/String;)Z
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "AES"

    .line 3
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/security/SecureRandom;

    .line 9
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 12
    const/16 v2, 0x100

    .line 14
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 17
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getKeyStore()Ljava/security/KeyStore;

    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Landroid/security/keystore/KeyProtection$Builder;

    .line 27
    const/4 v3, 0x3

    .line 28
    invoke-direct {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 31
    const-string v3, "GCM"

    .line 33
    filled-new-array {v3}, [Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 40
    move-result-object v2

    .line 41
    const-string v3, "NoPadding"

    .line 43
    filled-new-array {v3}, [Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 55
    move-result-object v2

    .line 56
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    .line 58
    invoke-direct {v4, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 61
    invoke-virtual {v2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, p0, v4, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    const-string v2, "Failed to set secret key - "

    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    const-string v1, "KeyProtectorBase"

    .line 86
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v3, 0x0

    .line 93
    :goto_0
    return v3
.end method
