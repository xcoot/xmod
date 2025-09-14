.class public abstract Lcom/android/security/SecureBox;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BIG_INT_02:Ljava/math/BigInteger;

.field public static final CONSTANT_01:[B

.field public static final EC_PARAM_A:Ljava/math/BigInteger;

.field public static final EC_PARAM_B:Ljava/math/BigInteger;

.field public static final EC_PARAM_P:Ljava/math/BigInteger;

.field static final EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

.field public static final HKDF_INFO_WITH_PUBLIC_KEY:[B

.field public static final HKDF_SALT:[B

.field public static final VERSION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/security/SecureBox;->VERSION:[B

    .line 9
    .line 10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    const-string v3, "SECUREBOX"

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v3, v0}, [[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/security/SecureBox;->HKDF_SALT:[B

    .line 27
    .line 28
    const-string v0, "P256 HKDF-SHA-256 AES-128-GCM"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/security/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    .line 35
    .line 36
    const-string v0, "SHARED HKDF-SHA-256 AES-128-GCM"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/security/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    new-array v2, v0, [B

    .line 46
    .line 47
    aput-byte v0, v2, v1

    .line 48
    .line 49
    sput-object v2, Lcom/android/security/SecureBox;->CONSTANT_01:[B

    .line 50
    .line 51
    new-array v1, v1, [B

    .line 52
    .line 53
    sput-object v1, Lcom/android/security/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 54
    .line 55
    const-wide/16 v1, 0x2

    .line 56
    .line 57
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, Lcom/android/security/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    .line 62
    .line 63
    new-instance v1, Ljava/math/BigInteger;

    .line 64
    .line 65
    const-string/jumbo v2, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    .line 66
    .line 67
    .line 68
    const/16 v3, 0x10

    .line 69
    .line 70
    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    sput-object v1, Lcom/android/security/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 74
    .line 75
    new-instance v2, Ljava/math/BigInteger;

    .line 76
    .line 77
    const-string v4, "3"

    .line 78
    .line 79
    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    sput-object v2, Lcom/android/security/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    .line 87
    .line 88
    new-instance v4, Ljava/math/BigInteger;

    .line 89
    .line 90
    const-string v5, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    .line 91
    .line 92
    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    sput-object v4, Lcom/android/security/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    .line 96
    .line 97
    new-instance v5, Ljava/security/spec/EllipticCurve;

    .line 98
    .line 99
    new-instance v6, Ljava/security/spec/ECFieldFp;

    .line 100
    .line 101
    invoke-direct {v6, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v5, v6, v2, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Ljava/security/spec/ECPoint;

    .line 108
    .line 109
    new-instance v2, Ljava/math/BigInteger;

    .line 110
    .line 111
    const-string v4, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    .line 112
    .line 113
    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    new-instance v4, Ljava/math/BigInteger;

    .line 117
    .line 118
    const-string v6, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    .line 119
    .line 120
    invoke-direct {v4, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Ljava/math/BigInteger;

    .line 127
    .line 128
    const-string/jumbo v4, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    .line 129
    .line 130
    .line 131
    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Ljava/security/spec/ECParameterSpec;

    .line 135
    .line 136
    invoke-direct {v3, v5, v1, v2, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 137
    .line 138
    .line 139
    sput-object v3, Lcom/android/security/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 140
    .line 141
    return-void

    .line 142
    nop

    .line 143
    :array_0
    .array-data 1
        0x2t
        0x0t
    .end array-data
.end method

.method public static aesGcmInternal(Lcom/android/security/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 8
    .line 9
    const/16 v2, 0x80

    .line 10
    .line 11
    invoke-direct {v1, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 12
    .line 13
    .line 14
    :try_start_1
    sget-object p2, Lcom/android/security/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

    .line 15
    .line 16
    if-ne p0, p2, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x2

    .line 19
    invoke-virtual {v0, p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    invoke-virtual {v0, p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    .line 29
    :goto_0
    :try_start_2
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    return-object p0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :catch_2
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :goto_2
    throw p0

    .line 48
    :goto_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :catch_3
    move-exception p0

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public static decrypt(Ljava/security/PrivateKey;[B[B[B)[B
    .locals 8

    .line 1
    sget-object v0, Lcom/android/security/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object p1, v0

    .line 6
    :cond_0
    if-nez p0, :cond_2

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "Both the private key and shared secret are empty"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 21
    .line 22
    move-object p2, v0

    .line 23
    :cond_3
    if-eqz p3, :cond_8

    .line 24
    .line 25
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-static {p3, v1}, Lcom/android/security/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lcom/android/security/SecureBox;->VERSION:[B

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_7

    .line 41
    .line 42
    if-nez p0, :cond_4

    .line 43
    .line 44
    sget-object p0, Lcom/android/security/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_4
    const/16 v0, 0x41

    .line 49
    .line 50
    invoke-static {p3, v0}, Lcom/android/security/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Ljava/math/BigInteger;

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    const/16 v4, 0x21

    .line 58
    .line 59
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 64
    .line 65
    .line 66
    new-instance v5, Ljava/math/BigInteger;

    .line 67
    .line 68
    invoke-static {v1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {v5, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/android/security/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const-string v4, "Point lies outside of the expected curve"

    .line 82
    .line 83
    if-gez v1, :cond_6

    .line 84
    .line 85
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-gez v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v6, -0x1

    .line 96
    if-eq v1, v6, :cond_6

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eq v1, v6, :cond_6

    .line 103
    .line 104
    sget-object v1, Lcom/android/security/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    .line 105
    .line 106
    invoke-virtual {v5, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v7, Lcom/android/security/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    .line 115
    .line 116
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v7, Lcom/android/security/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    .line 129
    .line 130
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    const-string v0, "EC"

    .line 145
    .line 146
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :try_start_0
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    .line 151
    .line 152
    new-instance v4, Ljava/security/spec/ECPoint;

    .line 153
    .line 154
    invoke-direct {v4, v2, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 155
    .line 156
    .line 157
    sget-object v2, Lcom/android/security/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 158
    .line 159
    invoke-direct {v1, v4, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 163
    .line 164
    .line 165
    move-result-object v0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    const-string v1, "ECDH"

    .line 167
    .line 168
    invoke-static {v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    :try_start_1
    invoke-virtual {v1, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sget-object p0, Lcom/android/security/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    .line 183
    .line 184
    :goto_1
    const/16 v1, 0xc

    .line 185
    .line 186
    invoke-static {p3, v1}, Lcom/android/security/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-static {p3, v2}, Lcom/android/security/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    filled-new-array {v0, p1}, [[B

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    sget-object v0, Lcom/android/security/SecureBox;->HKDF_SALT:[B

    .line 207
    .line 208
    invoke-static {p1, v0, p0}, Lcom/android/security/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    sget-object p1, Lcom/android/security/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

    .line 213
    .line 214
    invoke-static {p1, p0, v1, p3, p2}, Lcom/android/security/SecureBox;->aesGcmInternal(Lcom/android/security/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    return-object p0

    .line 219
    :catch_0
    move-exception p0

    .line 220
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 221
    .line 222
    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :catch_1
    move-exception p0

    .line 227
    new-instance p1, Ljava/lang/RuntimeException;

    .line 228
    .line 229
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :cond_5
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 234
    .line 235
    invoke-direct {p0, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0

    .line 239
    :cond_6
    new-instance p0, Ljava/security/InvalidKeyException;

    .line 240
    .line 241
    invoke-direct {p0, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p0

    .line 245
    :cond_7
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    .line 246
    .line 247
    const-string p1, "The payload was not encrypted by SecureBox v2"

    .line 248
    .line 249
    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p0

    .line 253
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    .line 254
    .line 255
    const-string p1, "Encrypted payload must not be null."

    .line 256
    .line 257
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p0
.end method

.method public static encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 5

    .line 1
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/16 v1, 0x41

    .line 24
    .line 25
    new-array v2, v1, [B

    .line 26
    .line 27
    array-length v3, p0

    .line 28
    sub-int/2addr v1, v3

    .line 29
    array-length v3, p0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {p0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    array-length p0, v0

    .line 35
    rsub-int/lit8 p0, p0, 0x21

    .line 36
    .line 37
    array-length v1, v0

    .line 38
    invoke-static {v0, v4, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x4

    .line 42
    aput-byte p0, v2, v4

    .line 43
    .line 44
    return-object v2
.end method

.method public static encrypt(Ljava/security/PublicKey;[B[B[B)[B
    .locals 5

    .line 1
    sget-object v0, Lcom/android/security/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object p1, v0

    .line 6
    :cond_0
    if-nez p0, :cond_2

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "Both the public key and shared secret are empty"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 21
    .line 22
    move-object p2, v0

    .line 23
    :cond_3
    if-nez p3, :cond_4

    .line 24
    .line 25
    move-object p3, v0

    .line 26
    :cond_4
    if-nez p0, :cond_5

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    sget-object v1, Lcom/android/security/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_5
    invoke-static {}, Lcom/android/security/SecureBox;->genKeyPair()Ljava/security/KeyPair;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "ECDH"

    .line 41
    .line 42
    invoke-static {v2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :try_start_0
    invoke-virtual {v2, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v2, p0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object v1, Lcom/android/security/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    .line 58
    .line 59
    move-object v4, v0

    .line 60
    move-object v0, p0

    .line 61
    move-object p0, v4

    .line 62
    :goto_1
    const/16 v2, 0xc

    .line 63
    .line 64
    new-array v2, v2, [B

    .line 65
    .line 66
    new-instance v3, Ljava/security/SecureRandom;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 72
    .line 73
    .line 74
    filled-new-array {v0, p1}, [[B

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object v0, Lcom/android/security/SecureBox;->HKDF_SALT:[B

    .line 83
    .line 84
    invoke-static {p1, v0, v1}, Lcom/android/security/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :try_start_1
    sget-object v0, Lcom/android/security/SecureBox$AesGcmOperation;->ENCRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

    .line 89
    .line 90
    invoke-static {v0, p1, v2, p3, p2}, Lcom/android/security/SecureBox;->aesGcmInternal(Lcom/android/security/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    .line 91
    .line 92
    .line 93
    move-result-object p1
    :try_end_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    sget-object p2, Lcom/android/security/SecureBox;->VERSION:[B

    .line 95
    .line 96
    if-nez p0, :cond_6

    .line 97
    .line 98
    filled-new-array {p2, v2, p1}, [[B

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_6
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lcom/android/security/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    filled-new-array {p2, p0, v2, p1}, [[B

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :catch_0
    move-exception p0

    .line 125
    new-instance p1, Ljava/lang/RuntimeException;

    .line 126
    .line 127
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :catch_1
    move-exception p0

    .line 132
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 133
    .line 134
    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    throw p1
.end method

.method public static genKeyPair()Ljava/security/KeyPair;
    .locals 3

    .line 1
    const-string v0, "EC"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    .line 8
    .line 9
    const-string/jumbo v2, "prime256v1"

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v0

    .line 23
    :catch_0
    :try_start_1
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    .line 24
    .line 25
    const-string/jumbo v2, "secp256r1"

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    return-object v0

    .line 39
    :catch_1
    move-exception v0

    .line 40
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 41
    .line 42
    const-string v2, "Unable to find the NIST P-256 curve"

    .line 43
    .line 44
    invoke-direct {v1, v2, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public static hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;
    .locals 3

    .line 1
    const-string v0, "HmacSHA256"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :try_start_1
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 20
    .line 21
    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lcom/android/security/SecureBox;->CONSTANT_01:[B

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 37
    .line 38
    const/16 p2, 0x10

    .line 39
    .line 40
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p2, "AES"

    .line 45
    .line 46
    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :catch_1
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public static readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B
    .locals 0

    .line 1
    new-array p1, p1, [B

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object p1

    .line 7
    :catch_0
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    .line 8
    .line 9
    const-string p1, "The encrypted payload is too short"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method
