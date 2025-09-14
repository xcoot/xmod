.class public abstract Lcom/android/server/pm/ApkChecksums;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/security/cert/Certificate;

    .line 3
    .line 4
    return-void
.end method

.method public static buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x4

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ".digests"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v1, "Code path is not an apk "

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public static calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V
    .locals 6

    .line 1
    and-int/2addr p3, p4

    .line 2
    if-eqz p3, :cond_5

    .line 3
    .line 4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-nez p3, :cond_5

    .line 13
    .line 14
    const-string p3, "ApkChecksums"

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x20000

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, 0x1000

    .line 28
    .line 29
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    long-to-int v0, v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 36
    .line 37
    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    new-array v0, v0, [B

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-eq p4, v3, :cond_3

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    if-eq p4, v3, :cond_2

    .line 47
    .line 48
    const/16 v3, 0x8

    .line 49
    .line 50
    if-eq p4, v3, :cond_1

    .line 51
    .line 52
    const/16 v3, 0x10

    .line 53
    .line 54
    if-ne p4, v3, :cond_0

    .line 55
    .line 56
    const-string v3, "SHA512"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v4, "Invalid checksum type: "

    .line 64
    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v0, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_1
    const-string v3, "SHA256"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const-string v3, "SHA1"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const-string v3, "MD5"

    .line 86
    .line 87
    :goto_0
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/4 v5, -0x1

    .line 96
    if-eq v4, v5, :cond_4

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-virtual {v3, v0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 106
    .line 107
    .line 108
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    .line 111
    .line 112
    move-object v1, v0

    .line 113
    goto :goto_6

    .line 114
    :catch_0
    move-exception p2

    .line 115
    goto :goto_4

    .line 116
    :catch_1
    move-exception v0

    .line 117
    goto :goto_5

    .line 118
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catchall_1
    move-exception v2

    .line 123
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    .line 127
    :goto_4
    const-string v0, "Device does not support MessageDigest algorithm"

    .line 128
    .line 129
    invoke-static {p3, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v3, "Error reading "

    .line 136
    .line 137
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p2, " to compute hash."

    .line 148
    .line 149
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-static {p3, p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .line 158
    .line 159
    :goto_6
    if-eqz v1, :cond_5

    .line 160
    .line 161
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    new-instance p3, Landroid/content/pm/ApkChecksum;

    .line 166
    .line 167
    invoke-direct {p3, p1, p4, v1}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :cond_5
    return-void
.end method

.method public static convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    new-instance v4, Landroid/content/pm/Signature;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v4, v3}, Landroid/content/pm/Signature;-><init>([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v0
.end method

.method public static getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const/4 v7, 0x1

    .line 23
    invoke-static {v7, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v8, 0x0

    .line 28
    const-string v9, "ApkChecksums"

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-static {v6}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {v6}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v10, Landroid/content/pm/ApkChecksum;

    .line 45
    .line 46
    invoke-direct {v10, v1, v7, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :try_start_0
    invoke-static {v6}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    .line 55
    .line 56
    const/4 v10, 0x3

    .line 57
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-interface {v0, v10, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, [B

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    new-instance v10, Landroid/content/pm/ApkChecksum;

    .line 70
    .line 71
    new-instance v11, Ljava/io/File;

    .line 72
    .line 73
    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v11, v0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {v10, v1, v7, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v10, "V4 signature error"

    .line 86
    .line 87
    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :catch_1
    :cond_2
    move-object v10, v8

    .line 91
    :goto_0
    if-eqz v10, :cond_3

    .line 92
    .line 93
    invoke-virtual {v10}, Landroid/content/pm/ApkChecksum;->getType()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    move-object v11, v5

    .line 102
    check-cast v11, Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v11, v0, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_3
    const/16 v0, 0x20

    .line 108
    .line 109
    invoke-static {v0, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    const/16 v11, 0x40

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    if-nez v10, :cond_4

    .line 117
    .line 118
    invoke-static {v11, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_a

    .line 123
    .line 124
    :cond_4
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    const/4 v13, 0x2

    .line 129
    invoke-static {v10, v6, v13, v12}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-eqz v10, :cond_6

    .line 138
    .line 139
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    instance-of v10, v10, Landroid/util/apk/SignatureNotFoundException;

    .line 144
    .line 145
    if-nez v10, :cond_5

    .line 146
    .line 147
    const-string v10, "Signature verification error"

    .line 148
    .line 149
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v9, v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .line 155
    .line 156
    :cond_5
    move-object v6, v8

    .line 157
    goto :goto_1

    .line 158
    :cond_6
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    .line 163
    .line 164
    iget-object v6, v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->contentDigests:Ljava/util/Map;

    .line 165
    .line 166
    :goto_1
    if-nez v6, :cond_7

    .line 167
    .line 168
    move-object v10, v8

    .line 169
    goto :goto_2

    .line 170
    :cond_7
    new-instance v10, Landroid/util/ArrayMap;

    .line 171
    .line 172
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 173
    .line 174
    .line 175
    and-int/lit8 v14, v2, 0x20

    .line 176
    .line 177
    if-eqz v14, :cond_8

    .line 178
    .line 179
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    check-cast v7, [B

    .line 188
    .line 189
    if-eqz v7, :cond_8

    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    new-instance v15, Landroid/content/pm/ApkChecksum;

    .line 196
    .line 197
    invoke-direct {v15, v1, v0, v7}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_8
    and-int/lit8 v0, v2, 0x40

    .line 204
    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-interface {v6, v0, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, [B

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    new-instance v7, Landroid/content/pm/ApkChecksum;

    .line 224
    .line 225
    invoke-direct {v7, v1, v11, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    :cond_9
    :goto_2
    if-eqz v10, :cond_a

    .line 232
    .line 233
    move-object v0, v5

    .line 234
    check-cast v0, Landroid/util/ArrayMap;

    .line 235
    .line 236
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 237
    .line 238
    .line 239
    :cond_a
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_b

    .line 244
    .line 245
    goto/16 :goto_13

    .line 246
    .line 247
    :cond_b
    if-eqz v4, :cond_c

    .line 248
    .line 249
    array-length v0, v4

    .line 250
    if-nez v0, :cond_c

    .line 251
    .line 252
    goto/16 :goto_13

    .line 253
    .line 254
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-static {v0}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v6, Ljava/io/File;

    .line 263
    .line 264
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_d

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_d
    move-object v6, v8

    .line 275
    :goto_3
    if-nez v6, :cond_e

    .line 276
    .line 277
    goto/16 :goto_13

    .line 278
    .line 279
    :cond_e
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-string v7, ".signature"

    .line 284
    .line 285
    invoke-static {v0, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    new-instance v7, Ljava/io/File;

    .line 290
    .line 291
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_f

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_f
    move-object v7, v8

    .line 302
    :goto_4
    :try_start_1
    invoke-static {v6}, Lcom/android/server/pm/ApkChecksums;->readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    if-eqz v7, :cond_13

    .line 307
    .line 308
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    invoke-static {v10}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    invoke-static {v0, v10}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    if-eqz v10, :cond_12

    .line 321
    .line 322
    array-length v11, v10

    .line 323
    if-nez v11, :cond_10

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_10
    array-length v11, v10

    .line 327
    new-array v11, v11, [Landroid/content/pm/Signature;

    .line 328
    .line 329
    array-length v13, v10

    .line 330
    move v14, v12

    .line 331
    :goto_5
    if-ge v14, v13, :cond_11

    .line 332
    .line 333
    new-instance v15, Landroid/content/pm/Signature;

    .line 334
    .line 335
    aget-object v16, v10, v14

    .line 336
    .line 337
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    invoke-direct {v15, v8}, Landroid/content/pm/Signature;-><init>([B)V

    .line 342
    .line 343
    .line 344
    aput-object v15, v11, v14

    .line 345
    .line 346
    add-int/lit8 v14, v14, 0x1

    .line 347
    .line 348
    const/4 v8, 0x0

    .line 349
    goto :goto_5

    .line 350
    :catch_2
    move-exception v0

    .line 351
    goto/16 :goto_10

    .line 352
    .line 353
    :catch_3
    move-exception v0

    .line 354
    goto/16 :goto_11

    .line 355
    .line 356
    :catch_4
    move-exception v0

    .line 357
    goto/16 :goto_12

    .line 358
    .line 359
    :cond_11
    const/4 v8, 0x0

    .line 360
    goto :goto_7

    .line 361
    :cond_12
    :goto_6
    const-string v0, "Error validating signature"

    .line 362
    .line 363
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    goto/16 :goto_13

    .line 367
    .line 368
    :cond_13
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/ApkChecksums$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    if-nez v8, :cond_14

    .line 377
    .line 378
    const-string v0, "Installer package not found."

    .line 379
    .line 380
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    goto/16 :goto_13

    .line 384
    .line 385
    :cond_14
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    invoke-virtual {v10}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    .line 398
    .line 399
    .line 400
    move-result-object v8

    .line 401
    :goto_7
    if-eqz v11, :cond_22

    .line 402
    .line 403
    array-length v10, v11

    .line 404
    if-eqz v10, :cond_22

    .line 405
    .line 406
    aget-object v10, v11, v12

    .line 407
    .line 408
    if-nez v10, :cond_15

    .line 409
    .line 410
    goto/16 :goto_f

    .line 411
    .line 412
    :cond_15
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/ApkChecksums;->convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    if-eqz v4, :cond_1d

    .line 421
    .line 422
    move-object v13, v4

    .line 423
    check-cast v13, Landroid/util/ArraySet;

    .line 424
    .line 425
    invoke-virtual {v13}, Landroid/util/ArraySet;->isEmpty()Z

    .line 426
    .line 427
    .line 428
    move-result v13

    .line 429
    if-nez v13, :cond_1d

    .line 430
    .line 431
    array-length v10, v11

    .line 432
    move v13, v12

    .line 433
    :goto_8
    if-ge v13, v10, :cond_17

    .line 434
    .line 435
    aget-object v14, v11, v13

    .line 436
    .line 437
    move-object v15, v4

    .line 438
    check-cast v15, Landroid/util/ArraySet;

    .line 439
    .line 440
    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v15

    .line 444
    if-eqz v15, :cond_16

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_16
    add-int/lit8 v13, v13, 0x1

    .line 448
    .line 449
    goto :goto_8

    .line 450
    :cond_17
    const/4 v14, 0x0

    .line 451
    :goto_9
    if-nez v14, :cond_1b

    .line 452
    .line 453
    if-nez v8, :cond_19

    .line 454
    .line 455
    :cond_18
    const/4 v8, 0x0

    .line 456
    goto :goto_b

    .line 457
    :cond_19
    array-length v10, v8

    .line 458
    move v11, v12

    .line 459
    :goto_a
    if-ge v11, v10, :cond_18

    .line 460
    .line 461
    aget-object v13, v8, v11

    .line 462
    .line 463
    move-object v14, v4

    .line 464
    check-cast v14, Landroid/util/ArraySet;

    .line 465
    .line 466
    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v14

    .line 470
    if-eqz v14, :cond_1a

    .line 471
    .line 472
    move-object v8, v13

    .line 473
    goto :goto_b

    .line 474
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :goto_b
    move-object v14, v8

    .line 478
    :cond_1b
    if-nez v14, :cond_1c

    .line 479
    .line 480
    goto/16 :goto_13

    .line 481
    .line 482
    :cond_1c
    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    :cond_1d
    array-length v4, v0

    .line 487
    move v8, v12

    .line 488
    :goto_c
    if-ge v8, v4, :cond_20

    .line 489
    .line 490
    aget-object v11, v0, v8

    .line 491
    .line 492
    invoke-virtual {v11}, Landroid/content/pm/Checksum;->getType()I

    .line 493
    .line 494
    .line 495
    move-result v13

    .line 496
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v13

    .line 500
    move-object v14, v5

    .line 501
    check-cast v14, Landroid/util/ArrayMap;

    .line 502
    .line 503
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v13

    .line 507
    check-cast v13, Landroid/content/pm/ApkChecksum;

    .line 508
    .line 509
    if-eqz v13, :cond_1f

    .line 510
    .line 511
    invoke-virtual {v13}, Landroid/content/pm/ApkChecksum;->getValue()[B

    .line 512
    .line 513
    .line 514
    move-result-object v13

    .line 515
    invoke-virtual {v11}, Landroid/content/pm/Checksum;->getValue()[B

    .line 516
    .line 517
    .line 518
    move-result-object v14

    .line 519
    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    .line 520
    .line 521
    .line 522
    move-result v13

    .line 523
    if-eqz v13, :cond_1e

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :cond_1e
    new-instance v0, Ljava/security/InvalidParameterException;

    .line 527
    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .line 532
    .line 533
    const-string v2, "System digest "

    .line 534
    .line 535
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v11}, Landroid/content/pm/Checksum;->getType()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string v2, " mismatch, can\'t bind installer-provided digests to the APK."

    .line 546
    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    throw v0

    .line 558
    :cond_1f
    :goto_d
    add-int/lit8 v8, v8, 0x1

    .line 559
    .line 560
    goto :goto_c

    .line 561
    :cond_20
    array-length v4, v0

    .line 562
    :goto_e
    if-ge v12, v4, :cond_23

    .line 563
    .line 564
    aget-object v8, v0, v12

    .line 565
    .line 566
    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    .line 567
    .line 568
    .line 569
    move-result v11

    .line 570
    invoke-static {v11, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 571
    .line 572
    .line 573
    move-result v11

    .line 574
    if-eqz v11, :cond_21

    .line 575
    .line 576
    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    .line 577
    .line 578
    .line 579
    move-result v11

    .line 580
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object v11

    .line 584
    new-instance v13, Landroid/content/pm/ApkChecksum;

    .line 585
    .line 586
    invoke-direct {v13, v1, v8, v3, v10}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    .line 587
    .line 588
    .line 589
    move-object v8, v5

    .line 590
    check-cast v8, Landroid/util/ArrayMap;

    .line 591
    .line 592
    invoke-virtual {v8, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    :cond_21
    add-int/lit8 v12, v12, 0x1

    .line 596
    .line 597
    goto :goto_e

    .line 598
    :cond_22
    :goto_f
    const-string v0, "Can\'t obtain certificates."

    .line 599
    .line 600
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 601
    .line 602
    .line 603
    goto :goto_13

    .line 604
    :goto_10
    const-string v1, "Error encoding trustedInstallers"

    .line 605
    .line 606
    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    .line 608
    .line 609
    goto :goto_13

    .line 610
    :goto_11
    const-string v1, "Error validating digests. Invalid digests will be removed"

    .line 611
    .line 612
    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .line 614
    .line 615
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 620
    .line 621
    .line 622
    if-eqz v7, :cond_23

    .line 623
    .line 624
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 629
    .line 630
    .line 631
    goto :goto_13

    .line 632
    :goto_12
    const-string v1, "Error reading .digests or .signature"

    .line 633
    .line 634
    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    .line 636
    .line 637
    :catch_5
    :cond_23
    :goto_13
    return-void
.end method

.method public static getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .locals 12

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v0, 0x0

    .line 18
    move v4, v0

    .line 19
    :goto_0
    if-ge v4, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/util/Pair;

    .line 26
    .line 27
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v5, v0

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/util/Pair;

    .line 37
    .line 38
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v6, v0

    .line 41
    check-cast v6, Ljava/io/File;

    .line 42
    .line 43
    new-instance v10, Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    or-int v7, p1, p2

    .line 52
    .line 53
    move-object v8, p3

    .line 54
    move-object/from16 v9, p4

    .line 55
    .line 56
    move-object/from16 v11, p6

    .line 57
    .line 58
    :try_start_0
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ApkChecksums;->getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object v5, v0

    .line 64
    const-string v0, "ApkChecksums"

    .line 65
    .line 66
    const-string v6, "Preferred checksum calculation error"

    .line 67
    .line 68
    invoke-static {v0, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    move-object v1, p0

    .line 79
    move v3, p2

    .line 80
    move-object/from16 v4, p5

    .line 81
    .line 82
    move-object/from16 v5, p6

    .line 83
    .line 84
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/ApkChecksums;->processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v1, p2, p3}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const-string v3, "ApkChecksums"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v2, Lcom/android/server/pm/ApkChecksums$1;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v4, v2}, Landroid/util/apk/VerityBuilder;->generateFsVerityRootHash(Ljava/lang/String;[BLandroid/util/apk/ByteBufferFactory;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v5, Landroid/content/pm/ApkChecksum;

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v5, p0, v1, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v2, "Error calculating WHOLE_MERKLE_ROOT_4K_SHA256"

    .line 43
    .line 44
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    const/4 v0, 0x2

    .line 48
    invoke-static {p3, p0, p1, p2, v0}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    invoke-static {p3, p0, p1, p2, v2}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 53
    .line 54
    .line 55
    const/16 v2, 0x8

    .line 56
    .line 57
    invoke-static {p3, p0, p1, p2, v2}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 58
    .line 59
    .line 60
    const/16 v2, 0x10

    .line 61
    .line 62
    invoke-static {p3, p0, p1, p2, v2}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    .line 63
    .line 64
    .line 65
    const-string v2, "V2/V3 signatures not found in "

    .line 66
    .line 67
    and-int/lit8 v5, p2, 0x20

    .line 68
    .line 69
    const/16 v6, 0x20

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_1

    .line 83
    .line 84
    move v5, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move v5, v7

    .line 87
    :goto_1
    const/16 v8, 0x40

    .line 88
    .line 89
    and-int/2addr p2, v8

    .line 90
    if-eqz p2, :cond_2

    .line 91
    .line 92
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-nez p2, :cond_2

    .line 101
    .line 102
    move p2, v1

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move p2, v7

    .line 105
    :goto_2
    if-nez v5, :cond_3

    .line 106
    .line 107
    if-nez p2, :cond_3

    .line 108
    .line 109
    goto/16 :goto_a

    .line 110
    .line 111
    :cond_3
    :try_start_1
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 112
    .line 113
    const-string/jumbo v10, "r"

    .line 114
    .line 115
    .line 116
    invoke-direct {v9, p1, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_3

    .line 117
    .line 118
    .line 119
    :try_start_2
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v4
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    goto :goto_3

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_7

    .line 126
    :catch_1
    :try_start_3
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v4
    :try_end_3
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :catch_2
    :goto_3
    if-nez v4, :cond_5

    .line 131
    .line 132
    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    .line 150
    .line 151
    :cond_4
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/DigestException; {:try_start_5 .. :try_end_5} :catch_3

    .line 152
    .line 153
    .line 154
    goto :goto_a

    .line 155
    :catch_3
    move-exception p0

    .line 156
    goto :goto_9

    .line 157
    :cond_5
    if-eqz v5, :cond_6

    .line 158
    .line 159
    if-eqz p2, :cond_6

    .line 160
    .line 161
    :try_start_6
    filled-new-array {v1, v0}, [I

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto :goto_4

    .line 166
    :cond_6
    if-eqz v5, :cond_7

    .line 167
    .line 168
    filled-new-array {v1}, [I

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_4

    .line 173
    :cond_7
    filled-new-array {v0}, [I

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    :goto_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-static {p1, p2, v4}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    array-length v2, p1

    .line 186
    :goto_5
    if-ge v7, v2, :cond_4

    .line 187
    .line 188
    aget v4, p1, v7

    .line 189
    .line 190
    const/4 v5, -0x1

    .line 191
    if-eq v4, v1, :cond_9

    .line 192
    .line 193
    if-eq v4, v0, :cond_8

    .line 194
    .line 195
    move v4, v5

    .line 196
    goto :goto_6

    .line 197
    :cond_8
    move v4, v8

    .line 198
    goto :goto_6

    .line 199
    :cond_9
    move v4, v6

    .line 200
    :goto_6
    if-eq v4, v5, :cond_a

    .line 201
    .line 202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    new-instance v10, Landroid/content/pm/ApkChecksum;

    .line 207
    .line 208
    aget-object v11, p2, v7

    .line 209
    .line 210
    invoke-direct {v10, p0, v4, v11}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    .line 215
    .line 216
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :goto_7
    :try_start_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 220
    .line 221
    .line 222
    goto :goto_8

    .line 223
    :catchall_1
    move-exception p1

    .line 224
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :goto_8
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/DigestException; {:try_start_8 .. :try_end_8} :catch_3

    .line 228
    :goto_9
    const-string p1, "Error computing hash."

    .line 229
    .line 230
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    :goto_a
    return-void
.end method

.method public static isRequired(IILjava/util/Map;)Z
    .locals 1

    .line 1
    and-int/2addr p1, p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public static needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/16 v1, 0x10

    .line 32
    .line 33
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    const/16 v1, 0x20

    .line 40
    .line 41
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    const/16 v1, 0x40

    .line 48
    .line 49
    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    return v2

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    return v2

    .line 67
    :cond_1
    iget-object p1, p3, Lcom/android/server/pm/ApkChecksums$Injector;->mIncrementalManagerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/os/incremental/IncrementalManager;

    .line 74
    .line 75
    const-string p2, "ApkChecksums"

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    const-string p0, "IncrementalManager is missing."

    .line 80
    .line 81
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    return v2

    .line 85
    :cond_2
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    const-string p1, "IncrementalStorage is missing for a path on IncFs: "

    .line 92
    .line 93
    invoke-static {p1, p0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v2

    .line 97
    :cond_3
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalStorage;->isFileFullyLoaded(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    xor-int/2addr p0, v0

    .line 102
    return p0
.end method

.method public static processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .locals 17

    .line 1
    move/from16 v9, p2

    .line 2
    .line 3
    move-object/from16 v10, p4

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sub-long v0, v0, p5

    .line 10
    .line 11
    const-wide/32 v2, 0x5265c00

    .line 12
    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    move v11, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v11, v1

    .line 23
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    move-object/from16 v13, p0

    .line 29
    .line 30
    check-cast v13, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v14

    .line 36
    move v15, v1

    .line 37
    :goto_1
    const-string v7, "ApkChecksums"

    .line 38
    .line 39
    if-ge v15, v14, :cond_4

    .line 40
    .line 41
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/util/Pair;

    .line 46
    .line 47
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/util/Pair;

    .line 56
    .line 57
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/io/File;

    .line 60
    .line 61
    move-object/from16 v2, p1

    .line 62
    .line 63
    check-cast v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Ljava/util/Map;

    .line 70
    .line 71
    if-eqz v11, :cond_2

    .line 72
    .line 73
    if-eqz v9, :cond_1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    move-object v10, v7

    .line 77
    move/from16 v16, v11

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    :goto_2
    :try_start_0
    invoke-static {v1, v9, v2, v10}, Lcom/android/server/pm/ApkChecksums;->needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    iget-object v0, v10, Lcom/android/server/pm/ApkChecksums$Injector;->mHandlerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    .line 87
    .line 88
    invoke-interface {v0}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/os/Handler;

    .line 93
    .line 94
    new-instance v8, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    .line 96
    move-object v1, v8

    .line 97
    move-object/from16 v2, p0

    .line 98
    .line 99
    move-object/from16 v3, p1

    .line 100
    .line 101
    move/from16 v4, p2

    .line 102
    .line 103
    move-object/from16 v5, p3

    .line 104
    .line 105
    move-object/from16 v6, p4

    .line 106
    .line 107
    move-object v10, v7

    .line 108
    move/from16 v16, v11

    .line 109
    .line 110
    move-object v11, v8

    .line 111
    move-wide/from16 v7, p5

    .line 112
    .line 113
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    .line 114
    .line 115
    .line 116
    const-wide/16 v1, 0x3e8

    .line 117
    .line 118
    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    goto :goto_4

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object v10, v7

    .line 126
    move/from16 v16, v11

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_3
    move-object v10, v7

    .line 130
    move/from16 v16, v11

    .line 131
    .line 132
    invoke-static {v0, v1, v9, v2}, Lcom/android/server/pm/ApkChecksums;->getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V

    .line 133
    .line 134
    .line 135
    :goto_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :goto_4
    const-string v1, "Required checksum calculation error"

    .line 144
    .line 145
    invoke-static {v10, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .line 147
    .line 148
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 149
    .line 150
    move-object/from16 v10, p4

    .line 151
    .line 152
    move/from16 v11, v16

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    move-object/from16 v1, p3

    .line 156
    .line 157
    move-object v10, v7

    .line 158
    :try_start_2
    invoke-interface {v1, v12}, Landroid/content/pm/IOnChecksumsReadyListener;->onChecksumsReady(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_6

    .line 162
    :catch_0
    move-exception v0

    .line 163
    move-object v1, v0

    .line 164
    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .line 166
    .line 167
    :goto_6
    return-void
.end method

.method public static readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance p0, Ljava/io/DataInputStream;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    const/16 v3, 0x64

    .line 18
    .line 19
    if-ge v2, v3, :cond_0

    .line 20
    .line 21
    :try_start_2
    invoke-static {p0}, Landroid/content/pm/Checksum;->readFromStream(Ljava/io/DataInputStream;)Landroid/content/pm/Checksum;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    new-array v2, v2, [Landroid/content/pm/Checksum;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, [Landroid/content/pm/Checksum;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    .line 45
    :try_start_4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 61
    :catchall_2
    move-exception p0

    .line 62
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :catchall_3
    move-exception v0

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :goto_3
    throw p0
.end method

.method public static verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    .locals 4

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const v1, 0x8c00

    .line 5
    .line 6
    .line 7
    if-gt v0, v1, :cond_4

    .line 8
    .line 9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {v0, p0}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lsun/security/pkcs/PKCS7;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    array-length p1, p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    array-length p1, p0

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    new-instance p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    array-length v1, p0

    .line 50
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    array-length v1, p0

    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-ge v2, v1, :cond_1

    .line 56
    .line 57
    aget-object v3, p0, v2

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    .line 72
    .line 73
    const-string p1, "Verification passed, but certification chain is empty."

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    new-array p0, p0, [Ljava/security/cert/Certificate;

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, [Ljava/security/cert/Certificate;

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_2
    new-instance p0, Ljava/security/SignatureException;

    .line 93
    .line 94
    const-string p1, "Verification failed"

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    .line 101
    .line 102
    const-string p1, "Signature missing certificates"

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_1
    move-exception p1

    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :goto_1
    throw p0

    .line 118
    :cond_4
    new-instance p0, Ljava/security/SignatureException;

    .line 119
    .line 120
    const-string p1, "Invalid signature"

    .line 121
    .line 122
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method

.method public static verityHashForFile(Ljava/io/File;[B)[B
    .locals 4

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move p0, v1

    .line 42
    :goto_0
    const/16 p1, 0xd0

    .line 43
    .line 44
    if-ge p0, p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    add-int/lit8 p0, p0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 55
    .line 56
    .line 57
    const-string p0, "SHA256"

    .line 58
    .line 59
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object p0

    .line 71
    :goto_1
    const-string p1, "ApkChecksums"

    .line 72
    .line 73
    const-string v0, "Device does not support MessageDigest algorithm"

    .line 74
    .line 75
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0
.end method

.method public static writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/DataOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    array-length p0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, p0, :cond_0

    .line 9
    .line 10
    aget-object v2, p1, v1

    .line 11
    .line 12
    invoke-static {v0, v2}, Landroid/content/pm/Checksum;->writeToStream(Ljava/io/DataOutputStream;Landroid/content/pm/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_2
    throw p0
.end method
