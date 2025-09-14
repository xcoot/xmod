.class public final Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;
.super Ljava/io/InputStream;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public cipherInputStream:Ljavax/crypto/CipherInputStream;

.field public isInitialized:Z

.field public final synthetic val$archiveName:Ljava/lang/String;

.field public final synthetic val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

.field public final synthetic val$in:Ljava/io/InputStream;

.field public final synthetic val$passwordBytes:[B


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[BLjava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    .line 6
    .line 7
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$in:Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final init()Ljavax/crypto/CipherInputStream;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 11
    .line 12
    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-byte v3, v1, v2

    .line 16
    .line 17
    and-int/lit16 v4, v3, 0xff

    .line 18
    .line 19
    const/16 v5, 0x3f

    .line 20
    .line 21
    and-int/2addr v3, v5

    .line 22
    const/4 v6, 0x1

    .line 23
    aget-byte v7, v1, v6

    .line 24
    .line 25
    and-int/lit16 v8, v7, 0xff

    .line 26
    .line 27
    shr-int/lit8 v9, v4, 0x6

    .line 28
    .line 29
    and-int/2addr v9, v6

    .line 30
    and-int/lit8 v7, v7, 0xf

    .line 31
    .line 32
    add-int/2addr v9, v7

    .line 33
    shr-int/lit8 v4, v4, 0x7

    .line 34
    .line 35
    and-int/2addr v4, v6

    .line 36
    shr-int/lit8 v7, v8, 0x4

    .line 37
    .line 38
    add-int/2addr v4, v7

    .line 39
    add-int/lit8 v7, v4, 0x2

    .line 40
    .line 41
    add-int v8, v7, v9

    .line 42
    .line 43
    array-length v10, v1

    .line 44
    if-gt v8, v10, :cond_6

    .line 45
    .line 46
    new-array v8, v4, [B

    .line 47
    .line 48
    const/4 v10, 0x2

    .line 49
    invoke-static {v1, v10, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x10

    .line 53
    .line 54
    new-array v1, v1, [B

    .line 55
    .line 56
    iget-object v11, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 57
    .line 58
    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 59
    .line 60
    invoke-static {v11, v7, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    .line 64
    .line 65
    if-eqz v7, :cond_5

    .line 66
    .line 67
    if-ne v3, v5, :cond_1

    .line 68
    .line 69
    const/16 v3, 0x20

    .line 70
    .line 71
    new-array v3, v3, [B

    .line 72
    .line 73
    invoke-static {v8, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    .line 77
    .line 78
    array-length v7, v5

    .line 79
    rsub-int/lit8 v8, v4, 0x20

    .line 80
    .line 81
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-static {v5, v2, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_1
    :try_start_0
    const-string v4, "SHA-256"

    .line 90
    .line 91
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 92
    .line 93
    .line 94
    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    const/16 v5, 0x8

    .line 96
    .line 97
    new-array v7, v5, [B

    .line 98
    .line 99
    const-wide/16 v11, 0x0

    .line 100
    .line 101
    :goto_0
    const-wide/16 v13, 0x1

    .line 102
    .line 103
    shl-long v15, v13, v3

    .line 104
    .line 105
    cmp-long v9, v11, v15

    .line 106
    .line 107
    if-gez v9, :cond_4

    .line 108
    .line 109
    invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    .line 111
    .line 112
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$passwordBytes:[B

    .line 113
    .line 114
    invoke-virtual {v4, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 118
    .line 119
    .line 120
    move v9, v2

    .line 121
    :goto_1
    if-ge v9, v5, :cond_3

    .line 122
    .line 123
    aget-byte v15, v7, v9

    .line 124
    .line 125
    add-int/2addr v15, v6

    .line 126
    int-to-byte v15, v15

    .line 127
    aput-byte v15, v7, v9

    .line 128
    .line 129
    if-eqz v15, :cond_2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    :goto_2
    add-long/2addr v11, v13

    .line 136
    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    :goto_3
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 142
    .line 143
    const-string v4, "AES"

    .line 144
    .line 145
    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :try_start_1
    const-string v3, "AES/CBC/NoPadding"

    .line 149
    .line 150
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 155
    .line 156
    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v10, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 160
    .line 161
    .line 162
    new-instance v1, Ljavax/crypto/CipherInputStream;

    .line 163
    .line 164
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$in:Ljava/io/InputStream;

    .line 165
    .line 166
    invoke-direct {v1, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 167
    .line 168
    .line 169
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 170
    .line 171
    iput-boolean v6, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->isInitialized:Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    .line 173
    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Ljava/io/IOException;

    .line 176
    .line 177
    const-string v2, "Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    .line 178
    .line 179
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw v1

    .line 183
    :catch_1
    move-exception v0

    .line 184
    new-instance v1, Ljava/io/IOException;

    .line 185
    .line 186
    const-string v2, "SHA-256 is unsupported by your Java implementation"

    .line 187
    .line 188
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    throw v1

    .line 192
    :cond_5
    new-instance v1, Lorg/apache/commons/compress/PasswordRequiredException;

    .line 193
    .line 194
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    .line 195
    .line 196
    invoke-direct {v1, v0}, Lorg/apache/commons/compress/PasswordRequiredException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v1

    .line 200
    :cond_6
    new-instance v1, Ljava/io/IOException;

    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v3, "Salt size + IV size too long in "

    .line 205
    .line 206
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->val$archiveName:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v1
.end method

.method public final read()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->init()Ljavax/crypto/CipherInputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;->init()Ljavax/crypto/CipherInputStream;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p0

    return p0
.end method
