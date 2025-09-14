.class public final Lcom/samsung/android/server/util/CoreEncryptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/util/CoreEncryptor;->sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    .line 3
    .line 4
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/16 v2, 0x2000

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    new-array v4, v3, [B

    .line 17
    .line 18
    invoke-virtual {p1, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-virtual {v1, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    const/4 v3, -0x1

    .line 41
    if-eq p0, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0, p0}, Ljavax/crypto/Cipher;->update([BII)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    return v0
.end method

.method public final encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    .line 3
    .line 4
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length v3, p0

    .line 23
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 27
    .line 28
    .line 29
    const/16 p0, 0x2000

    .line 30
    .line 31
    new-array p0, p0, [B

    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, -0x1

    .line 38
    if-eq v3, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1, p0, v0, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return v0
.end method
