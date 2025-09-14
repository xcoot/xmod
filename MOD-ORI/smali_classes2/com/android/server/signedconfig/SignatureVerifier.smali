.class public final Lcom/android/server/signedconfig/SignatureVerifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDebugKey:Ljava/security/PublicKey;

.field public final mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

.field public final mProdKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lcom/android/server/signedconfig/SignedConfigEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 5
    .line 6
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmJKs4lSn+XRhMQmMid+Zbhbu13YrU1haIhVC5296InRu1x7A8PV1ejQyisBODGgRY6pqkAHRncBCYcgg5wIIJg=="

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    .line 19
    .line 20
    const-string p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE+lky6wKyGL6lE1VrD0YTMHwb0Xwc+tzC8MvnrzVxodvTpVY/jV7V+Zktcx+pry43XPABFRXtbhTo+qykhyBA1g=="

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    .line 27
    .line 28
    return-void
.end method

.method public static createKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    .line 1
    const-string v0, "SignedConfig"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    const-string p0, "EC"

    .line 18
    .line 19
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string v2, "Failed to construct public key"

    .line 30
    .line 31
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :catch_1
    move-exception p0

    .line 36
    const-string v2, "Failed to base64 decode public key"

    .line 37
    .line 38
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    return-object v1
.end method


# virtual methods
.method public final verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 2
    .line 3
    const-string v1, "SignedConfig"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 21
    .line 22
    const-string v4, "SHA256withECDSA"

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, p1}, Ljava/security/Signature;->update([B)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6, p2}, Ljava/security/Signature;->verify([B)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    const-string p0, "Verified config using debug key"

    .line 48
    .line 49
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iput v5, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 53
    .line 54
    return v5

    .line 55
    :cond_0
    const-string v3, "Debuggable build, but have no debug key"

    .line 56
    .line 57
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    .line 61
    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    const-string p0, "No prod key; construction failed?"

    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const/16 p0, 0x9

    .line 70
    .line 71
    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 72
    .line 73
    return v2

    .line 74
    :cond_2
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, p1}, Ljava/security/Signature;->update([B)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, p2}, Ljava/security/Signature;->verify([B)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    const-string p0, "Verified config using production key"

    .line 91
    .line 92
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x2

    .line 96
    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 97
    .line 98
    return v5

    .line 99
    :cond_3
    const/4 p0, 0x7

    .line 100
    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 101
    .line 102
    return v2

    .line 103
    :catch_0
    const/4 p0, 0x3

    .line 104
    iput p0, v0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 105
    .line 106
    const-string p0, "Failed to base64 decode signature"

    .line 107
    .line 108
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return v2
.end method
