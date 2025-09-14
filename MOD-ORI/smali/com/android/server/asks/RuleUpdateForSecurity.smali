.class public final Lcom/android/server/asks/RuleUpdateForSecurity;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public device_policyCopyPath:Ljava/lang/String;

.field public device_policyUnzipPath:Ljava/lang/String;

.field public final mContainer:Lcom/android/server/asks/RUFSContainer;

.field public mVersionFromDevice:Ljava/lang/String;

.field public mVersionFromToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/asks/RUFSContainer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromToken:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    .line 15
    .line 16
    return-void
.end method

.method public static checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p2, :cond_7

    .line 2
    .line 3
    if-eqz p3, :cond_7

    .line 4
    .line 5
    const-string v0, ","

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    move v3, v2

    .line 29
    :goto_0
    array-length v4, p2

    .line 30
    if-ge v3, v4, :cond_0

    .line 31
    .line 32
    aget-object v4, p2, v3

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-eqz p3, :cond_1

    .line 41
    .line 42
    move p2, v2

    .line 43
    :goto_1
    array-length v3, p3

    .line 44
    if-ge p2, v3, :cond_1

    .line 45
    .line 46
    aget-object v3, p3, p2

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 p2, p2, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string/jumbo p2, "ro.product.model"

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string/jumbo p3, "ro.csc.sales_code"

    .line 62
    .line 63
    .line 64
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    const-string v3, "ALL"

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x1

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v4, v5, :cond_4

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eq p2, v5, :cond_3

    .line 94
    .line 95
    :cond_2
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_6

    .line 100
    .line 101
    :cond_3
    :goto_2
    move v2, v5

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_6

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_5

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eq p2, v5, :cond_3

    .line 120
    .line 121
    :cond_5
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_6

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    :goto_3
    const-string/jumbo p2, "checkTargetModelAndCarrier() : result = "

    .line 129
    .line 130
    .line 131
    const-string p3, "AASA_RuleUpdateForSecurity_RUFS"

    .line 132
    .line 133
    invoke-static {p2, p3, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    if-nez v2, :cond_7

    .line 137
    .line 138
    new-instance p2, Ljava/io/File;

    .line 139
    .line 140
    invoke-static {p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {p0, v0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_7

    .line 158
    .line 159
    const-string p0, " is not target here"

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {p3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 169
    .line 170
    .line 171
    :cond_7
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Failed to create new file: "

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "AASA_RuleUpdateForSecurity_RUFS"

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    new-instance p0, Ljava/io/IOException;

    .line 38
    .line 39
    const-string p1, "Failed to create new file"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    move-object v1, p1

    .line 70
    move-object v2, p0

    .line 71
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_2
    move-exception p1

    .line 91
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    :goto_2
    if-eqz p0, :cond_3

    .line 96
    .line 97
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catchall_3
    move-exception p0

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_3
    throw p1
.end method

.method public static deleteDirectoryWithContents(Ljava/io/File;)Z
    .locals 7

    .line 1
    const-string v0, "AASA_RuleUpdateForSecurity_RUFS"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    array-length v3, v2

    .line 19
    move v4, v1

    .line 20
    :goto_0
    if-ge v4, v3, :cond_1

    .line 21
    .line 22
    aget-object v5, v2, v4

    .line 23
    .line 24
    invoke-static {v5}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDirectoryWithContents(Ljava/io/File;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Filed to delete: "

    .line 33
    .line 34
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_2
    const-string/jumbo p0, "file is null"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return v1
.end method

.method public static descramble([B)[B
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    rem-int/lit8 v2, v1, 0xa

    .line 9
    .line 10
    const-string v3, "ASKSRUFS!!"

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    rem-int/lit8 v2, v2, 0x2

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    add-int/2addr v2, v3

    .line 20
    aget-byte v4, p0, v1

    .line 21
    .line 22
    shr-int v5, v4, v2

    .line 23
    .line 24
    and-int/2addr v5, v3

    .line 25
    int-to-byte v5, v5

    .line 26
    shl-int v2, v3, v2

    .line 27
    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    or-int/2addr v2, v4

    .line 31
    :goto_1
    int-to-byte v2, v2

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    not-int v2, v2

    .line 34
    and-int/2addr v2, v4

    .line 35
    goto :goto_1

    .line 36
    :goto_2
    aput-byte v2, v0, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public static digest(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "SHA-1"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    move-object v1, v0

    .line 14
    :goto_0
    const/4 v2, 0x0

    .line 15
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/16 p0, 0x1000

    .line 20
    .line 21
    new-array p1, p0, [B

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :goto_1
    invoke-virtual {v0, p1, v2, p0}, Ljava/io/InputStream;->read([BII)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, p1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :catch_2
    move-exception p0

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :goto_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, " + No RUN "

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :goto_3
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v4, " + No IO "

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 99
    .line 100
    .line 101
    :catch_3
    :cond_1
    :goto_4
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    array-length v0, p0

    .line 111
    move v1, v2

    .line 112
    :goto_5
    if-ge v1, v0, :cond_4

    .line 113
    .line 114
    aget-byte v3, p0, v1

    .line 115
    .line 116
    ushr-int/lit8 v4, v3, 0x4

    .line 117
    .line 118
    and-int/lit8 v4, v4, 0xf

    .line 119
    .line 120
    move v5, v2

    .line 121
    :goto_6
    if-ltz v4, :cond_2

    .line 122
    .line 123
    const/16 v6, 0x9

    .line 124
    .line 125
    if-gt v4, v6, :cond_2

    .line 126
    .line 127
    add-int/lit8 v4, v4, 0x30

    .line 128
    .line 129
    :goto_7
    int-to-char v4, v4

    .line 130
    goto :goto_8

    .line 131
    :cond_2
    add-int/lit8 v4, v4, 0x57

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :goto_8
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    and-int/lit8 v4, v3, 0xf

    .line 138
    .line 139
    add-int/lit8 v6, v5, 0x1

    .line 140
    .line 141
    const/4 v7, 0x1

    .line 142
    if-lt v5, v7, :cond_3

    .line 143
    .line 144
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_3
    move v5, v6

    .line 148
    goto :goto_6

    .line 149
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0
.end method

.method public static extractVersionFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileReader;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string p0, "<VERSION\\s+value=\"(\\d{8})\""

    .line 12
    .line 13
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    throw p0
.end method

.method public static getScpmPolicyVersion()Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "/data/system/.aasa/ASKS.zip"

    .line 2
    .line 3
    const-string v1, "_D"

    .line 4
    .line 5
    const-string v2, "PackageInformation"

    .line 6
    .line 7
    const-string v3, "00000000"

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 10
    .line 11
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipInputStream;

    .line 15
    .line 16
    invoke-direct {v0, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 17
    .line 18
    .line 19
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_3

    .line 24
    .line 25
    const-string/jumbo v6, "version.txt"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_2

    .line 37
    .line 38
    const/16 v5, 0x8

    .line 39
    .line 40
    new-array v6, v5, [B

    .line 41
    .line 42
    const/4 v7, 0x2

    .line 43
    new-array v8, v7, [B

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    invoke-virtual {v0, v6, v9, v5}, Ljava/util/zip/ZipInputStream;->read([BII)I

    .line 47
    .line 48
    .line 49
    new-instance v5, Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v6, "version : "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v8, v9, v7}, Ljava/util/zip/ZipInputStream;->read([BII)I

    .line 76
    .line 77
    .line 78
    new-instance v3, Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v6, "ro.boot.em.status"

    .line 84
    .line 85
    .line 86
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v7, "0x1"

    .line 91
    .line 92
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_0

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v7, "tag : "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v1

    .line 121
    move-object v3, v5

    .line 122
    goto :goto_4

    .line 123
    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_1

    .line 128
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    goto :goto_2

    .line 145
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v6, "_B"

    .line 154
    .line 155
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string/jumbo v6, "scpm policy version : "

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catchall_1
    move-exception v1

    .line 185
    goto :goto_4

    .line 186
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 192
    .line 193
    .line 194
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 195
    .line 196
    .line 197
    goto :goto_9

    .line 198
    :catch_0
    move-exception v0

    .line 199
    goto :goto_8

    .line 200
    :catchall_2
    move-exception v0

    .line 201
    goto :goto_6

    .line 202
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :catchall_3
    move-exception v0

    .line 207
    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    :goto_5
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 211
    :goto_6
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :catchall_4
    move-exception v1

    .line 216
    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    :goto_7
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 220
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .line 222
    .line 223
    :goto_9
    return-object v3
.end method

.method public static getTargetInfoEntry(ILandroid/util/jar/StrictJarFile;)Ljava/util/zip/ZipEntry;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "targetinfo"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "Unexpected value: "

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    const-string p0, "SEC-INF/targetinfo"

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    const-string p0, "META-INF/SEC-INF/targetinfo"

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static readFile(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x100000

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    :goto_0
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ltz v2, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :goto_1
    move-object v2, p0

    .line 33
    goto :goto_4

    .line 34
    :catch_0
    :goto_2
    move-object v2, p0

    .line 35
    goto :goto_7

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    .line 38
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :catch_1
    move-exception p0

    .line 43
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 47
    .line 48
    .line 49
    goto :goto_9

    .line 50
    :catch_2
    move-exception p0

    .line 51
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 52
    .line 53
    .line 54
    goto :goto_9

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    move-object p1, v2

    .line 57
    goto :goto_1

    .line 58
    :catch_3
    move-object p1, v2

    .line 59
    goto :goto_2

    .line 60
    :catchall_2
    move-exception v0

    .line 61
    move-object p1, v2

    .line 62
    :goto_4
    if-eqz v2, :cond_2

    .line 63
    .line 64
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 65
    .line 66
    .line 67
    goto :goto_5

    .line 68
    :catch_4
    move-exception p0

    .line 69
    :try_start_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_5
    if-eqz p1, :cond_3

    .line 73
    .line 74
    :try_start_9
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 75
    .line 76
    .line 77
    goto :goto_6

    .line 78
    :catch_5
    move-exception p0

    .line 79
    :try_start_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 80
    .line 81
    .line 82
    :catch_6
    :cond_3
    :goto_6
    throw v0

    .line 83
    :catch_7
    move-object p1, v2

    .line 84
    :goto_7
    if-eqz v2, :cond_4

    .line 85
    .line 86
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 87
    .line 88
    .line 89
    goto :goto_8

    .line 90
    :catch_8
    move-exception p0

    .line 91
    :try_start_c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_8
    if-eqz p1, :cond_5

    .line 95
    .line 96
    :try_start_d
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 97
    .line 98
    .line 99
    :catch_9
    :cond_5
    :goto_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method public static writeFile(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final isUpdatePolicy(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "AASA_RuleUpdateForSecurity_RUFS"

    .line 2
    .line 3
    const-string/jumbo v1, "token:"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    .line 8
    .line 9
    if-eqz v3, :cond_2

    .line 10
    .line 11
    iget-boolean v4, v3, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v3, v3, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-lez v4, :cond_2

    .line 27
    .line 28
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " device:"

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-le v1, v4, :cond_1

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    iput-object p1, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v3, p0, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromToken:Ljava/lang/String;

    .line 65
    .line 66
    const-string p0, " Now try to update"

    .line 67
    .line 68
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const-string p0, "Current policy is latest version."

    .line 73
    .line 74
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    const-string p0, "The version format is wrong !!"

    .line 79
    .line 80
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    return v2
.end method

.method public final updatePolicy(ILjava/lang/String;)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const-string v3, "SCPM"

    .line 8
    .line 9
    const-string v4, "RUFS"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-ne v2, v5, :cond_0

    .line 13
    .line 14
    move-object v6, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v6, v3

    .line 17
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    const/16 v8, 0x3e8

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    if-ne v7, v8, :cond_1

    .line 25
    .line 26
    move v7, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v7, v9

    .line 29
    :goto_1
    const-string v8, "AASA_RuleUpdateForSecurity_RUFS"

    .line 30
    .line 31
    if-nez v7, :cond_2

    .line 32
    .line 33
    const-string/jumbo v0, "updatePolicy: enforced fail"

    .line 34
    .line 35
    .line 36
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v9

    .line 40
    :cond_2
    const-string v7, "Token size "

    .line 41
    .line 42
    const-string v10, "Ticket size "

    .line 43
    .line 44
    const-string/jumbo v11, "digestFromtoken :"

    .line 45
    .line 46
    .line 47
    const-string/jumbo v12, "digestFromFile  :"

    .line 48
    .line 49
    .line 50
    if-ne v2, v5, :cond_3

    .line 51
    .line 52
    move-object v3, v4

    .line 53
    :cond_3
    iget-object v4, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->mContainer:Lcom/android/server/asks/RUFSContainer;

    .line 54
    .line 55
    const-string v15, "/data/system/.aasa"

    .line 56
    .line 57
    if-eqz v4, :cond_b

    .line 58
    .line 59
    new-instance v13, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v14, "Start to extract "

    .line 62
    .line 63
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, " policy : "

    .line 70
    .line 71
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :try_start_0
    new-instance v3, Landroid/util/jar/StrictJarFile;

    .line 85
    .line 86
    invoke-direct {v3, v0, v9, v5}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_1
    invoke-static {v2, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->getTargetInfoEntry(ILandroid/util/jar/StrictJarFile;)Ljava/util/zip/ZipEntry;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    const-string v13, "Target Info exists"

    .line 96
    .line 97
    invoke-static {v8, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    const-string v13, ".zip"

    .line 101
    .line 102
    const/4 v14, 0x2

    .line 103
    if-ne v2, v14, :cond_4

    .line 104
    .line 105
    :try_start_2
    invoke-static {v3, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->digest(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v3, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->readFile(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->descramble([B)[B

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    iput-object v7, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v7, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->writeFile(Ljava/lang/String;[B)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v0, v4, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    move v0, v5

    .line 147
    move-object/from16 v16, v6

    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :goto_2
    move-object v13, v3

    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :catch_0
    move-object/from16 v16, v6

    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :catchall_0
    move-exception v0

    .line 159
    goto :goto_2

    .line 160
    :cond_4
    if-ne v2, v5, :cond_6

    .line 161
    .line 162
    move-object/from16 v16, v6

    .line 163
    .line 164
    :try_start_3
    iget-wide v5, v4, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    .line 165
    .line 166
    move-object/from16 v18, v10

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 169
    .line 170
    .line 171
    move-result-wide v9

    .line 172
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Long;->compare(JJ)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-nez v5, :cond_5

    .line 177
    .line 178
    invoke-static {v3, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->digest(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v7, v4, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    iget-object v6, v4, Lcom/android/server/asks/RUFSContainer;->mDigestInToken:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_8

    .line 221
    .line 222
    invoke-static {v3, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->readFile(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[B

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->descramble([B)[B

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    iput-object v5, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v5, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->writeFile(Ljava/lang/String;[B)V

    .line 253
    .line 254
    .line 255
    iget-object v0, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 256
    .line 257
    iput-object v0, v4, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    .line 258
    .line 259
    const/4 v0, 0x1

    .line 260
    goto :goto_4

    .line 261
    :cond_5
    const-string v5, "Fail"

    .line 262
    .line 263
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    move-object/from16 v6, v18

    .line 269
    .line 270
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-wide v9, v4, Lcom/android/server/asks/RUFSContainer;->mSizeofZip:J

    .line 274
    .line 275
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 291
    .line 292
    .line 293
    move-result-wide v6

    .line 294
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_6
    move-object/from16 v16, v6

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_7
    move-object/from16 v16, v6

    .line 309
    .line 310
    const-string v0, " mTokenEntry is null."

    .line 311
    .line 312
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    .line 314
    .line 315
    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 316
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    const/4 v13, 0x0

    .line 322
    goto :goto_5

    .line 323
    :catch_1
    move-object/from16 v16, v6

    .line 324
    .line 325
    const/4 v3, 0x0

    .line 326
    goto :goto_6

    .line 327
    :goto_5
    if-eqz v13, :cond_9

    .line 328
    .line 329
    :try_start_5
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 330
    .line 331
    .line 332
    :catch_2
    :cond_9
    throw v0

    .line 333
    :catch_3
    :goto_6
    if-eqz v3, :cond_a

    .line 334
    .line 335
    :try_start_6
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 336
    .line 337
    .line 338
    :catch_4
    :cond_a
    :goto_7
    const/4 v0, 0x0

    .line 339
    goto :goto_8

    .line 340
    :cond_b
    move-object/from16 v16, v6

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :catch_5
    :goto_8
    if-eqz v0, :cond_24

    .line 344
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget-object v5, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    iget-object v0, v4, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    .line 365
    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    iget-object v3, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromToken:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    iput-object v3, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    .line 384
    .line 385
    new-instance v6, Ljava/io/File;

    .line 386
    .line 387
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    if-nez v7, :cond_c

    .line 395
    .line 396
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 397
    .line 398
    .line 399
    :cond_c
    const/16 v6, 0x1000

    .line 400
    .line 401
    new-array v6, v6, [B

    .line 402
    .line 403
    :try_start_7
    new-instance v7, Ljava/io/FileInputStream;

    .line 404
    .line 405
    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 406
    .line 407
    .line 408
    :try_start_8
    new-instance v9, Ljava/util/zip/ZipInputStream;

    .line 409
    .line 410
    invoke-direct {v9, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 411
    .line 412
    .line 413
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    :goto_9
    if-eqz v0, :cond_e

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    new-instance v10, Ljava/io/File;

    .line 424
    .line 425
    new-instance v11, Ljava/lang/StringBuilder;

    .line 426
    .line 427
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    new-instance v0, Ljava/io/File;

    .line 449
    .line 450
    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v11

    .line 454
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 458
    .line 459
    .line 460
    new-instance v11, Ljava/io/FileOutputStream;

    .line 461
    .line 462
    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 463
    .line 464
    .line 465
    :goto_a
    :try_start_a
    invoke-virtual {v9, v6}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 466
    .line 467
    .line 468
    move-result v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 469
    if-lez v0, :cond_d

    .line 470
    .line 471
    const/4 v10, 0x0

    .line 472
    :try_start_b
    invoke-virtual {v11, v6, v10, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 473
    .line 474
    .line 475
    goto :goto_a

    .line 476
    :catchall_2
    move-exception v0

    .line 477
    move-object v13, v11

    .line 478
    goto/16 :goto_21

    .line 479
    .line 480
    :catch_6
    move-exception v0

    .line 481
    :goto_b
    move-object v13, v11

    .line 482
    goto :goto_11

    .line 483
    :cond_d
    const/4 v10, 0x0

    .line 484
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 492
    .line 493
    .line 494
    goto :goto_9

    .line 495
    :catch_7
    move-exception v0

    .line 496
    const/4 v10, 0x0

    .line 497
    goto :goto_b

    .line 498
    :catchall_3
    move-exception v0

    .line 499
    :goto_c
    const/4 v13, 0x0

    .line 500
    goto/16 :goto_21

    .line 501
    .line 502
    :catch_8
    move-exception v0

    .line 503
    const/4 v10, 0x0

    .line 504
    :goto_d
    const/4 v13, 0x0

    .line 505
    goto :goto_11

    .line 506
    :cond_e
    const/4 v10, 0x0

    .line 507
    :try_start_c
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 511
    .line 512
    .line 513
    :catch_9
    :goto_e
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 514
    .line 515
    .line 516
    :catch_a
    :cond_f
    const/4 v3, 0x2

    .line 517
    goto :goto_12

    .line 518
    :catchall_4
    move-exception v0

    .line 519
    :goto_f
    const/4 v9, 0x0

    .line 520
    goto :goto_c

    .line 521
    :catch_b
    move-exception v0

    .line 522
    const/4 v10, 0x0

    .line 523
    :goto_10
    const/4 v9, 0x0

    .line 524
    goto :goto_d

    .line 525
    :catchall_5
    move-exception v0

    .line 526
    const/4 v7, 0x0

    .line 527
    goto :goto_f

    .line 528
    :catch_c
    move-exception v0

    .line 529
    const/4 v10, 0x0

    .line 530
    const/4 v7, 0x0

    .line 531
    goto :goto_10

    .line 532
    :goto_11
    :try_start_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 533
    .line 534
    .line 535
    if-eqz v13, :cond_10

    .line 536
    .line 537
    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 538
    .line 539
    .line 540
    :catch_d
    :cond_10
    if-eqz v9, :cond_11

    .line 541
    .line 542
    :try_start_10
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 546
    .line 547
    .line 548
    :catch_e
    :cond_11
    if-eqz v7, :cond_f

    .line 549
    .line 550
    goto :goto_e

    .line 551
    :goto_12
    if-eq v2, v3, :cond_15

    .line 552
    .line 553
    const/4 v3, 0x1

    .line 554
    if-ne v2, v3, :cond_25

    .line 555
    .line 556
    iget-object v0, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    .line 557
    .line 558
    :try_start_11
    iget-wide v2, v4, Lcom/android/server/asks/RUFSContainer;->mSizeofFiles:J
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_10

    .line 559
    .line 560
    const-wide/16 v6, 0x0

    .line 561
    .line 562
    :try_start_12
    new-instance v9, Ljava/io/File;

    .line 563
    .line 564
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    if-eqz v0, :cond_13

    .line 572
    .line 573
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    if-eqz v0, :cond_13

    .line 578
    .line 579
    move-wide v11, v6

    .line 580
    move v9, v10

    .line 581
    :goto_13
    array-length v13, v0

    .line 582
    if-ge v9, v13, :cond_12

    .line 583
    .line 584
    aget-object v13, v0, v9

    .line 585
    .line 586
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 587
    .line 588
    .line 589
    move-result-wide v17
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 590
    add-long v11, v11, v17

    .line 591
    .line 592
    add-int/lit8 v9, v9, 0x1

    .line 593
    .line 594
    goto :goto_13

    .line 595
    :catch_f
    move-exception v0

    .line 596
    goto :goto_14

    .line 597
    :cond_12
    move-wide v6, v11

    .line 598
    goto :goto_15

    .line 599
    :goto_14
    :try_start_13
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 600
    .line 601
    new-instance v11, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string v12, "Error:"

    .line 604
    .line 605
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    :cond_13
    :goto_15
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Long;->compare(JJ)I

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-nez v0, :cond_14

    .line 623
    .line 624
    const/4 v3, 0x1

    .line 625
    goto :goto_16

    .line 626
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    const-string/jumbo v9, "size of all files   token:"

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    const-string v2, " device:"

    .line 641
    .line 642
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_10

    .line 653
    .line 654
    .line 655
    :catch_10
    move v3, v10

    .line 656
    :goto_16
    if-eqz v3, :cond_25

    .line 657
    .line 658
    :cond_15
    iget-object v2, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyUnzipPath:Ljava/lang/String;

    .line 659
    .line 660
    iget-object v0, v4, Lcom/android/server/asks/RUFSContainer;->mADPModels:Ljava/lang/String;

    .line 661
    .line 662
    iget-object v3, v4, Lcom/android/server/asks/RUFSContainer;->mADPCarriers:Ljava/lang/String;

    .line 663
    .line 664
    const-string v6, "ADP.xml"

    .line 665
    .line 666
    invoke-static {v2, v6, v0, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    iget-object v0, v4, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWModels:Ljava/lang/String;

    .line 670
    .line 671
    iget-object v3, v4, Lcom/android/server/asks/RUFSContainer;->mASKSRNEWCarriers:Ljava/lang/String;

    .line 672
    .line 673
    const-string v4, "ASKSRNEW.xml"

    .line 674
    .line 675
    invoke-static {v2, v4, v0, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->checkTargetAndRemoveIfNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    new-instance v3, Ljava/io/File;

    .line 679
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 686
    .line 687
    const-string v6, "AASApolicy"

    .line 688
    .line 689
    invoke-static {v0, v4, v6}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    if-eqz v4, :cond_1b

    .line 701
    .line 702
    move v7, v10

    .line 703
    :goto_17
    array-length v0, v4

    .line 704
    if-ge v7, v0, :cond_1b

    .line 705
    .line 706
    new-instance v0, Ljava/io/File;

    .line 707
    .line 708
    invoke-static {v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    move-result-object v9

    .line 712
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    .line 713
    .line 714
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    aget-object v11, v4, v7

    .line 718
    .line 719
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v11

    .line 723
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v9

    .line 730
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 734
    .line 735
    .line 736
    move-result v9

    .line 737
    if-nez v9, :cond_18

    .line 738
    .line 739
    aget-object v9, v4, v7

    .line 740
    .line 741
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 742
    .line 743
    .line 744
    move-result v9

    .line 745
    if-eqz v9, :cond_17

    .line 746
    .line 747
    aget-object v0, v4, v7

    .line 748
    .line 749
    invoke-static {v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDirectoryWithContents(Ljava/io/File;)Z

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    if-eqz v0, :cond_16

    .line 754
    .line 755
    const-string v0, "Folder exists, and deletion success"

    .line 756
    .line 757
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .line 759
    .line 760
    goto/16 :goto_1a

    .line 761
    .line 762
    :cond_16
    const-string v0, "Folder exists, and deletion failed"

    .line 763
    .line 764
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .line 766
    .line 767
    goto :goto_1a

    .line 768
    :cond_17
    :try_start_14
    aget-object v9, v4, v7

    .line 769
    .line 770
    invoke-static {v9, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    .line 771
    .line 772
    .line 773
    goto :goto_1a

    .line 774
    :catch_11
    :goto_18
    const/4 v0, 0x1

    .line 775
    goto :goto_1b

    .line 776
    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 777
    .line 778
    .line 779
    move-result v9

    .line 780
    if-eqz v9, :cond_1a

    .line 781
    .line 782
    aget-object v9, v4, v7

    .line 783
    .line 784
    const-string/jumbo v11, "complete copy previous policy to new policy. fileName : "

    .line 785
    .line 786
    .line 787
    :try_start_15
    invoke-static {v9}, Lcom/android/server/asks/RuleUpdateForSecurity;->extractVersionFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v12

    .line 791
    invoke-static {v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->extractVersionFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v13
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    .line 795
    if-eqz v12, :cond_1a

    .line 796
    .line 797
    if-nez v13, :cond_19

    .line 798
    .line 799
    goto :goto_1a

    .line 800
    :cond_19
    :try_start_16
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 801
    .line 802
    .line 803
    move-result-wide v17

    .line 804
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 805
    .line 806
    .line 807
    move-result-wide v12
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_13
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12

    .line 808
    cmp-long v12, v17, v12

    .line 809
    .line 810
    if-lez v12, :cond_1a

    .line 811
    .line 812
    :try_start_17
    invoke-static {v9, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 813
    .line 814
    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    .line 816
    .line 817
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v9

    .line 824
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .line 833
    .line 834
    goto :goto_1a

    .line 835
    :catch_12
    move-exception v0

    .line 836
    goto :goto_19

    .line 837
    :catch_13
    move-exception v0

    .line 838
    new-instance v9, Ljava/lang/StringBuilder;

    .line 839
    .line 840
    const-string/jumbo v11, "failed compare version : "

    .line 841
    .line 842
    .line 843
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12

    .line 858
    .line 859
    .line 860
    goto :goto_1a

    .line 861
    :goto_19
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    goto :goto_18

    .line 869
    :cond_1a
    :goto_1a
    add-int/lit8 v7, v7, 0x1

    .line 870
    .line 871
    goto/16 :goto_17

    .line 872
    .line 873
    :cond_1b
    move v0, v10

    .line 874
    :goto_1b
    const/4 v4, 0x3

    .line 875
    const/4 v7, 0x1

    .line 876
    if-eq v0, v7, :cond_1d

    .line 877
    .line 878
    new-instance v9, Ljava/io/File;

    .line 879
    .line 880
    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v3, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    if-eqz v3, :cond_1e

    .line 888
    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    .line 890
    .line 891
    const-string v3, " AASApolicy folder is changed into old version: "

    .line 892
    .line 893
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    iget-object v3, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    .line 897
    .line 898
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .line 907
    .line 908
    new-instance v0, Ljava/io/File;

    .line 909
    .line 910
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 914
    .line 915
    new-instance v9, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    const-string v11, ""

    .line 918
    .line 919
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v9

    .line 929
    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    new-instance v9, Ljava/io/File;

    .line 933
    .line 934
    new-instance v11, Ljava/lang/StringBuilder;

    .line 935
    .line 936
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    .line 940
    .line 941
    invoke-static {v11, v12, v6}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v11

    .line 945
    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v0, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 949
    .line 950
    .line 951
    move-result v0

    .line 952
    if-eqz v0, :cond_1c

    .line 953
    .line 954
    const-string v0, " new policy folder is changed into AASApolicy"

    .line 955
    .line 956
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .line 958
    .line 959
    move v14, v4

    .line 960
    goto :goto_1c

    .line 961
    :cond_1c
    const-string v0, "Fail changeD"

    .line 962
    .line 963
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    const/4 v14, 0x2

    .line 967
    :goto_1c
    move v0, v14

    .line 968
    :cond_1d
    :goto_1d
    const/4 v3, 0x2

    .line 969
    goto :goto_1e

    .line 970
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 971
    .line 972
    const-string v9, " Fail changed into "

    .line 973
    .line 974
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    iget-object v9, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->mVersionFromDevice:Ljava/lang/String;

    .line 978
    .line 979
    invoke-static {v3, v9, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    goto :goto_1d

    .line 983
    :goto_1e
    if-eq v0, v3, :cond_20

    .line 984
    .line 985
    if-eq v0, v4, :cond_1f

    .line 986
    .line 987
    goto :goto_1f

    .line 988
    :cond_1f
    move v3, v7

    .line 989
    goto :goto_20

    .line 990
    :cond_20
    new-instance v0, Ljava/io/File;

    .line 991
    .line 992
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 993
    .line 994
    .line 995
    new-instance v3, Ljava/io/File;

    .line 996
    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    .line 998
    .line 999
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    .line 1003
    .line 1004
    invoke-static {v4, v9, v6}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1012
    .line 1013
    .line 1014
    :goto_1f
    move v3, v10

    .line 1015
    :goto_20
    new-instance v0, Ljava/io/File;

    .line 1016
    .line 1017
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    invoke-static {v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDirectoryWithContents(Ljava/io/File;)Z

    .line 1021
    .line 1022
    .line 1023
    new-instance v0, Ljava/io/File;

    .line 1024
    .line 1025
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-static {v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDirectoryWithContents(Ljava/io/File;)Z

    .line 1029
    .line 1030
    .line 1031
    new-instance v0, Ljava/io/File;

    .line 1032
    .line 1033
    iget-object v1, v1, Lcom/android/server/asks/RuleUpdateForSecurity;->device_policyCopyPath:Ljava/lang/String;

    .line 1034
    .line 1035
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v0}, Lcom/android/server/asks/RuleUpdateForSecurity;->deleteDirectoryWithContents(Ljava/io/File;)Z

    .line 1039
    .line 1040
    .line 1041
    if-eqz v3, :cond_25

    .line 1042
    .line 1043
    const-string/jumbo v0, "policy applied!"

    .line 1044
    .line 1045
    .line 1046
    move-object/from16 v3, v16

    .line 1047
    .line 1048
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    move v5, v7

    .line 1056
    goto :goto_22

    .line 1057
    :catchall_6
    move-exception v0

    .line 1058
    :goto_21
    if-eqz v13, :cond_21

    .line 1059
    .line 1060
    :try_start_18
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_14

    .line 1061
    .line 1062
    .line 1063
    :catch_14
    :cond_21
    if-eqz v9, :cond_22

    .line 1064
    .line 1065
    :try_start_19
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_15

    .line 1069
    .line 1070
    .line 1071
    :catch_15
    :cond_22
    if-eqz v7, :cond_23

    .line 1072
    .line 1073
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_16

    .line 1074
    .line 1075
    .line 1076
    :catch_16
    :cond_23
    throw v0

    .line 1077
    :cond_24
    const/4 v10, 0x0

    .line 1078
    :cond_25
    move v5, v10

    .line 1079
    :goto_22
    return v5
.end method
