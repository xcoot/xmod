.class public final Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOutput:Landroid/app/backup/FullBackupDataOutput;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/app/backup/FullBackupDataOutput;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final backupApk(Landroid/content/pm/PackageInfo;)V
    .locals 12

    .line 1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 20
    .line 21
    const-string v2, "a"

    .line 22
    .line 23
    move-object v4, v0

    .line 24
    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    array-length v2, v1

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_0
    if-ge v3, v2, :cond_0

    .line 47
    .line 48
    aget-object v10, v1, v3

    .line 49
    .line 50
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    iget-object v11, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 54
    .line 55
    const-string v7, "a"

    .line 56
    .line 57
    move-object v9, v0

    .line 58
    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 59
    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public final backupManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const/16 v2, 0x1000

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroid/util/StringBuilderPrinter;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v0, ""

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "0"

    .line 61
    .line 62
    if-eqz p5, :cond_1

    .line 63
    .line 64
    const-string v4, "1"

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object v4, v0

    .line 68
    :goto_1
    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v4, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ne v4, v3, :cond_3

    .line 78
    .line 79
    if-eqz p5, :cond_2

    .line 80
    .line 81
    iget-object p5, p1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 82
    .line 83
    if-eqz p5, :cond_2

    .line 84
    .line 85
    array-length p5, p5

    .line 86
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p5

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move-object p5, v0

    .line 92
    :goto_2
    invoke-virtual {v2, p5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object p5, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 96
    .line 97
    if-nez p5, :cond_4

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_4
    invoke-virtual {p5}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 104
    .line 105
    .line 106
    move-result-object p5

    .line 107
    array-length v0, p5

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v2, v0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    array-length v0, p5

    .line 116
    const/4 v3, 0x0

    .line 117
    :goto_3
    if-ge v3, v0, :cond_5

    .line 118
    .line 119
    aget-object v4, p5, v3

    .line 120
    .line 121
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v2, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p5

    .line 135
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    .line 136
    .line 137
    .line 138
    move-result-object p5

    .line 139
    new-instance v0, Ljava/io/FileOutputStream;

    .line 140
    .line 141
    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p5}, Ljava/io/FileOutputStream;->write([B)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 148
    .line 149
    .line 150
    const-wide/16 v0, 0x0

    .line 151
    .line 152
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 153
    .line 154
    .line 155
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    move-object v3, p4

    .line 169
    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final backupObb(ILandroid/content/pm/PackageInfo;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    aget-object p1, p1, v0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    array-length v8, v1

    .line 28
    :goto_0
    if-ge v0, v8, :cond_0

    .line 29
    .line 30
    aget-object v2, v1, v0

    .line 31
    .line 32
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 39
    .line 40
    const-string/jumbo v4, "obb"

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v2, v3

    .line 45
    move-object v3, v4

    .line 46
    move-object v4, v5

    .line 47
    move-object v5, p1

    .line 48
    invoke-static/range {v2 .. v7}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 49
    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public final backupWidget(Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/io/File;[B)V
    .locals 9

    .line 1
    array-length v0, p4

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    move v0, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v2, "Can\'t backup widget with no data."

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    new-instance p1, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/io/DataOutputStream;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const/16 v4, 0x200

    .line 33
    .line 34
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Landroid/util/StringBuilderPrinter;

    .line 38
    .line 39
    invoke-direct {v4, v2}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v4, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 61
    .line 62
    .line 63
    const v1, 0x1ffed01

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    array-length v1, p4

    .line 70
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p4}, Ljava/io/DataOutputStream;->write([B)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 80
    .line 81
    .line 82
    const-wide/16 v0, 0x0

    .line 83
    .line 84
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    iget-object v8, p0, Lcom/android/server/backup/fullbackup/AppMetadataBackupWriter;->mOutput:Landroid/app/backup/FullBackupDataOutput;

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-static/range {v3 .. v8}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 100
    .line 101
    .line 102
    return-void
.end method
