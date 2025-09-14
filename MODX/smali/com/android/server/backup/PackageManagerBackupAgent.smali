.class public final Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final ANCESTRAL_RECORD_KEY:Ljava/lang/String; = "@ancestral_record@"

.field static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field static final STATE_FILE_VERSION:I = 0x2


# instance fields
.field public final mAllPackages:Ljava/util/List;

.field public final mExisting:Ljava/util/HashSet;

.field public mHasMetadata:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mRestoredSignatures:Ljava/util/HashMap;

.field public final mStateVersions:Ljava/util/HashMap;

.field public mStoredAncestralRecordVersion:I

.field public mStoredIncrementalVersion:Ljava/lang/String;

.field public mStoredSdkVersion:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 9
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 14
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 19
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    .line 21
    invoke-static {p1, p2, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    return-void
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;
    .locals 1

    .line 1
    const/high16 v0, 0x8000000

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result p1

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 13
    :goto_0
    if-ltz p1, :cond_1

    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 21
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    invoke-virtual {p2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object p0
.end method

.method public static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    const-string v0, "PMBA"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 7
    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    const/16 v3, 0x14

    .line 10
    if-gt v2, v3, :cond_4

    .line 12
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    if-ge v4, v2, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 24
    move-result v6

    .line 25
    new-array v7, v6, [B

    .line 27
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 30
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const/16 v7, 0x20

    .line 35
    if-eq v6, v7, :cond_0

    .line 37
    const/4 v5, 0x1

    .line 38
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eqz v5, :cond_3

    .line 43
    new-instance p0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v2

    .line 49
    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v2

    .line 56
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 68
    :try_start_2
    const-string v4, "SHA-256"

    .line 70
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 80
    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 81
    goto :goto_2

    .line 82
    :catch_0
    :try_start_3
    const-string v3, "BackupUtils"

    .line 84
    const-string v4, "No SHA-256 algorithm found!"

    .line 86
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-object v3, v1

    .line 90
    :goto_2
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move-object v3, p0

    .line 95
    :cond_3
    return-object v3

    .line 96
    :cond_4
    const-string p0, "Suspiciously large sig count in restore data; aborting"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 103
    const-string v2, "Bad restore state"

    .line 105
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p0

    .line 109
    :catch_1
    const-string p0, "Read empty signature block"

    .line 111
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    return-object v1

    .line 115
    :catch_2
    const-string p0, "Unable to read signatures"

    .line 117
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v1
.end method

.method public static writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 12
    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    new-instance v0, Ljava/io/DataOutputStream;

    .line 17
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    :try_start_0
    const-string p1, "=state="

    .line 22
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29
    const-string p1, "@ancestral_record@"

    .line 31
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 38
    const-string p1, "@meta@"

    .line 40
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 43
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p0

    .line 57
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 69
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 74
    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 76
    if-eqz v1, :cond_0

    .line 78
    const/high16 v1, -0x80000000

    .line 80
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 86
    move-result-wide v1

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 93
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_1

    .line 101
    :catch_0
    const-string p0, "PMBA"

    .line 103
    const-string p1, "Unable to write package manager state file!"

    .line 105
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_1
    return-void
.end method


# virtual methods
.method public final onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p2

    .line 5
    const-string v3, "@meta@"

    .line 7
    const-string v4, "@ancestral_record@"

    .line 9
    const-string v5, "PMBA"

    .line 11
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 13
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v7, Ljava/io/DataOutputStream;

    .line 18
    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21
    const-string v0, "Unsupported state file version "

    .line 23
    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 25
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 28
    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 33
    const/4 v8, 0x0

    .line 34
    iput v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 36
    const/4 v9, 0x0

    .line 37
    iput-object v9, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 39
    const/4 v10, -0x1

    .line 40
    iput v10, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    .line 42
    new-instance v11, Ljava/io/FileInputStream;

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 47
    move-result-object v12

    .line 48
    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 51
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 53
    invoke-direct {v12, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    new-instance v11, Ljava/io/DataInputStream;

    .line 58
    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    const/high16 v12, -0x80000000

    .line 63
    const/4 v13, 0x1

    .line 64
    :try_start_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 67
    move-result-object v14

    .line 68
    const-string v15, "=state="

    .line 70
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v15

    .line 74
    if-eqz v15, :cond_1

    .line 76
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 79
    move-result v14

    .line 80
    const/4 v15, 0x2

    .line 81
    if-le v14, v15, :cond_0

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, ", redoing from start"

    .line 93
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    goto/16 :goto_5

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto/16 :goto_4

    .line 108
    :cond_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 111
    move-result-object v14

    .line 112
    move v0, v8

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "Older version of saved state - rewriting"

    .line 116
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    move v0, v13

    .line 120
    :goto_0
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v15

    .line 124
    if-eqz v15, :cond_3

    .line 126
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 129
    move-result v14

    .line 130
    iput v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    .line 132
    if-nez v0, :cond_2

    .line 134
    iget-object v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 136
    invoke-virtual {v14, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 142
    move-result-object v14

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const-string v15, "Older version of saved state - does not contain ancestral record version"

    .line 146
    invoke-static {v5, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_1
    const-string v15, "@home@"

    .line 151
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v15

    .line 155
    if-eqz v15, :cond_4

    .line 157
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 160
    move-result-object v14

    .line 161
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 164
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    .line 167
    invoke-static {v11}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 173
    move-result-object v14

    .line 174
    :cond_4
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v14

    .line 178
    if-eqz v14, :cond_8

    .line 180
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 183
    move-result v14

    .line 184
    iput v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 186
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 189
    move-result-object v14

    .line 190
    iput-object v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 192
    if-nez v0, :cond_5

    .line 194
    iget-object v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 196
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_5
    :goto_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 202
    move-result-object v14

    .line 203
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 206
    move-result v15

    .line 207
    if-ne v15, v12, :cond_6

    .line 209
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    .line 212
    move-result-wide v15

    .line 213
    move-object/from16 p1, v11

    .line 215
    move-wide v10, v15

    .line 216
    goto :goto_3

    .line 217
    :cond_6
    move-object/from16 p1, v11

    .line 219
    int-to-long v10, v15

    .line 220
    :goto_3
    if-nez v0, :cond_7

    .line 222
    iget-object v15, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 224
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_7
    iget-object v15, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 229
    new-instance v8, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 231
    invoke-direct {v8, v10, v11, v9}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(JLjava/util/ArrayList;)V

    .line 234
    invoke-virtual {v15, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-object/from16 v11, p1

    .line 239
    const/4 v8, 0x0

    .line 240
    const/4 v10, -0x1

    .line 241
    goto :goto_2

    .line 242
    :cond_8
    const-string v0, "No global metadata in state file!"

    .line 244
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_5

    .line 248
    :goto_4
    const-string v8, "Unable to read Package Manager state file: "

    .line 250
    invoke-static {v8, v0, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 253
    :catch_1
    :goto_5
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 255
    if-eqz v0, :cond_9

    .line 257
    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_a

    .line 265
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 267
    const-string v8, "Previous metadata "

    .line 269
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 274
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v8, " mismatch vs "

    .line 279
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 284
    const-string v9, " - rewriting"

    .line 286
    invoke-static {v0, v8, v9, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 291
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 294
    :cond_a
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 296
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_b

    .line 302
    const-string v0, "No ancestral record version in the old state. Storing ancestral record version key"

    .line 304
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 310
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 313
    move-result-object v0

    .line 314
    array-length v8, v0

    .line 315
    invoke-virtual {v2, v4, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 318
    array-length v4, v0

    .line 319
    invoke-virtual {v2, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 322
    :goto_6
    move v8, v13

    .line 323
    goto :goto_7

    .line 324
    :cond_b
    iget v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    .line 326
    if-eq v0, v13, :cond_c

    .line 328
    const-string v0, "Ancestral record version has changed from old state. Storingancestral record version key"

    .line 330
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 336
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 339
    move-result-object v0

    .line 340
    array-length v8, v0

    .line 341
    invoke-virtual {v2, v4, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 344
    array-length v8, v0

    .line 345
    invoke-virtual {v2, v0, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 348
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 350
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 353
    goto :goto_6

    .line 354
    :cond_c
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 356
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 359
    const/4 v8, 0x0

    .line 360
    :goto_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 363
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 365
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_d

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 373
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 376
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 378
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 384
    move-result-object v0

    .line 385
    array-length v4, v0

    .line 386
    invoke-virtual {v2, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 389
    array-length v4, v0

    .line 390
    invoke-virtual {v2, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 393
    goto :goto_8

    .line 394
    :cond_d
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 396
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 399
    :goto_8
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 404
    move-result-object v0

    .line 405
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    move-result v4

    .line 409
    if-eqz v4, :cond_13

    .line 411
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 414
    move-result-object v4

    .line 415
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 417
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 419
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 423
    if-eqz v9, :cond_e

    .line 425
    goto :goto_9

    .line 426
    :cond_e
    :try_start_2
    iget-object v9, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 428
    iget v10, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    .line 430
    const/high16 v11, 0x8000000

    .line 432
    invoke-virtual {v9, v4, v11, v10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 435
    move-result-object v9
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 436
    :try_start_3
    iget-object v10, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 438
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 441
    move-result v10

    .line 442
    if-eqz v10, :cond_f

    .line 444
    iget-object v10, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 446
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 449
    if-nez v8, :cond_f

    .line 451
    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 454
    move-result-wide v10

    .line 455
    iget-object v13, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 457
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    move-result-object v13

    .line 461
    check-cast v13, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 463
    iget-wide v13, v13, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 465
    cmp-long v10, v10, v13

    .line 467
    if-nez v10, :cond_f

    .line 469
    goto :goto_9

    .line 470
    :cond_f
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 472
    if-nez v10, :cond_10

    .line 474
    new-instance v9, Ljava/lang/StringBuilder;

    .line 476
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    const-string v10, "Not backing up package "

    .line 481
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v4, " since it appears to have no signatures."

    .line 489
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    move-result-object v4

    .line 496
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    goto :goto_9

    .line 500
    :cond_10
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 503
    iget v11, v9, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 505
    if-eqz v11, :cond_11

    .line 507
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 510
    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 513
    move-result-wide v13

    .line 514
    invoke-virtual {v7, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 517
    goto :goto_a

    .line 518
    :cond_11
    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 520
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 523
    :goto_a
    invoke-virtual {v10}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 526
    move-result-object v9

    .line 527
    invoke-static {v9}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    .line 530
    move-result-object v9

    .line 531
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 534
    move-result v10

    .line 535
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 538
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 541
    move-result-object v9

    .line 542
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    move-result v10

    .line 546
    if-eqz v10, :cond_12

    .line 548
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    move-result-object v10

    .line 552
    check-cast v10, [B

    .line 554
    array-length v11, v10

    .line 555
    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 558
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 561
    goto :goto_b

    .line 562
    :cond_12
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 565
    move-result-object v9

    .line 566
    array-length v10, v9

    .line 567
    invoke-virtual {v2, v4, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 570
    array-length v4, v9

    .line 571
    invoke-virtual {v2, v9, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 574
    goto/16 :goto_9

    .line 576
    :catch_2
    iget-object v9, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 578
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 581
    goto/16 :goto_9

    .line 583
    :cond_13
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 585
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 588
    move-result v0

    .line 589
    if-nez v0, :cond_15

    .line 591
    if-eqz v8, :cond_15

    .line 593
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 595
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 598
    move-result-object v0

    .line 599
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    move-result v3

    .line 603
    if-eqz v3, :cond_14

    .line 605
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 608
    move-result-object v3

    .line 609
    check-cast v3, Ljava/lang/String;

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    .line 613
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    const-string v6, "Ancestral state updated - Deleting uninstalled package: "

    .line 618
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string v6, " from existing backup"

    .line 626
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    move-result-object v4

    .line 633
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v4, -0x1

    .line 637
    invoke-virtual {v2, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 640
    goto :goto_c

    .line 641
    :cond_14
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 643
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 646
    :cond_15
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 648
    move-object/from16 v1, p3

    .line 650
    invoke-static {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V

    .line 653
    return-void

    .line 654
    :catch_3
    const-string v0, "Unable to write package backup data file!"

    .line 656
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method public final onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 4
    move-result p2

    .line 5
    const/4 p3, -0x1

    .line 6
    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 15
    move-result v0

    .line 16
    const-string v1, "@ancestral_record@"

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 24
    new-array p2, v0, [B

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, p2, v1, v0}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 30
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 32
    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    new-instance p2, Ljava/io/DataInputStream;

    .line 37
    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    .line 43
    move-result p2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p2, p3

    .line 46
    :goto_0
    const-string v0, "PMBA"

    .line 48
    if-eq p2, p3, :cond_2

    .line 50
    const/4 p3, 0x1

    .line 51
    if-eq p2, p3, :cond_1

    .line 53
    const-string p0, "Unrecognized ANCESTRAL_RECORD_VERSION: "

    .line 55
    invoke-static {p2, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 p0, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    new-instance p2, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    .line 62
    const/4 p3, 0x1

    .line 63
    invoke-direct {p2, p0, p3}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;I)V

    .line 66
    :goto_1
    move-object p0, p2

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    new-instance p2, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    .line 70
    const/4 p3, 0x0

    .line 71
    invoke-direct {p2, p0, p3}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;I)V

    .line 74
    goto :goto_1

    .line 75
    :goto_2
    if-nez p0, :cond_3

    .line 77
    const-string p0, "Ancestral restore set version is unknown to this Android version; not restoring"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 83
    :cond_3
    iget p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->$r8$classId:I

    .line 85
    packed-switch p2, :pswitch_data_0

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    .line 90
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance p3, Ljava/util/HashMap;

    .line 95
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 98
    :goto_3
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 101
    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 104
    if-eqz v0, :cond_9

    .line 106
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 113
    move-result v2

    .line 114
    new-array v3, v2, [B

    .line 116
    const/4 v4, 0x0

    .line 117
    invoke-virtual {p1, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 120
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 122
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 125
    new-instance v3, Ljava/io/DataInputStream;

    .line 127
    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    const-string v2, "@meta@"

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_4

    .line 138
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 141
    move-result v0

    .line 142
    iput v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 144
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    iput-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 150
    const/4 v0, 0x1

    .line 151
    iput-boolean v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 153
    goto :goto_3

    .line 154
    :cond_4
    const-string v2, "@home@"

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_5

    .line 162
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    .line 175
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 178
    invoke-static {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    .line 181
    goto :goto_3

    .line 182
    :cond_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 185
    move-result v1

    .line 186
    const/high16 v2, -0x80000000

    .line 188
    if-ne v1, v2, :cond_6

    .line 190
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    .line 193
    move-result-wide v1

    .line 194
    goto :goto_4

    .line 195
    :cond_6
    int-to-long v1, v1

    .line 196
    :goto_4
    invoke-static {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    .line 199
    move-result-object v3

    .line 200
    if-eqz v3, :cond_8

    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_7

    .line 208
    goto :goto_5

    .line 209
    :cond_7
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    .line 211
    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 214
    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 216
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v4, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 221
    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(JLjava/util/ArrayList;)V

    .line 224
    invoke-virtual {p3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    goto/16 :goto_3

    .line 229
    :cond_8
    :goto_5
    const-string v1, "Not restoring package "

    .line 231
    const-string v2, " since it appears to have no signatures."

    .line 233
    const-string v3, "PMBA"

    .line 235
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    goto/16 :goto_3

    .line 240
    :cond_9
    iput-object p3, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 242
    goto/16 :goto_a

    .line 244
    :pswitch_0
    new-instance p2, Ljava/util/ArrayList;

    .line 246
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance p3, Ljava/util/HashMap;

    .line 251
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 254
    :cond_a
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 261
    move-result v1

    .line 262
    new-array v2, v1, [B

    .line 264
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p1, v2, v3, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 268
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 270
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 273
    new-instance v2, Ljava/io/DataInputStream;

    .line 275
    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 278
    const-string v1, "@meta@"

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    move-result v1

    .line 284
    iget-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 286
    if-eqz v1, :cond_b

    .line 288
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 291
    move-result v0

    .line 292
    iput v0, v3, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 294
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 297
    move-result-object v0

    .line 298
    iput-object v0, v3, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 300
    const/4 v0, 0x1

    .line 301
    iput-boolean v0, v3, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 303
    goto :goto_7

    .line 304
    :cond_b
    const-string v1, "@home@"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_c

    .line 312
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 319
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    .line 325
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 328
    invoke-static {v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    .line 331
    goto :goto_7

    .line 332
    :cond_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 335
    move-result v1

    .line 336
    const/high16 v4, -0x80000000

    .line 338
    if-ne v1, v4, :cond_d

    .line 340
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    .line 343
    move-result-wide v4

    .line 344
    goto :goto_6

    .line 345
    :cond_d
    int-to-long v4, v1

    .line 346
    :goto_6
    invoke-static {v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    .line 349
    move-result-object v1

    .line 350
    if-eqz v1, :cond_f

    .line 352
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 355
    move-result v2

    .line 356
    if-nez v2, :cond_e

    .line 358
    goto :goto_8

    .line 359
    :cond_e
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    .line 361
    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 364
    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 366
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 371
    invoke-direct {v2, v4, v5, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(JLjava/util/ArrayList;)V

    .line 374
    invoke-virtual {p3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :goto_7
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_a

    .line 383
    goto :goto_9

    .line 384
    :cond_f
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 386
    const-string v2, "Not restoring package "

    .line 388
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const-string v0, " since it appears to have no signatures."

    .line 396
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    move-result-object v0

    .line 403
    const-string v1, "PMBA"

    .line 405
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_a

    .line 414
    :goto_9
    iput-object p3, v3, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 416
    :goto_a
    return-void

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
