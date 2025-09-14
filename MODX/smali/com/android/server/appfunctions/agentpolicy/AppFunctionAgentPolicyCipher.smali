.class public final Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public final decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 6

    .line 1
    const-string v0, "AppFunctionAgentPolicyCipher"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "AES/CBC/PKCS7Padding"

    .line 6
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 9
    move-result-object v2

    .line 10
    const/16 v3, 0x2000

    .line 12
    new-array v3, v3, [B

    .line 14
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 17
    move-result v4

    .line 18
    new-array v5, v4, [B

    .line 20
    invoke-virtual {p1, v5, v1, v4}, Ljava/io/InputStream;->read([BII)I

    .line 23
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;->context:Landroid/content/Context;

    .line 25
    invoke-static {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    .line 28
    move-result-object p0

    .line 29
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 31
    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-virtual {v2, v5, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 41
    move-result p0

    .line 42
    const/4 v4, -0x1

    .line 43
    if-eq p0, v4, :cond_1

    .line 45
    invoke-virtual {v2, v3, v1, p0}, Ljavax/crypto/Cipher;->update([BII)[B

    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const-string/jumbo p0, "updateResult result is null"

    .line 60
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :goto_1
    const-string/jumbo p1, "decrypt"

    .line 76
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    return v1
.end method

.method public final encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    .line 4
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 7
    move-result-object v1

    .line 8
    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;->context:Landroid/content/Context;

    .line 10
    invoke-static {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    .line 13
    move-result-object p0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 18
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    .line 21
    move-result-object p0

    .line 22
    array-length v3, p0

    .line 23
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 26
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 29
    const/16 p0, 0x2000

    .line 31
    new-array p0, p0, [B

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    .line 36
    move-result v3

    .line 37
    const/4 v4, -0x1

    .line 38
    if-eq v3, v4, :cond_1

    .line 40
    invoke-virtual {v1, p0, v0, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    return v2

    .line 60
    :goto_1
    const-string p1, "AppFunctionAgentPolicyCipher"

    .line 62
    const-string/jumbo p2, "encrypt ////"

    .line 65
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return v0
.end method
