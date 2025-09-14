.class public final Lcom/android/server/accounts/CryptoHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/accounts/CryptoHelper;


# instance fields
.field public final mEncryptionKey:Ljavax/crypto/SecretKey;

.field public final mMacKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "AES"

    .line 6
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 16
    const-string v0, "HMACSHA256"

    .line 18
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/accounts/CryptoHelper;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/accounts/CryptoHelper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/accounts/CryptoHelper;

    .line 10
    invoke-direct {v1}, Lcom/android/server/accounts/CryptoHelper;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method


# virtual methods
.method public final decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 1
    const-string v0, "Cannot decrypt null bundle."

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    const-string/jumbo v0, "iv"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v1, "cipher"

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 19
    move-result-object v1

    .line 20
    const-string/jumbo v2, "mac"

    .line 23
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 26
    move-result-object p1

    .line 27
    const-string v2, "Account"

    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz v1, :cond_5

    .line 33
    array-length v5, v1

    .line 34
    if-eqz v5, :cond_5

    .line 36
    if-eqz p1, :cond_5

    .line 38
    array-length v5, p1

    .line 39
    if-nez v5, :cond_0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    const-string v5, "HMACSHA256"

    .line 44
    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 47
    move-result-object v5

    .line 48
    iget-object v6, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    .line 50
    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 53
    invoke-virtual {v5, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 56
    invoke-virtual {v5, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 59
    invoke-virtual {v5}, Ljavax/crypto/Mac;->doFinal()[B

    .line 62
    move-result-object v5

    .line 63
    const/4 v6, 0x1

    .line 64
    if-nez v5, :cond_1

    .line 66
    if-ne p1, v5, :cond_6

    .line 68
    goto :goto_4

    .line 69
    :cond_1
    array-length v7, p1

    .line 70
    array-length v8, v5

    .line 71
    if-eq v7, v8, :cond_2

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    move v8, v4

    .line 75
    move v7, v6

    .line 76
    :goto_0
    array-length v9, v5

    .line 77
    if-ge v8, v9, :cond_4

    .line 79
    aget-byte v9, p1, v8

    .line 81
    aget-byte v10, v5, v8

    .line 83
    if-ne v9, v10, :cond_3

    .line 85
    move v9, v6

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move v9, v4

    .line 88
    :goto_1
    and-int/2addr v7, v9

    .line 89
    add-int/lit8 v8, v8, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    move v6, v7

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    :goto_2
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_6

    .line 100
    const-string p1, "Cipher or MAC is empty!"

    .line 102
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_6
    :goto_3
    move v6, v4

    .line 106
    :goto_4
    if-nez v6, :cond_7

    .line 108
    const-string p0, "Escrow mac mismatched!"

    .line 110
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 p0, 0x0

    .line 114
    return-object p0

    .line 115
    :cond_7
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 117
    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 120
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 122
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 125
    move-result-object v0

    .line 126
    iget-object p0, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 128
    invoke-virtual {v0, v3, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 131
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 134
    move-result-object p0

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 138
    move-result-object p1

    .line 139
    array-length v0, p0

    .line 140
    invoke-virtual {p1, p0, v4, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 143
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    new-instance p0, Landroid/os/Bundle;

    .line 148
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 151
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 157
    return-object p0
.end method

.method public final encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 16
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 18
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    iget-object v2, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 25
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 28
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "HMACSHA256"

    .line 38
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 41
    move-result-object v1

    .line 42
    iget-object p0, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    .line 44
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 47
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 50
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 53
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 56
    move-result-object p0

    .line 57
    new-instance v1, Landroid/os/Bundle;

    .line 59
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string/jumbo v2, "cipher"

    .line 65
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 68
    const-string/jumbo p1, "mac"

    .line 71
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 74
    const-string/jumbo p0, "iv"

    .line 77
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 80
    return-object v1
.end method
