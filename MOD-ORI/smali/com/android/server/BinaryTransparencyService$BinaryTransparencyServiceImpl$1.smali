.class public final Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, " Info [Format: package_name,package_version,"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string/jumbo p1, "package_sha256_digest,"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string/jumbo p1, "content_digest_algorithm:content_digest]:\n"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "--- Module Details ---"

    .line 2
    .line 3
    const-string v1, "Module name: "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->isHidden()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const-string/jumbo p0, "hidden"

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo p0, "visible"

    .line 34
    .line 35
    .line 36
    :goto_0
    const-string v0, "Module visibility: "

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static printPackageSignerDetails(Landroid/content/pm/SigningInfo;Ljava/io/PrintWriter;)V
    .locals 10

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "ERROR: Package\'s signingInfo is null."

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, "--- Package Signer Info ---"

    .line 10
    .line 11
    const-string v1, "Has multiple signers: "

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Signing key has been rotated: "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    array-length v1, v0

    .line 57
    const/4 v2, 0x0

    .line 58
    move v3, v2

    .line 59
    :goto_0
    const-string v4, "Failed to obtain public key of signer for cert with hash: "

    .line 60
    .line 61
    const-string v5, "ShellCommand"

    .line 62
    .line 63
    if-ge v3, v1, :cond_1

    .line 64
    .line 65
    aget-object v6, v0, v3

    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v7, v2}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const-string v8, "Signer cert\'s SHA256-digest: "

    .line 80
    .line 81
    invoke-static {p1, v8, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :try_start_0
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v9, "Signing key algorithm: "

    .line 94
    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-interface {v6}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception v6

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v5, v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_2

    .line 143
    .line 144
    const-string v0, "== Signing Cert Lineage (Excluding The Most Recent) =="

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "(Certs are sorted in the order of rotation, beginning with the original signing cert)"

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    move v0, v2

    .line 159
    :goto_2
    array-length v1, p0

    .line 160
    add-int/lit8 v1, v1, -0x1

    .line 161
    .line 162
    if-ge v0, v1, :cond_2

    .line 163
    .line 164
    aget-object v1, p0, v0

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v3, v2}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v7, "  ++ Signer cert #"

    .line 181
    .line 182
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 186
    .line 187
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v7, " ++"

    .line 191
    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v7, "  Cert SHA256-digest: "

    .line 205
    .line 206
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v7, "  Signing key algorithm: "

    .line 229
    .line 230
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :catch_1
    move-exception v1

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-static {v5, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_2
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v3, "--verbose"

    .line 6
    .line 7
    const-string v4, "--no-headers"

    .line 8
    .line 9
    const-string v5, "--old"

    .line 10
    .line 11
    const-string v6, "-v"

    .line 12
    .line 13
    const-string v7, "-o"

    .line 14
    .line 15
    const/4 v10, 0x1

    .line 16
    const/4 v12, -0x1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 25
    .line 26
    .line 27
    move-result-object v13

    .line 28
    const-string/jumbo v14, "get"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v14

    .line 35
    if-nez v14, :cond_1

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHelpMenu()V

    .line 49
    .line 50
    .line 51
    return v12

    .line 52
    :cond_2
    const-string v14, ","

    .line 53
    .line 54
    const-string v15, "ERROR: Failed to obtain an instance of package manager."

    .line 55
    .line 56
    const-string v2, ""

    .line 57
    .line 58
    const-string v8, "ERROR: Unknown option: "

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v18

    .line 64
    sparse-switch v18, :sswitch_data_0

    .line 65
    .line 66
    .line 67
    :goto_0
    move v9, v12

    .line 68
    goto :goto_1

    .line 69
    :sswitch_0
    const-string v9, "apex_info"

    .line 70
    .line 71
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 v9, 0x3

    .line 79
    goto :goto_1

    .line 80
    :sswitch_1
    const-string/jumbo v9, "mba_info"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-nez v9, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/4 v9, 0x2

    .line 91
    goto :goto_1

    .line 92
    :sswitch_2
    const-string/jumbo v9, "module_info"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    move v9, v10

    .line 103
    goto :goto_1

    .line 104
    :sswitch_3
    const-string/jumbo v9, "image_info"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_6

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    const/4 v9, 0x0

    .line 115
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 116
    .line 117
    .line 118
    const-string v0, "ERROR: Unknown info type \'"

    .line 119
    .line 120
    const-string v2, "\'"

    .line 121
    .line 122
    invoke-static {v13, v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return v10

    .line 126
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    move v13, v10

    .line 131
    const/4 v9, 0x0

    .line 132
    const/4 v10, 0x0

    .line 133
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    if-eqz v12, :cond_c

    .line 138
    .line 139
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v19

    .line 143
    sparse-switch v19, :sswitch_data_1

    .line 144
    .line 145
    .line 146
    :goto_3
    const/16 v19, -0x1

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :sswitch_4
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v19

    .line 153
    if-nez v19, :cond_7

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    const/16 v19, 0x4

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :sswitch_5
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v19

    .line 163
    if-nez v19, :cond_8

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    const/16 v19, 0x3

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :sswitch_6
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v19

    .line 173
    if-nez v19, :cond_9

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_9
    const/16 v19, 0x2

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :sswitch_7
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v19

    .line 183
    if-nez v19, :cond_a

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_a
    const/16 v19, 0x1

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :sswitch_8
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v19

    .line 193
    if-nez v19, :cond_b

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_b
    const/16 v19, 0x0

    .line 197
    .line 198
    :goto_4
    packed-switch v19, :pswitch_data_1

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 v10, 0x1

    .line 209
    goto/16 :goto_7

    .line 210
    .line 211
    :pswitch_1
    const/4 v13, 0x0

    .line 212
    goto :goto_2

    .line 213
    :pswitch_2
    const/4 v9, 0x1

    .line 214
    goto :goto_2

    .line 215
    :pswitch_3
    const/4 v10, 0x1

    .line 216
    goto :goto_2

    .line 217
    :cond_c
    iget-object v3, v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 218
    .line 219
    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 220
    .line 221
    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-nez v3, :cond_d

    .line 228
    .line 229
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const/4 v10, -0x1

    .line 233
    goto :goto_7

    .line 234
    :cond_d
    const-string v4, "APEX"

    .line 235
    .line 236
    if-nez v9, :cond_e

    .line 237
    .line 238
    if-eqz v13, :cond_e

    .line 239
    .line 240
    invoke-static {v1, v4, v10}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 241
    .line 242
    .line 243
    :cond_e
    iget-object v5, v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 244
    .line 245
    iget-object v5, v5, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 246
    .line 247
    invoke-static {v5}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mgetCurrentInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-eqz v6, :cond_11

    .line 260
    .line 261
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 266
    .line 267
    if-eqz v9, :cond_f

    .line 268
    .line 269
    if-eqz v13, :cond_f

    .line 270
    .line 271
    invoke-static {v1, v4, v10}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    :cond_f
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v7, v14}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 281
    .line 282
    .line 283
    move-result-wide v11

    .line 284
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v6, v10, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageMeasurements(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 298
    .line 299
    .line 300
    if-eqz v9, :cond_10

    .line 301
    .line 302
    :try_start_0
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .line 304
    const/4 v11, 0x0

    .line 305
    :try_start_1
    invoke-virtual {v3, v7, v11}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    const-string v8, "Is a module: true"

    .line 310
    .line 311
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-static {v7, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :catch_0
    const/4 v11, 0x0

    .line 319
    :catch_1
    const-string v7, "Is a module: false"

    .line 320
    .line 321
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    :goto_6
    invoke-virtual {v0, v6, v10, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageInstallationInfo(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 325
    .line 326
    .line 327
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 328
    .line 329
    invoke-static {v6, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageSignerDetails(Landroid/content/pm/SigningInfo;Ljava/io/PrintWriter;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_10
    const/4 v11, 0x0

    .line 337
    goto :goto_5

    .line 338
    :cond_11
    const/4 v11, 0x0

    .line 339
    move v10, v11

    .line 340
    :goto_7
    return v10

    .line 341
    :pswitch_4
    const/4 v11, 0x0

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    move v9, v11

    .line 347
    move v12, v9

    .line 348
    move v13, v12

    .line 349
    move v15, v13

    .line 350
    const/4 v10, 0x1

    .line 351
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    if-eqz v11, :cond_19

    .line 356
    .line 357
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 358
    .line 359
    .line 360
    move-result v20

    .line 361
    sparse-switch v20, :sswitch_data_2

    .line 362
    .line 363
    .line 364
    :goto_9
    move-object/from16 v20, v4

    .line 365
    .line 366
    :goto_a
    const/4 v4, -0x1

    .line 367
    goto/16 :goto_d

    .line 368
    .line 369
    :sswitch_9
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v20

    .line 373
    if-nez v20, :cond_12

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_12
    const/16 v20, 0x6

    .line 377
    .line 378
    goto :goto_b

    .line 379
    :sswitch_a
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v20

    .line 383
    if-nez v20, :cond_13

    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_13
    const/16 v20, 0x5

    .line 387
    .line 388
    :goto_b
    move/from16 v21, v20

    .line 389
    .line 390
    move-object/from16 v20, v4

    .line 391
    .line 392
    move/from16 v4, v21

    .line 393
    .line 394
    goto :goto_d

    .line 395
    :sswitch_b
    move-object/from16 v20, v4

    .line 396
    .line 397
    const-string v4, "--preloads-only"

    .line 398
    .line 399
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-nez v4, :cond_14

    .line 404
    .line 405
    goto :goto_c

    .line 406
    :cond_14
    const/4 v4, 0x4

    .line 407
    goto :goto_d

    .line 408
    :sswitch_c
    move-object/from16 v20, v4

    .line 409
    .line 410
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-nez v4, :cond_15

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_15
    const/4 v4, 0x3

    .line 418
    goto :goto_d

    .line 419
    :sswitch_d
    move-object/from16 v20, v4

    .line 420
    .line 421
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-nez v4, :cond_16

    .line 426
    .line 427
    goto :goto_c

    .line 428
    :cond_16
    const/4 v4, 0x2

    .line 429
    goto :goto_d

    .line 430
    :sswitch_e
    move-object/from16 v20, v4

    .line 431
    .line 432
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-nez v4, :cond_17

    .line 437
    .line 438
    goto :goto_c

    .line 439
    :cond_17
    const/4 v4, 0x1

    .line 440
    goto :goto_d

    .line 441
    :sswitch_f
    move-object/from16 v20, v4

    .line 442
    .line 443
    const-string v4, "-l"

    .line 444
    .line 445
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    if-nez v4, :cond_18

    .line 450
    .line 451
    :goto_c
    goto :goto_a

    .line 452
    :cond_18
    const/4 v4, 0x0

    .line 453
    :goto_d
    packed-switch v4, :pswitch_data_2

    .line 454
    .line 455
    .line 456
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    const/4 v10, 0x1

    .line 464
    goto/16 :goto_13

    .line 465
    .line 466
    :pswitch_5
    const/4 v10, 0x0

    .line 467
    goto :goto_e

    .line 468
    :pswitch_6
    const/4 v12, 0x1

    .line 469
    goto :goto_e

    .line 470
    :pswitch_7
    const/4 v9, 0x1

    .line 471
    goto :goto_e

    .line 472
    :pswitch_8
    const/4 v13, 0x1

    .line 473
    goto :goto_e

    .line 474
    :pswitch_9
    const/4 v15, 0x1

    .line 475
    :goto_e
    move-object/from16 v4, v20

    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_19
    const-string v3, "MBA"

    .line 479
    .line 480
    const-string v4, "Preload"

    .line 481
    .line 482
    if-nez v9, :cond_1b

    .line 483
    .line 484
    if-eqz v10, :cond_1b

    .line 485
    .line 486
    if-eqz v12, :cond_1a

    .line 487
    .line 488
    invoke-static {v1, v4, v13}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 489
    .line 490
    .line 491
    goto :goto_f

    .line 492
    :cond_1a
    invoke-static {v1, v3, v13}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 493
    .line 494
    .line 495
    :cond_1b
    :goto_f
    iget-object v5, v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 496
    .line 497
    iget-object v5, v5, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 498
    .line 499
    iget-object v5, v5, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 500
    .line 501
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    const-wide/32 v6, 0x8200000

    .line 506
    .line 507
    .line 508
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    if-eqz v7, :cond_1f

    .line 525
    .line 526
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 531
    .line 532
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 533
    .line 534
    if-nez v8, :cond_1c

    .line 535
    .line 536
    :try_start_2
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 537
    .line 538
    const-wide/32 v16, 0x8020000

    .line 539
    .line 540
    .line 541
    invoke-static/range {v16 .. v17}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 542
    .line 543
    .line 544
    move-result-object v11

    .line 545
    invoke-virtual {v5, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 546
    .line 547
    .line 548
    :cond_1c
    move-object/from16 p1, v5

    .line 549
    .line 550
    goto :goto_11

    .line 551
    :catch_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string v11, "Failed to obtain an updated PackageInfo of "

    .line 554
    .line 555
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 559
    .line 560
    move-object/from16 p1, v5

    .line 561
    .line 562
    const-string v5, "ShellCommand"

    .line 563
    .line 564
    invoke-static {v8, v11, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    :goto_11
    if-eqz v9, :cond_1d

    .line 568
    .line 569
    if-eqz v10, :cond_1d

    .line 570
    .line 571
    invoke-static {v1, v4, v13}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 572
    .line 573
    .line 574
    :cond_1d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    .line 578
    .line 579
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    new-instance v5, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    move-object v8, v3

    .line 600
    move-object v11, v4

    .line 601
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 602
    .line 603
    .line 604
    move-result-wide v3

    .line 605
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v7, v13, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageMeasurements(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 619
    .line 620
    .line 621
    if-eqz v9, :cond_1e

    .line 622
    .line 623
    invoke-virtual {v0, v7, v15, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printAppDetails(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v7, v13, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageInstallationInfo(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 627
    .line 628
    .line 629
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 630
    .line 631
    invoke-static {v3, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageSignerDetails(Landroid/content/pm/SigningInfo;Ljava/io/PrintWriter;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    :cond_1e
    move-object/from16 v5, p1

    .line 638
    .line 639
    move-object v3, v8

    .line 640
    move-object v4, v11

    .line 641
    goto :goto_10

    .line 642
    :cond_1f
    move-object v8, v3

    .line 643
    if-eqz v12, :cond_21

    .line 644
    .line 645
    :cond_20
    const/4 v10, 0x0

    .line 646
    goto :goto_13

    .line 647
    :cond_21
    iget-object v3, v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 648
    .line 649
    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 650
    .line 651
    invoke-static {v3}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mgetNewlyInstalledMbas(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    :cond_22
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-eqz v4, :cond_20

    .line 664
    .line 665
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 670
    .line 671
    if-eqz v9, :cond_23

    .line 672
    .line 673
    if-eqz v10, :cond_23

    .line 674
    .line 675
    invoke-static {v1, v8, v13}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 676
    .line 677
    .line 678
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    .line 682
    .line 683
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 684
    .line 685
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 704
    .line 705
    .line 706
    move-result-wide v6

    .line 707
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageMeasurements(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 721
    .line 722
    .line 723
    if-eqz v9, :cond_22

    .line 724
    .line 725
    invoke-virtual {v0, v4, v15, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printAppDetails(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v4, v13, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageInstallationInfo(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 729
    .line 730
    .line 731
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 732
    .line 733
    invoke-static {v4, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageSignerDetails(Landroid/content/pm/SigningInfo;Ljava/io/PrintWriter;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    goto :goto_12

    .line 740
    :goto_13
    return v10

    .line 741
    :pswitch_a
    move-object/from16 v20, v4

    .line 742
    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    const/4 v4, 0x0

    .line 748
    const/4 v9, 0x1

    .line 749
    const/4 v10, 0x0

    .line 750
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v11

    .line 754
    if-eqz v11, :cond_29

    .line 755
    .line 756
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 757
    .line 758
    .line 759
    move-result v12

    .line 760
    sparse-switch v12, :sswitch_data_3

    .line 761
    .line 762
    .line 763
    :goto_15
    move-object/from16 v12, v20

    .line 764
    .line 765
    :goto_16
    const/4 v13, -0x1

    .line 766
    goto :goto_18

    .line 767
    :sswitch_10
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v12

    .line 771
    if-nez v12, :cond_24

    .line 772
    .line 773
    goto :goto_15

    .line 774
    :cond_24
    move-object/from16 v12, v20

    .line 775
    .line 776
    const/4 v13, 0x4

    .line 777
    goto :goto_18

    .line 778
    :sswitch_11
    move-object/from16 v12, v20

    .line 779
    .line 780
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v13

    .line 784
    if-nez v13, :cond_25

    .line 785
    .line 786
    goto :goto_17

    .line 787
    :cond_25
    const/4 v13, 0x3

    .line 788
    goto :goto_18

    .line 789
    :sswitch_12
    move-object/from16 v12, v20

    .line 790
    .line 791
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v13

    .line 795
    if-nez v13, :cond_26

    .line 796
    .line 797
    goto :goto_17

    .line 798
    :cond_26
    const/4 v13, 0x2

    .line 799
    goto :goto_18

    .line 800
    :sswitch_13
    move-object/from16 v12, v20

    .line 801
    .line 802
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v13

    .line 806
    if-nez v13, :cond_27

    .line 807
    .line 808
    goto :goto_17

    .line 809
    :cond_27
    const/4 v13, 0x1

    .line 810
    goto :goto_18

    .line 811
    :sswitch_14
    move-object/from16 v12, v20

    .line 812
    .line 813
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v13

    .line 817
    if-nez v13, :cond_28

    .line 818
    .line 819
    :goto_17
    goto :goto_16

    .line 820
    :cond_28
    const/4 v13, 0x0

    .line 821
    :goto_18
    packed-switch v13, :pswitch_data_3

    .line 822
    .line 823
    .line 824
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    const/4 v10, 0x1

    .line 832
    goto/16 :goto_1c

    .line 833
    .line 834
    :pswitch_b
    const/4 v9, 0x0

    .line 835
    goto :goto_19

    .line 836
    :pswitch_c
    const/4 v4, 0x1

    .line 837
    goto :goto_19

    .line 838
    :pswitch_d
    const/4 v10, 0x1

    .line 839
    :goto_19
    move-object/from16 v20, v12

    .line 840
    .line 841
    goto :goto_14

    .line 842
    :cond_29
    iget-object v3, v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 843
    .line 844
    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 845
    .line 846
    iget-object v3, v3, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 847
    .line 848
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    if-nez v3, :cond_2a

    .line 853
    .line 854
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    const/4 v10, -0x1

    .line 858
    goto/16 :goto_1c

    .line 859
    .line 860
    :cond_2a
    const-string v5, "Module"

    .line 861
    .line 862
    if-nez v4, :cond_2b

    .line 863
    .line 864
    if-eqz v9, :cond_2b

    .line 865
    .line 866
    invoke-static {v1, v5, v10}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 867
    .line 868
    .line 869
    :cond_2b
    const/high16 v6, 0x20000

    .line 870
    .line 871
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    .line 872
    .line 873
    .line 874
    move-result-object v6

    .line 875
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 876
    .line 877
    .line 878
    move-result-object v6

    .line 879
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 880
    .line 881
    .line 882
    move-result v7

    .line 883
    if-eqz v7, :cond_2e

    .line 884
    .line 885
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v7

    .line 889
    check-cast v7, Landroid/content/pm/ModuleInfo;

    .line 890
    .line 891
    invoke-virtual {v7}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v8

    .line 895
    if-eqz v4, :cond_2c

    .line 896
    .line 897
    if-eqz v9, :cond_2c

    .line 898
    .line 899
    invoke-static {v1, v5, v10}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHeadersHelper(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 900
    .line 901
    .line 902
    :cond_2c
    const/high16 v11, 0x48000000    # 131072.0f

    .line 903
    .line 904
    :try_start_3
    invoke-virtual {v3, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 905
    .line 906
    .line 907
    move-result-object v11

    .line 908
    new-instance v12, Ljava/lang/StringBuilder;

    .line 909
    .line 910
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    .line 912
    .line 913
    iget-object v13, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 914
    .line 915
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v12

    .line 925
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    new-instance v12, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 931
    .line 932
    .line 933
    move-object/from16 p1, v5

    .line 934
    .line 935
    move-object v13, v6

    .line 936
    :try_start_4
    invoke-virtual {v11}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 937
    .line 938
    .line 939
    move-result-wide v5

    .line 940
    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v5

    .line 950
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0, v11, v10, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageMeasurements(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 954
    .line 955
    .line 956
    if-eqz v4, :cond_2d

    .line 957
    .line 958
    invoke-static {v7, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v0, v11, v10, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageInstallationInfo(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V

    .line 962
    .line 963
    .line 964
    iget-object v5, v11, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 965
    .line 966
    invoke-static {v5, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printPackageSignerDetails(Landroid/content/pm/SigningInfo;Ljava/io/PrintWriter;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 970
    .line 971
    .line 972
    :cond_2d
    :goto_1b
    move-object/from16 v5, p1

    .line 973
    .line 974
    move-object v6, v13

    .line 975
    goto :goto_1a

    .line 976
    :catch_3
    move-object/from16 p1, v5

    .line 977
    .line 978
    move-object v13, v6

    .line 979
    :catch_4
    const-string v5, ",ERROR:Unable to find PackageInfo for this module."

    .line 980
    .line 981
    invoke-static {v1, v8, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    if-eqz v4, :cond_2d

    .line 985
    .line 986
    invoke-static {v7, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printModuleDetails(Landroid/content/pm/ModuleInfo;Ljava/io/PrintWriter;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    goto :goto_1b

    .line 993
    :cond_2e
    const/4 v10, 0x0

    .line 994
    :goto_1c
    return v10

    .line 995
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    const/4 v3, 0x0

    .line 1000
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v4

    .line 1004
    if-eqz v4, :cond_30

    .line 1005
    .line 1006
    const-string v3, "-a"

    .line 1007
    .line 1008
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v3

    .line 1012
    if-nez v3, :cond_2f

    .line 1013
    .line 1014
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    .line 1020
    .line 1021
    const/4 v10, 0x1

    .line 1022
    goto/16 :goto_1f

    .line 1023
    .line 1024
    :cond_2f
    const/4 v3, 0x1

    .line 1025
    goto :goto_1d

    .line 1026
    :cond_30
    iget-object v4, v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 1027
    .line 1028
    iget-object v4, v4, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 1029
    .line 1030
    iget-object v4, v4, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 1031
    .line 1032
    const-string v5, "Image Info:"

    .line 1033
    .line 1034
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 1038
    .line 1039
    invoke-static {v1, v5, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    if-eqz v3, :cond_32

    .line 1043
    .line 1044
    iget-object v0, v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 1045
    .line 1046
    iget-object v0, v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 1047
    .line 1048
    iget-object v0, v0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 1049
    .line 1050
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    if-nez v0, :cond_31

    .line 1055
    .line 1056
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    .line 1058
    .line 1059
    const/4 v10, -0x1

    .line 1060
    goto :goto_1f

    .line 1061
    :cond_31
    const-string v0, "Other partitions:"

    .line 1062
    .line 1063
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    invoke-static {}, Landroid/os/Build;->getFingerprintedPartitions()Ljava/util/List;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1075
    .line 1076
    .line 1077
    move-result v2

    .line 1078
    if-eqz v2, :cond_32

    .line 1079
    .line 1080
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v2

    .line 1084
    check-cast v2, Landroid/os/Build$Partition;

    .line 1085
    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    const-string v4, "Name: "

    .line 1089
    .line 1090
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v2}, Landroid/os/Build$Partition;->getName()Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v4

    .line 1097
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v3

    .line 1104
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    const-string v4, "Fingerprint: "

    .line 1110
    .line 1111
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v2}, Landroid/os/Build$Partition;->getFingerprint()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v4

    .line 1118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v3

    .line 1125
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    .line 1127
    .line 1128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    const-string v4, "Build time (ms): "

    .line 1131
    .line 1132
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v2}, Landroid/os/Build$Partition;->getBuildTimeMillis()J

    .line 1136
    .line 1137
    .line 1138
    move-result-wide v4

    .line 1139
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    .line 1148
    .line 1149
    goto :goto_1e

    .line 1150
    :cond_32
    const/4 v10, 0x0

    .line 1151
    :goto_1f
    return v10

    .line 1152
    nop

    .line 1153
    :sswitch_data_0
    .sparse-switch
        -0x5603eaee -> :sswitch_3
        -0x473c655f -> :sswitch_2
        0x25f4fba1 -> :sswitch_1
        0x5178b9ab -> :sswitch_0
    .end sparse-switch

    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_a
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    :sswitch_data_1
    .sparse-switch
        0x5e2 -> :sswitch_8
        0x5e9 -> :sswitch_7
        0x2904487 -> :sswitch_6
        0x39a48d1a -> :sswitch_5
        0x6789dfe2 -> :sswitch_4
    .end sparse-switch

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    :sswitch_data_2
    .sparse-switch
        0x5df -> :sswitch_f
        0x5e2 -> :sswitch_e
        0x5e9 -> :sswitch_d
        0x2904487 -> :sswitch_c
        0x2a0bb26f -> :sswitch_b
        0x39a48d1a -> :sswitch_a
        0x6789dfe2 -> :sswitch_9
    .end sparse-switch

    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    :sswitch_data_3
    .sparse-switch
        0x5e2 -> :sswitch_14
        0x5e9 -> :sswitch_13
        0x2904487 -> :sswitch_12
        0x39a48d1a -> :sswitch_11
        0x6789dfe2 -> :sswitch_10
    .end sparse-switch

    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->printHelpMenu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final printAppDetails(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "--- App Details ---"

    .line 2
    .line 3
    const-string v1, "Name: "

    .line 4
    .line 5
    invoke-static {p3, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "Label: "

    .line 14
    .line 15
    invoke-static {p3, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "Description: "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v0, "Has code: "

    .line 81
    .line 82
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasCode()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v0, "Is enabled: "

    .line 104
    .line 105
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .line 110
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 111
    .line 112
    const-string v1, "Is suspended: "

    .line 113
    .line 114
    invoke-static {p0, v0, p3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 119
    .line 120
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 121
    .line 122
    const/high16 v1, 0x40000000    # 2.0f

    .line 123
    .line 124
    and-int/2addr v0, v1

    .line 125
    const/4 v1, 0x1

    .line 126
    const/4 v2, 0x0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    .line 129
    move v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    move v0, v2

    .line 132
    :goto_0
    const-string v3, "Compile SDK version: "

    .line 133
    .line 134
    invoke-static {p0, v0, p3, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    iget v0, p1, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 139
    .line 140
    const-string v3, "Target SDK version: "

    .line 141
    .line 142
    invoke-static {p0, v0, p3, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 147
    .line 148
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 149
    .line 150
    const-string v3, "Is privileged: "

    .line 151
    .line 152
    invoke-static {p0, v0, p3, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v0, "Is a stub: "

    .line 175
    .line 176
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-boolean v0, p1, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 180
    .line 181
    const-string v3, "Is a core app: "

    .line 182
    .line 183
    invoke-static {p0, v0, p3, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    iget-boolean v0, p1, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 188
    .line 189
    const-string v3, "SEInfo: "

    .line 190
    .line 191
    invoke-static {p0, v0, p3, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 196
    .line 197
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 198
    .line 199
    const-string v3, "Component factory: "

    .line 200
    .line 201
    invoke-static {p3, v0, v3, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 206
    .line 207
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 208
    .line 209
    const-string v3, "Process name: "

    .line 210
    .line 211
    invoke-static {p3, v0, v3, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 216
    .line 217
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 218
    .line 219
    const-string v3, "Task affinity: "

    .line 220
    .line 221
    invoke-static {p3, v0, v3, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 226
    .line 227
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 228
    .line 229
    const-string v3, "UID: "

    .line 230
    .line 231
    invoke-static {p3, v0, v3, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 236
    .line 237
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 238
    .line 239
    const-string v3, "Shared UID: "

    .line 240
    .line 241
    invoke-static {p0, v0, p3, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {p0, v0, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 248
    .line 249
    .line 250
    if-eqz p2, :cond_8

    .line 251
    .line 252
    const-string p0, "== App\'s Shared Libraries =="

    .line 253
    .line 254
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getSharedLibraryInfos()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    if-eqz p0, :cond_1

    .line 264
    .line 265
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-eqz p1, :cond_2

    .line 270
    .line 271
    :cond_1
    const-string p1, "<none>"

    .line 272
    .line 273
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-ge v2, p1, :cond_8

    .line 281
    .line 282
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Landroid/content/pm/SharedLibraryInfo;

    .line 287
    .line 288
    new-instance p2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v0, "  ++ Library #"

    .line 291
    .line 292
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    add-int/lit8 v2, v2, 0x1

    .line 296
    .line 297
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v0, " ++"

    .line 301
    .line 302
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p2

    .line 309
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v0, "  Lib name: "

    .line 315
    .line 316
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 334
    .line 335
    .line 336
    move-result-wide v3

    .line 337
    const-string p2, "  Lib version: "

    .line 338
    .line 339
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-wide/16 v5, -0x1

    .line 343
    .line 344
    cmp-long p2, v3, v5

    .line 345
    .line 346
    const-string/jumbo v0, "undefined"

    .line 347
    .line 348
    .line 349
    if-nez p2, :cond_3

    .line 350
    .line 351
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_3
    invoke-virtual {p3, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 356
    .line 357
    .line 358
    :goto_2
    const-string p2, "\n"

    .line 359
    .line 360
    const-string v3, "  Lib package name (if available): "

    .line 361
    .line 362
    invoke-static {p3, p2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v4, "  Lib path: "

    .line 383
    .line 384
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v3, "  Lib type: "

    .line 402
    .line 403
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-eqz v3, :cond_7

    .line 411
    .line 412
    if-eq v3, v1, :cond_6

    .line 413
    .line 414
    const/4 v4, 0x2

    .line 415
    if-eq v3, v4, :cond_5

    .line 416
    .line 417
    const/4 v4, 0x3

    .line 418
    if-eq v3, v4, :cond_4

    .line 419
    .line 420
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    goto :goto_3

    .line 424
    :cond_4
    const-string v0, "SDK"

    .line 425
    .line 426
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_5
    const-string/jumbo v0, "static"

    .line 431
    .line 432
    .line 433
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_3

    .line 437
    :cond_6
    const-string/jumbo v0, "dynamic"

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    goto :goto_3

    .line 444
    :cond_7
    const-string/jumbo v0, "built-in"

    .line 445
    .line 446
    .line 447
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    :goto_3
    const-string v0, "  Is a native lib: "

    .line 451
    .line 452
    invoke-static {p3, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    move-result-object p2

    .line 456
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_1

    .line 471
    .line 472
    :cond_8
    return-void
.end method

.method public final printHelpMenu()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Transparency manager (transparency) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "  get image_info [-a]"

    .line 26
    .line 27
    const-string v2, "    Print information about loaded image (firmware). Options:"

    .line 28
    .line 29
    const-string v3, "        -a: lists all other identifiable partitions."

    .line 30
    .line 31
    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "  get apex_info [-o] [-v] [--no-headers]"

    .line 35
    .line 36
    const-string v2, "    Print information about installed APEXs on device."

    .line 37
    .line 38
    const-string v3, "      -o: also uses the old digest scheme (SHA256) to compute APEX hashes. WARNING: This can be a very slow and CPU-intensive computation."

    .line 39
    .line 40
    const-string v4, "      -v: lists more verbose information about each APEX."

    .line 41
    .line 42
    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "      --no-headers: does not print the header if specified."

    .line 46
    .line 47
    const-string v2, "  get module_info [-o] [-v] [--no-headers]"

    .line 48
    .line 49
    const-string v3, "    Print information about installed modules on device."

    .line 50
    .line 51
    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v2, "      -o: also uses the old digest scheme (SHA256) to compute module hashes. WARNING: This can be a very slow and CPU-intensive computation."

    .line 55
    .line 56
    const-string v3, "      -v: lists more verbose information about each module."

    .line 57
    .line 58
    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "  get mba_info [-o] [-v] [-l] [--no-headers] [--preloads-only]"

    .line 62
    .line 63
    const-string v3, "    Print information about installed mobile bundle apps (MBAs on device)."

    .line 64
    .line 65
    const-string v4, "      -o: also uses the old digest scheme (SHA256) to compute MBA hashes. WARNING: This can be a very slow and CPU-intensive computation."

    .line 66
    .line 67
    const-string v5, "      -v: lists more verbose information about each app."

    .line 68
    .line 69
    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "      -l: lists shared library info. (This option only works when -v option is also specified)"

    .line 73
    .line 74
    const-string v3, "      --preloads-only: lists only preloaded apps. This options can also be combined with others."

    .line 75
    .line 76
    invoke-static {p0, v2, v1, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final printPackageInstallationInfo(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string/jumbo v1, "could-not-be-determined"

    .line 3
    .line 4
    .line 5
    const-string v2, "--- Package Installation Info ---"

    .line 6
    .line 7
    const-string v3, "Current install location: "

    .line 8
    .line 9
    invoke-static {p3, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v3, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "/data/apex/"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const-string v3, "TransparencyService"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 38
    .line 39
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v6, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, v5}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v5, "apexservice"

    .line 55
    .line 56
    invoke-static {v5}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-interface {v5}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    array-length v6, v5

    .line 73
    move v7, v4

    .line 74
    :goto_0
    if-ge v7, v6, :cond_1

    .line 75
    .line 76
    aget-object v8, v5, v7

    .line 77
    .line 78
    iget-object v9, v8, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_0

    .line 85
    .line 86
    iget-object v2, v8, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_0
    move-exception v2

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    add-int/2addr v7, v0

    .line 92
    goto :goto_0

    .line 93
    :goto_1
    const-string v5, "Unable to get package list from apexservice"

    .line 94
    .line 95
    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    :cond_1
    move-object v2, v1

    .line 99
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo v6, "|--> Pre-installed package install location: "

    .line 102
    .line 103
    .line 104
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    if-eqz p2, :cond_2

    .line 124
    .line 125
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {v2, p2}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const-string/jumbo v1, "|--> Pre-installed package SHA-256 digest: "

    .line 134
    .line 135
    .line 136
    invoke-static {p3, v1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object p2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->computeApkContentDigest(Ljava/lang/String;)Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    if-nez p2, :cond_3

    .line 149
    .line 150
    const-string/jumbo p2, "|--> ERROR: Failed to compute package content digest for "

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_4

    .line 174
    .line 175
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Ljava/util/Map$Entry;

    .line 180
    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, [B

    .line 192
    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string/jumbo v6, "|--> Pre-installed package content digest: "

    .line 196
    .line 197
    .line 198
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v4}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string/jumbo v5, "|--> Pre-installed package content digest algorithm: "

    .line 218
    .line 219
    .line 220
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v5, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 224
    .line 225
    iget-object v5, v5, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-static {v5, v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mtranslateContentDigestAlgorithmIdToString(Lcom/android/server/BinaryTransparencyService;I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_4
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v1, "First install time (ms): "

    .line 249
    .line 250
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-wide v1, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 254
    .line 255
    const-string v5, "Last update time (ms):   "

    .line 256
    .line 257
    invoke-static {p2, v1, v2, p3, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    iget-wide v1, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 262
    .line 263
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-wide v1, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 274
    .line 275
    iget-wide v5, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 276
    .line 277
    cmp-long p2, v1, v5

    .line 278
    .line 279
    if-nez p2, :cond_5

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_5
    move v0, v4

    .line 283
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v1, "Is preloaded: "

    .line 286
    .line 287
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 301
    .line 302
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 303
    .line 304
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 305
    .line 306
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 307
    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    const/4 v0, 0x0

    .line 313
    if-nez p0, :cond_6

    .line 314
    .line 315
    const-string p0, "Error obtaining an instance of PackageManager."

    .line 316
    .line 317
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_6
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 322
    .line 323
    .line 324
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    goto :goto_6

    .line 326
    :catch_1
    move-exception p0

    .line 327
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 328
    .line 329
    .line 330
    :goto_6
    if-nez v0, :cond_7

    .line 331
    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string p2, "ERROR: Unable to obtain installSourceInfo of "

    .line 335
    .line 336
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 340
    .line 341
    invoke-static {p0, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string p2, "Installation initiated by: "

    .line 348
    .line 349
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string p2, "Installation done by: "

    .line 369
    .line 370
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    new-instance p0, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string p2, "Installation originating from: "

    .line 390
    .line 391
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getOriginatingPackageName()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :goto_7
    iget-boolean p0, p1, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 409
    .line 410
    if-eqz p0, :cond_8

    .line 411
    .line 412
    new-instance p0, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string p2, "Is an active APEX: "

    .line 415
    .line 416
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    iget-boolean p1, p1, Landroid/content/pm/PackageInfo;->isActiveApex:Z

    .line 420
    .line 421
    invoke-static {p0, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 422
    .line 423
    .line 424
    :cond_8
    return-void
.end method

.method public final printPackageMeasurements(Landroid/content/pm/PackageInfo;ZLjava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->computeApkContentDigest(Ljava/lang/String;)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p2, "ERROR: Failed to compute package content digest for "

    .line 19
    .line 20
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p0, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFile(Ljava/lang/String;[B)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ","

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Ljava/util/Map$Entry;

    .line 84
    .line 85
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    check-cast p2, [B

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->this$1:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v1, v0}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mtranslateContentDigestAlgorithmIdToString(Lcom/android/server/BinaryTransparencyService;I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v0, ":"

    .line 113
    .line 114
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-static {p2, v0}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string p2, "\n"

    .line 126
    .line 127
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method
