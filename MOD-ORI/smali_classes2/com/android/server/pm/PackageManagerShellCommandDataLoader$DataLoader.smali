.class public final Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/service/dataloader/DataLoaderService$DataLoader;


# instance fields
.field public mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

.field public mParams:Landroid/content/pm/DataLoaderParams;


# virtual methods
.method public final onCreate(Landroid/content/pm/DataLoaderParams;Landroid/service/dataloader/DataLoaderService$FileSystemConnector;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0
.end method

.method public final onPrepareImage(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 13

    .line 1
    const-string p2, "PackageManagerShellCommandDataLoader"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->lookupShellCommand(Ljava/lang/String;)Landroid/os/ShellCommand;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_6

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/content/pm/InstallationFile;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string p1, "Invalid metadata for file: "

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    return v1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_1
    iget-byte v5, v4, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    .line 70
    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    if-eq v5, v3, :cond_2

    .line 74
    .line 75
    const/4 v2, 0x4

    .line 76
    if-eq v5, v2, :cond_0

    .line 77
    .line 78
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string p1, "Unsupported metadata mode: "

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    return v1

    .line 99
    :cond_2
    if-nez v0, :cond_3

    .line 100
    .line 101
    const-string p0, "Missing shell command for Metadata.LOCAL_FILE."

    .line 102
    .line 103
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .line 105
    .line 106
    return v1

    .line 107
    :cond_3
    const/4 v3, 0x0

    .line 108
    :try_start_2
    new-instance v5, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    .line 111
    .line 112
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 115
    .line 116
    .line 117
    const-string/jumbo v4, "r"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5, v4}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 131
    .line 132
    .line 133
    move-result-wide v10

    .line 134
    const-wide/16 v8, 0x0

    .line 135
    .line 136
    move-object v12, v3

    .line 137
    invoke-virtual/range {v6 .. v12}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .line 139
    .line 140
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_4
    if-nez v0, :cond_5

    .line 150
    .line 151
    const-string p0, "Missing shell command for Metadata.STDIN."

    .line 152
    .line 153
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return v1

    .line 157
    :cond_5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    .line 168
    .line 169
    .line 170
    move-result-wide v6

    .line 171
    const-wide/16 v9, 0x0

    .line 172
    .line 173
    move-object v2, v3

    .line 174
    move-object v3, v4

    .line 175
    move-wide v4, v9

    .line 176
    invoke-virtual/range {v2 .. v8}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_6
    return v3

    .line 182
    :goto_1
    const-string p1, "Exception while streaming files"

    .line 183
    .line 184
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .line 186
    .line 187
    return v1
.end method
