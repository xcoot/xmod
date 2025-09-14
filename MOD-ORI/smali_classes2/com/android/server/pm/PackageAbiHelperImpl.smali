.class public final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# static fields
.field public static sNativelySupported32BitAbis:[Ljava/lang/String;

.field public static sNativelySupported64BitAbis:[Ljava/lang/String;


# direct methods
.method public static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_6

    .line 111
    .line 112
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    const-string v1, "Can\'t canonicalize code path "

    .line 127
    .line 128
    const-string v2, "PackageManager"

    .line 129
    .line 130
    if-eqz p0, :cond_8

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    array-length v4, p0

    .line 143
    const/4 v5, 0x2

    .line 144
    if-le v4, v5, :cond_7

    .line 145
    .line 146
    new-instance v0, Ljava/io/File;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const/4 v2, 0x1

    .line 154
    aget-object v2, p0, v2

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    aget-object p0, p0, v5

    .line 163
    .line 164
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    move-object p0, v0

    .line 175
    goto :goto_1

    .line 176
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    goto :goto_1

    .line 196
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    if-eqz v4, :cond_9

    .line 209
    .line 210
    move-object p0, v3

    .line 211
    move-object v3, v4

    .line 212
    goto :goto_0

    .line 213
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v4, "Unrecognized code path "

    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v4, " - using "

    .line 227
    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    return-object p0
.end method

.method public static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    const-string v1, ".apk"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    const-string v1, ".tmp"

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "Odd, "

    .line 39
    .line 40
    const-string v2, " doesn\'t look like an APK"

    .line 41
    .line 42
    const-string v3, "PackageManager"

    .line 43
    .line 44
    invoke-static {v1, p0, v2, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_3
    :goto_0
    const/16 p0, 0x2e

    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 6

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    move p4, v2

    goto :goto_0

    :cond_0
    move p4, v1

    .line 8
    :goto_0
    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result p5

    iget-object v3, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "lib"

    if-eqz p5, :cond_6

    if-eqz p4, :cond_4

    .line 9
    invoke-static {p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object p3, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    if-nez p0, :cond_1

    .line 11
    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    :goto_1
    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    .line 14
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    const-string p3, "lib64"

    if-eqz p0, :cond_2

    move-object p4, p3

    goto :goto_2

    :cond_2
    move-object p4, v5

    .line 16
    :goto_2
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {p4, p2}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    .line 17
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    if-eqz v3, :cond_5

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v5, p3

    .line 18
    :goto_3
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v5, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 20
    :cond_4
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    :cond_5
    :goto_4
    move-object p0, p4

    goto :goto_6

    .line 23
    :cond_6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    .line 24
    new-instance p1, Ljava/io/File;

    .line 25
    sget-object p2, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    if-nez p0, :cond_7

    .line 26
    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    goto :goto_5

    .line 27
    :cond_7
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    :goto_5
    invoke-direct {p1, p4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_8

    .line 29
    new-instance p1, Ljava/io/File;

    .line 30
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :cond_8
    move v1, v2

    .line 31
    :goto_6
    new-instance p1, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {p1, p4, v1, p0, v4}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v6, "ro.dalvik.vm.isa."

    .line 20
    .line 21
    .line 22
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, [Ljava/lang/String;

    .line 55
    .line 56
    return-object p0
.end method

.method public static maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    if-gez p0, :cond_3

    .line 2
    .line 3
    const/16 v0, -0x72

    .line 4
    .line 5
    const/16 v1, -0x71

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    if-ne p0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    .line 13
    .line 14
    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p2

    .line 18
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 19
    .line 20
    if-eq p0, v1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 24
    .line 25
    const/16 p1, -0x83

    .line 26
    .line 27
    const-string p2, "The multiArch app\'s native libs don\'t support all the natively supported ABIs of the device."

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 2
    move-object p0, p1

    check-cast p0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    move-object v1, p4

    move v4, p2

    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object p0

    return-object p0
.end method

.method public final derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
    .locals 19

    .line 1
    const-string v1, "Unable to get canonical file "

    .line 2
    .line 3
    const-string v0, "Error unpackaging native libs for app, errorCode="

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 8
    .line 9
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 18
    .line 19
    invoke-direct {v4, v3, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    move-object/from16 v5, p5

    .line 31
    .line 32
    move/from16 v8, p2

    .line 33
    .line 34
    move/from16 v9, p3

    .line 35
    .line 36
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v3, 0x0

    .line 55
    :goto_0
    if-eqz p2, :cond_1

    .line 56
    .line 57
    if-nez p3, :cond_1

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    :cond_2
    iget-object v6, v2, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    invoke-static {v9, v10, v11, v12}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    .line 104
    .line 105
    .line 106
    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    new-instance v10, Ljava/io/File;

    .line 108
    .line 109
    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    .line 113
    .line 114
    .line 115
    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const-string v11, "findSupportedAbi"

    .line 117
    .line 118
    const-string v12, "copyNativeBinaries"

    .line 119
    .line 120
    const/16 v13, -0x6e

    .line 121
    .line 122
    const-wide/32 v4, 0x40000

    .line 123
    .line 124
    .line 125
    iget-boolean v2, v2, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 126
    .line 127
    if-eqz v6, :cond_17

    .line 128
    .line 129
    :try_start_2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->forceMultiArchNativeLibsMatch()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/16 v6, 0x23

    .line 140
    .line 141
    if-lt v0, v6, :cond_3

    .line 142
    .line 143
    if-nez p4, :cond_3

    .line 144
    .line 145
    const/4 v0, 0x1

    .line 146
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    move-object v8, v9

    .line 149
    goto/16 :goto_18

    .line 150
    .line 151
    :catch_0
    move-exception v0

    .line 152
    const/4 v3, 0x0

    .line 153
    goto/16 :goto_16

    .line 154
    .line 155
    :cond_3
    const/4 v0, 0x0

    .line 156
    :goto_1
    if-eqz v0, :cond_5

    .line 157
    .line 158
    sget-object v6, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v6, :cond_4

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v6}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    sput-object v6, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    sget-object v6, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 173
    .line 174
    :goto_2
    if-eqz v0, :cond_7

    .line 175
    .line 176
    sget-object v16, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v16, :cond_6

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    sget-object v16, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 182
    .line 183
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v16

    .line 187
    sput-object v16, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    .line 188
    .line 189
    :goto_3
    move-object/from16 v8, v16

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_7
    sget-object v16, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_4
    array-length v15, v6

    .line 196
    if-lez v15, :cond_8

    .line 197
    .line 198
    const/4 v15, 0x1

    .line 199
    goto :goto_5

    .line 200
    :cond_8
    const/4 v15, 0x0

    .line 201
    :goto_5
    array-length v14, v8

    .line 202
    if-lez v14, :cond_9

    .line 203
    .line 204
    const/4 v14, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_9
    const/4 v14, 0x0

    .line 207
    :goto_6
    if-eqz v15, :cond_b

    .line 208
    .line 209
    if-eqz v3, :cond_a

    .line 210
    .line 211
    invoke-static {v4, v5, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v9, v10, v6, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    .line 215
    .line 216
    .line 217
    move-result v17

    .line 218
    goto :goto_7

    .line 219
    :cond_a
    invoke-static {v4, v5, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v9, v6}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v17

    .line 226
    :goto_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    .line 228
    .line 229
    move/from16 v4, v17

    .line 230
    .line 231
    goto :goto_8

    .line 232
    :cond_b
    const/16 v4, -0x72

    .line 233
    .line 234
    :goto_8
    const-string v5, "Shared library native lib extraction not supported"

    .line 235
    .line 236
    if-ltz v4, :cond_d

    .line 237
    .line 238
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 239
    .line 240
    .line 241
    move-result v18

    .line 242
    if-eqz v18, :cond_d

    .line 243
    .line 244
    if-nez v3, :cond_c

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 248
    .line 249
    invoke-direct {v0, v13, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0

    .line 253
    :cond_d
    :goto_9
    const-string v13, "Error unpackaging 32 bit native libs for multiarch app."

    .line 254
    .line 255
    if-eqz v0, :cond_e

    .line 256
    .line 257
    if-eqz v15, :cond_e

    .line 258
    .line 259
    const/4 v15, 0x1

    .line 260
    goto :goto_a

    .line 261
    :cond_e
    const/4 v15, 0x0

    .line 262
    :goto_a
    invoke-static {v4, v13, v15}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V

    .line 263
    .line 264
    .line 265
    if-eqz v14, :cond_10

    .line 266
    .line 267
    if-eqz v3, :cond_f

    .line 268
    .line 269
    move v13, v4

    .line 270
    move-object/from16 p4, v5

    .line 271
    .line 272
    const-wide/32 v4, 0x40000

    .line 273
    .line 274
    .line 275
    invoke-static {v4, v5, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v9, v10, v8, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    const-wide/32 v4, 0x40000

    .line 283
    .line 284
    .line 285
    goto :goto_b

    .line 286
    :cond_f
    move v13, v4

    .line 287
    move-object/from16 p4, v5

    .line 288
    .line 289
    const-wide/32 v4, 0x40000

    .line 290
    .line 291
    .line 292
    invoke-static {v4, v5, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v9, v8}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    :goto_b
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 300
    .line 301
    .line 302
    goto :goto_c

    .line 303
    :cond_10
    move v13, v4

    .line 304
    move-object/from16 p4, v5

    .line 305
    .line 306
    const/16 v2, -0x72

    .line 307
    .line 308
    :goto_c
    const-string v4, "Error unpackaging 64 bit native libs for multiarch app."

    .line 309
    .line 310
    if-eqz v0, :cond_11

    .line 311
    .line 312
    if-eqz v14, :cond_11

    .line 313
    .line 314
    const/4 v0, 0x1

    .line 315
    goto :goto_d

    .line 316
    :cond_11
    const/4 v0, 0x0

    .line 317
    :goto_d
    invoke-static {v2, v4, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(ILjava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    if-ltz v2, :cond_14

    .line 321
    .line 322
    if-eqz v3, :cond_13

    .line 323
    .line 324
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_12

    .line 329
    .line 330
    goto :goto_e

    .line 331
    :cond_12
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 332
    .line 333
    move-object/from16 v3, p4

    .line 334
    .line 335
    const/16 v2, -0x6e

    .line 336
    .line 337
    invoke-direct {v0, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :cond_13
    :goto_e
    aget-object v0, v8, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    .line 343
    move-object v3, v0

    .line 344
    goto :goto_f

    .line 345
    :cond_14
    const/4 v3, 0x0

    .line 346
    :goto_f
    if-ltz v13, :cond_16

    .line 347
    .line 348
    :try_start_4
    aget-object v0, v6, v13

    .line 349
    .line 350
    if-ltz v2, :cond_1e

    .line 351
    .line 352
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->is32BitAbiPreferred()Z

    .line 353
    .line 354
    .line 355
    move-result v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    if-eqz v1, :cond_15

    .line 357
    .line 358
    move-object v8, v3

    .line 359
    goto/16 :goto_15

    .line 360
    .line 361
    :cond_15
    move-object v8, v0

    .line 362
    move-object v0, v3

    .line 363
    goto/16 :goto_15

    .line 364
    .line 365
    :catch_1
    move-exception v0

    .line 366
    goto/16 :goto_16

    .line 367
    .line 368
    :cond_16
    move-object v0, v3

    .line 369
    goto/16 :goto_14

    .line 370
    .line 371
    :cond_17
    if-eqz p4, :cond_18

    .line 372
    .line 373
    :try_start_5
    filled-new-array/range {p4 .. p4}, [Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    goto :goto_10

    .line 378
    :cond_18
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 379
    .line 380
    :goto_10
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 381
    .line 382
    array-length v5, v5

    .line 383
    if-lez v5, :cond_1a

    .line 384
    .line 385
    if-nez p4, :cond_1a

    .line 386
    .line 387
    invoke-static {v9}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    if-eqz v5, :cond_1a

    .line 392
    .line 393
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 394
    .line 395
    array-length v5, v4

    .line 396
    if-lez v5, :cond_19

    .line 397
    .line 398
    const/4 v5, 0x1

    .line 399
    goto :goto_11

    .line 400
    :cond_19
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 401
    .line 402
    const-string v2, "Apps that contain RenderScript with target API level < 21 are not supported on 64-bit only platforms"

    .line 403
    .line 404
    const/16 v3, -0x10

    .line 405
    .line 406
    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v0

    .line 410
    :cond_1a
    const/4 v5, 0x0

    .line 411
    :goto_11
    if-eqz v3, :cond_1b

    .line 412
    .line 413
    const-wide/32 v13, 0x40000

    .line 414
    .line 415
    .line 416
    invoke-static {v13, v14, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-static {v9, v10, v4, v2, v7}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    move v6, v2

    .line 424
    const-wide/32 v2, 0x40000

    .line 425
    .line 426
    .line 427
    goto :goto_12

    .line 428
    :cond_1b
    const-wide/32 v2, 0x40000

    .line 429
    .line 430
    .line 431
    invoke-static {v2, v3, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v9, v4}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    :goto_12
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 439
    .line 440
    .line 441
    if-gez v6, :cond_1d

    .line 442
    .line 443
    const/16 v2, -0x72

    .line 444
    .line 445
    if-ne v6, v2, :cond_1c

    .line 446
    .line 447
    goto :goto_13

    .line 448
    :cond_1c
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    .line 449
    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    const/16 v3, -0x6e

    .line 463
    .line 464
    invoke-direct {v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v2

    .line 468
    :cond_1d
    :goto_13
    if-ltz v6, :cond_20

    .line 469
    .line 470
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-nez v0, :cond_1f

    .line 475
    .line 476
    aget-object v0, v4, v6

    .line 477
    .line 478
    :cond_1e
    :goto_14
    const/4 v8, 0x0

    .line 479
    goto :goto_15

    .line 480
    :cond_1f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 481
    .line 482
    const-string v2, "Shared library with native libs must be multiarch"

    .line 483
    .line 484
    const/16 v3, -0x6e

    .line 485
    .line 486
    invoke-direct {v0, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v0

    .line 490
    :cond_20
    const/16 v0, -0x72

    .line 491
    .line 492
    if-ne v6, v0, :cond_21

    .line 493
    .line 494
    if-eqz p4, :cond_21

    .line 495
    .line 496
    move-object/from16 v0, p4

    .line 497
    .line 498
    goto :goto_14

    .line 499
    :cond_21
    if-eqz v5, :cond_22

    .line 500
    .line 501
    const/4 v0, 0x0

    .line 502
    aget-object v0, v4, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 503
    .line 504
    goto :goto_14

    .line 505
    :cond_22
    const/4 v0, 0x0

    .line 506
    goto :goto_14

    .line 507
    :goto_15
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 508
    .line 509
    .line 510
    goto :goto_17

    .line 511
    :catchall_1
    move-exception v0

    .line 512
    const/4 v8, 0x0

    .line 513
    goto :goto_18

    .line 514
    :catch_2
    move-exception v0

    .line 515
    const/4 v3, 0x0

    .line 516
    const/4 v9, 0x0

    .line 517
    :goto_16
    :try_start_6
    const-string v2, "PackageManager"

    .line 518
    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 536
    .line 537
    .line 538
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 539
    .line 540
    .line 541
    move-object v0, v3

    .line 542
    const/4 v8, 0x0

    .line 543
    :goto_17
    new-instance v1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 544
    .line 545
    invoke-direct {v1, v0, v8}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    new-instance v0, Landroid/util/Pair;

    .line 549
    .line 550
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v8

    .line 554
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v9

    .line 558
    move-object v6, v1

    .line 559
    move-object/from16 v7, p5

    .line 560
    .line 561
    move/from16 v10, p2

    .line 562
    .line 563
    move/from16 v11, p3

    .line 564
    .line 565
    invoke-static/range {v6 .. v11}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    return-object v0

    .line 573
    :goto_18
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 574
    .line 575
    .line 576
    throw v0
.end method

.method public final getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    move-object v0, p2

    .line 5
    check-cast v0, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p0

    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    move-object v1, p0

    .line 24
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_6

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_5

    .line 75
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v5, "Instruction set mismatch, "

    .line 79
    .line 80
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    const-string v5, "[caller]"

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move-object v5, v1

    .line 89
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v5, " requires "

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v6, " whereas "

    .line 101
    .line 102
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const-string v5, "PackageManager"

    .line 119
    .line 120
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_5
    if-nez v0, :cond_1

    .line 124
    .line 125
    move-object v1, v2

    .line 126
    move-object v0, v3

    .line 127
    goto :goto_1

    .line 128
    :cond_6
    if-nez v0, :cond_7

    .line 129
    .line 130
    return-object p0

    .line 131
    :cond_7
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    goto :goto_3

    .line 138
    :cond_8
    check-cast p2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 139
    .line 140
    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    :goto_3
    return-object p0
.end method

.method public final getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const-string v3, "lib"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/io/File;

    .line 36
    .line 37
    new-instance v2, Ljava/io/File;

    .line 38
    .line 39
    const-string v5, "lib64"

    .line 40
    .line 41
    invoke-direct {v2, v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    new-instance v2, Ljava/io/File;

    .line 56
    .line 57
    new-instance v5, Ljava/io/File;

    .line 58
    .line 59
    invoke-direct {v5, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 75
    .line 76
    invoke-direct {p0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_1

    .line 86
    .line 87
    aget-object v1, v0, v4

    .line 88
    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    aget-object v0, v0, v4

    .line 96
    .line 97
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Ljava/io/File;

    .line 102
    .line 103
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    move v1, v0

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    move v1, v4

    .line 113
    :goto_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_2

    .line 120
    .line 121
    aget-object v2, v0, v4

    .line 122
    .line 123
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_2

    .line 128
    .line 129
    aget-object v0, v0, v4

    .line 130
    .line 131
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v2, Ljava/io/File;

    .line 136
    .line 137
    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    move p0, v4

    .line 146
    :goto_1
    const/4 v0, 0x0

    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    if-nez p0, :cond_3

    .line 150
    .line 151
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 152
    .line 153
    aget-object p0, p0, v4

    .line 154
    .line 155
    :goto_2
    move-object v6, v0

    .line 156
    move-object v0, p0

    .line 157
    move-object p0, v6

    .line 158
    goto :goto_3

    .line 159
    :cond_3
    if-eqz p0, :cond_4

    .line 160
    .line 161
    if-nez v1, :cond_4

    .line 162
    .line 163
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 164
    .line 165
    aget-object p0, p0, v4

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    if-eqz p0, :cond_7

    .line 169
    .line 170
    if-eqz v1, :cond_7

    .line 171
    .line 172
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-nez p0, :cond_5

    .line 177
    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v0, "Package "

    .line 181
    .line 182
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p1, " has multiple bundled libs, but is not multiarch."

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    const-string p1, "PackageManager"

    .line 198
    .line 199
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_5
    sget-object p0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_6

    .line 209
    .line 210
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 211
    .line 212
    aget-object v0, p0, v4

    .line 213
    .line 214
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 215
    .line 216
    aget-object p0, p0, v4

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_6
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 220
    .line 221
    aget-object v0, p0, v4

    .line 222
    .line 223
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 224
    .line 225
    aget-object p0, p0, v4

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_7
    move-object p0, v0

    .line 229
    :goto_3
    new-instance p1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    .line 230
    .line 231
    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return-object p1
.end method
