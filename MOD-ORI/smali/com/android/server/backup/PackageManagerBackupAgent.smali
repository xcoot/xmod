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

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 33
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

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    const/16 v3, 0x14

    .line 9
    .line 10
    if-gt v2, v3, :cond_4

    .line 11
    .line 12
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    if-ge v4, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    new-array v7, v6, [B

    .line 26
    .line 27
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const/16 v7, 0x20

    .line 34
    .line 35
    if-eq v6, v7, :cond_0

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eqz v5, :cond_3

    .line 42
    .line 43
    new-instance p0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 67
    .line 68
    :try_start_2
    const-string v4, "SHA-256"

    .line 69
    .line 70
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 78
    .line 79
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

    .line 83
    .line 84
    const-string v4, "No SHA-256 algorithm found!"

    .line 85
    .line 86
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-object v3, v1

    .line 90
    :goto_2
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
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

    .line 97
    .line 98
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string v2, "Bad restore state"

    .line 104
    .line 105
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :catch_1
    const-string p0, "Read empty signature block"

    .line 110
    .line 111
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :catch_2
    const-string p0, "Unable to read signatures"

    .line 116
    .line 117
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    return-object v1
.end method

.method public static writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/io/DataOutputStream;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    const-string p1, "=state="

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    const-string p1, "@ancestral_record@"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    const-string p1, "@meta@"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 68
    .line 69
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 75
    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    const/high16 v1, -0x80000000

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    const-string p0, "PMBA"

    .line 102
    .line 103
    const-string p1, "Unable to write package manager state file!"

    .line 104
    .line 105
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
.end method


# virtual methods
.method public final onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v3, "@meta@"

    .line 6
    .line 7
    const-string v4, "@ancestral_record@"

    .line 8
    .line 9
    const-string v5, "PMBA"

    .line 10
    .line 11
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 12
    .line 13
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v7, Ljava/io/DataOutputStream;

    .line 17
    .line 18
    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "Unsupported state file version "

    .line 22
    .line 23
    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    iput v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    iput-object v9, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v10, -0x1

    .line 40
    iput v10, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    .line 41
    .line 42
    new-instance v11, Ljava/io/FileInputStream;

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 49
    .line 50
    .line 51
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 52
    .line 53
    invoke-direct {v12, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    new-instance v11, Ljava/io/DataInputStream;

    .line 57
    .line 58
    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    .line 60
    .line 61
    const/high16 v12, -0x80000000

    .line 62
    .line 63
    const/4 v13, 0x1

    .line 64
    :try_start_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    const-string v15, "=state="

    .line 69
    .line 70
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    if-eqz v15, :cond_1

    .line 75
    .line 76
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    const/4 v15, 0x2

    .line 81
    if-le v14, v15, :cond_0

    .line 82
    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, ", redoing from start"

    .line 92
    .line 93
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    move v0, v8

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "Older version of saved state - rewriting"

    .line 115
    .line 116
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move v0, v13

    .line 120
    :goto_0
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    if-eqz v15, :cond_3

    .line 125
    .line 126
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    iput v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    .line 131
    .line 132
    if-nez v0, :cond_2

    .line 133
    .line 134
    iget-object v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-virtual {v14, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v14

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const-string v15, "Older version of saved state - does not contain ancestral record version"

    .line 145
    .line 146
    invoke-static {v5, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :goto_1
    const-string v15, "@home@"

    .line 150
    .line 151
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    if-eqz v15, :cond_4

    .line 156
    .line 157
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    .line 165
    .line 166
    .line 167
    invoke-static {v11}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    :cond_4
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    if-eqz v14, :cond_8

    .line 179
    .line 180
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    iput v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 185
    .line 186
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    iput-object v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 191
    .line 192
    if-nez v0, :cond_5

    .line 193
    .line 194
    iget-object v14, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 195
    .line 196
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_5
    :goto_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-ne v15, v12, :cond_6

    .line 208
    .line 209
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    .line 210
    .line 211
    .line 212
    move-result-wide v15

    .line 213
    move-object/from16 p1, v11

    .line 214
    .line 215
    move-wide v10, v15

    .line 216
    goto :goto_3

    .line 217
    :cond_6
    move-object/from16 p1, v11

    .line 218
    .line 219
    int-to-long v10, v15

    .line 220
    :goto_3
    if-nez v0, :cond_7

    .line 221
    .line 222
    iget-object v15, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 223
    .line 224
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    :cond_7
    iget-object v15, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 228
    .line 229
    new-instance v8, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 230
    .line 231
    invoke-direct {v8, v10, v11, v9}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(JLjava/util/ArrayList;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v15, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-object/from16 v11, p1

    .line 238
    .line 239
    const/4 v8, 0x0

    .line 240
    const/4 v10, -0x1

    .line 241
    goto :goto_2

    .line 242
    :cond_8
    const-string v0, "No global metadata in state file!"

    .line 243
    .line 244
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :goto_4
    const-string v8, "Unable to read Package Manager state file: "

    .line 249
    .line 250
    invoke-static {v8, v0, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :catch_1
    :goto_5
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz v0, :cond_9

    .line 256
    .line 257
    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_a

    .line 264
    .line 265
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v8, "Previous metadata "

    .line 268
    .line 269
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object v8, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v8, " mismatch vs "

    .line 278
    .line 279
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 283
    .line 284
    const-string v9, " - rewriting"

    .line 285
    .line 286
    invoke-static {v0, v8, v9, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 292
    .line 293
    .line 294
    :cond_a
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 295
    .line 296
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_b

    .line 301
    .line 302
    const-string v0, "No ancestral record version in the old state. Storing ancestral record version key"

    .line 303
    .line 304
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    array-length v8, v0

    .line 315
    invoke-virtual {v2, v4, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 316
    .line 317
    .line 318
    array-length v4, v0

    .line 319
    invoke-virtual {v2, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 320
    .line 321
    .line 322
    :goto_6
    move v8, v13

    .line 323
    goto :goto_7

    .line 324
    :cond_b
    iget v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    .line 325
    .line 326
    if-eq v0, v13, :cond_c

    .line 327
    .line 328
    const-string v0, "Ancestral record version has changed from old state. Storingancestral record version key"

    .line 329
    .line 330
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    array-length v8, v0

    .line 341
    invoke-virtual {v2, v4, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 342
    .line 343
    .line 344
    array-length v8, v0

    .line 345
    invoke-virtual {v2, v0, v8}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 346
    .line 347
    .line 348
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 349
    .line 350
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_c
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 355
    .line 356
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    const/4 v8, 0x0

    .line 360
    :goto_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 361
    .line 362
    .line 363
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 364
    .line 365
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_d

    .line 370
    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 372
    .line 373
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 374
    .line 375
    .line 376
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    array-length v4, v0

    .line 386
    invoke-virtual {v2, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 387
    .line 388
    .line 389
    array-length v4, v0

    .line 390
    invoke-virtual {v2, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 391
    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_d
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 395
    .line 396
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    :goto_8
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 400
    .line 401
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-eqz v4, :cond_13

    .line 410
    .line 411
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 416
    .line 417
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 423
    if-eqz v9, :cond_e

    .line 424
    .line 425
    goto :goto_9

    .line 426
    :cond_e
    :try_start_2
    iget-object v9, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 427
    .line 428
    iget v10, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    .line 429
    .line 430
    const/high16 v11, 0x8000000

    .line 431
    .line 432
    invoke-virtual {v9, v4, v11, v10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 433
    .line 434
    .line 435
    move-result-object v9
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 436
    :try_start_3
    iget-object v10, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 437
    .line 438
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v10

    .line 442
    if-eqz v10, :cond_f

    .line 443
    .line 444
    iget-object v10, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 445
    .line 446
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    if-nez v8, :cond_f

    .line 450
    .line 451
    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 452
    .line 453
    .line 454
    move-result-wide v10

    .line 455
    iget-object v13, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 456
    .line 457
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v13

    .line 461
    check-cast v13, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 462
    .line 463
    iget-wide v13, v13, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 464
    .line 465
    cmp-long v10, v10, v13

    .line 466
    .line 467
    if-nez v10, :cond_f

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_f
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 471
    .line 472
    if-nez v10, :cond_10

    .line 473
    .line 474
    new-instance v9, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    const-string v10, "Not backing up package "

    .line 480
    .line 481
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v4, " since it appears to have no signatures."

    .line 488
    .line 489
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_10
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 501
    .line 502
    .line 503
    iget v11, v9, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 504
    .line 505
    if-eqz v11, :cond_11

    .line 506
    .line 507
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 511
    .line 512
    .line 513
    move-result-wide v13

    .line 514
    invoke-virtual {v7, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 515
    .line 516
    .line 517
    goto :goto_a

    .line 518
    :cond_11
    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 519
    .line 520
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 521
    .line 522
    .line 523
    :goto_a
    invoke-virtual {v10}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 524
    .line 525
    .line 526
    move-result-object v9

    .line 527
    invoke-static {v9}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 532
    .line 533
    .line 534
    move-result v10

    .line 535
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 539
    .line 540
    .line 541
    move-result-object v9

    .line 542
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    .line 544
    .line 545
    move-result v10

    .line 546
    if-eqz v10, :cond_12

    .line 547
    .line 548
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v10

    .line 552
    check-cast v10, [B

    .line 553
    .line 554
    array-length v11, v10

    .line 555
    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 559
    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_12
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 563
    .line 564
    .line 565
    move-result-object v9

    .line 566
    array-length v10, v9

    .line 567
    invoke-virtual {v2, v4, v10}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 568
    .line 569
    .line 570
    array-length v4, v9

    .line 571
    invoke-virtual {v2, v9, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 572
    .line 573
    .line 574
    goto/16 :goto_9

    .line 575
    .line 576
    :catch_2
    iget-object v9, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 577
    .line 578
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    goto/16 :goto_9

    .line 582
    .line 583
    :cond_13
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 584
    .line 585
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    if-nez v0, :cond_15

    .line 590
    .line 591
    if-eqz v8, :cond_15

    .line 592
    .line 593
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    if-eqz v3, :cond_14

    .line 604
    .line 605
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    check-cast v3, Ljava/lang/String;

    .line 610
    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    const-string v6, "Ancestral state updated - Deleting uninstalled package: "

    .line 617
    .line 618
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    const-string v6, " from existing backup"

    .line 625
    .line 626
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    const/4 v4, -0x1

    .line 637
    invoke-virtual {v2, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 638
    .line 639
    .line 640
    goto :goto_c

    .line 641
    :cond_14
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 642
    .line 643
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 644
    .line 645
    .line 646
    :cond_15
    iget-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    .line 647
    .line 648
    move-object/from16 v1, p3

    .line 649
    .line 650
    invoke-static {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V

    .line 651
    .line 652
    .line 653
    return-void

    .line 654
    :catch_3
    const-string v0, "Unable to write package backup data file!"

    .line 655
    .line 656
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    return-void
.end method

.method public final onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 p3, -0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "@ancestral_record@"

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    new-array p2, v0, [B

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, p2, v1, v0}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 31
    .line 32
    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Ljava/io/DataInputStream;

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    .line 41
    .line 42
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

    .line 47
    .line 48
    if-eq p2, p3, :cond_2

    .line 49
    .line 50
    const/4 p3, 0x1

    .line 51
    if-eq p2, p3, :cond_1

    .line 52
    .line 53
    const-string p0, "Unrecognized ANCESTRAL_RECORD_VERSION: "

    .line 54
    .line 55
    invoke-static {p2, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    new-instance p2, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    .line 61
    .line 62
    const/4 p3, 0x1

    .line 63
    invoke-direct {p2, p0, p3}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;I)V

    .line 64
    .line 65
    .line 66
    :goto_1
    move-object p0, p2

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    new-instance p2, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    .line 69
    .line 70
    const/4 p3, 0x0

    .line 71
    invoke-direct {p2, p0, p3}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :goto_2
    if-nez p0, :cond_3

    .line 76
    .line 77
    const-string p0, "Ancestral restore set version is unknown to this Android version; not restoring"

    .line 78
    .line 79
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    iget p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->$r8$classId:I

    .line 84
    .line 85
    packed-switch p2, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    new-instance p2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance p3, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    :goto_3
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 103
    .line 104
    if-eqz v0, :cond_9

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    new-array v3, v2, [B

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    invoke-virtual {p1, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 118
    .line 119
    .line 120
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 121
    .line 122
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 123
    .line 124
    .line 125
    new-instance v3, Ljava/io/DataInputStream;

    .line 126
    .line 127
    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    .line 129
    .line 130
    const-string v2, "@meta@"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_4

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iput v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    iput-boolean v0, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    const-string v2, "@home@"

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_5

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    invoke-static {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    const/high16 v2, -0x80000000

    .line 187
    .line 188
    if-ne v1, v2, :cond_6

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    .line 191
    .line 192
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

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-eqz v3, :cond_8

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_7

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_7
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    .line 210
    .line 211
    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 212
    .line 213
    .line 214
    iput-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    new-instance v4, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 220
    .line 221
    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(JLjava/util/ArrayList;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_8
    :goto_5
    const-string v1, "Not restoring package "

    .line 230
    .line 231
    const-string v2, " since it appears to have no signatures."

    .line 232
    .line 233
    const-string v3, "PMBA"

    .line 234
    .line 235
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_3

    .line 239
    .line 240
    :cond_9
    iput-object p3, v1, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 241
    .line 242
    goto/16 :goto_a

    .line 243
    .line 244
    :pswitch_0
    new-instance p2, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    new-instance p3, Ljava/util/HashMap;

    .line 250
    .line 251
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 252
    .line 253
    .line 254
    :cond_a
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    new-array v2, v1, [B

    .line 263
    .line 264
    const/4 v3, 0x0

    .line 265
    invoke-virtual {p1, v2, v3, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 266
    .line 267
    .line 268
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 269
    .line 270
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 271
    .line 272
    .line 273
    new-instance v2, Ljava/io/DataInputStream;

    .line 274
    .line 275
    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 276
    .line 277
    .line 278
    const-string v1, "@meta@"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    iget-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;->this$0:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 285
    .line 286
    if-eqz v1, :cond_b

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    iput v0, v3, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 293
    .line 294
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iput-object v0, v3, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 299
    .line 300
    const/4 v0, 0x1

    .line 301
    iput-boolean v0, v3, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_b
    const-string v1, "@home@"

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_c

    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    invoke-static {v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    .line 329
    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    const/high16 v4, -0x80000000

    .line 337
    .line 338
    if-ne v1, v4, :cond_d

    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    .line 341
    .line 342
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

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    if-eqz v1, :cond_f

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-nez v2, :cond_e

    .line 357
    .line 358
    goto :goto_8

    .line 359
    :cond_e
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    .line 360
    .line 361
    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 362
    .line 363
    .line 364
    iput-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    new-instance v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 370
    .line 371
    invoke-direct {v2, v4, v5, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(JLjava/util/ArrayList;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    :goto_7
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_a

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_f
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v2, "Not restoring package "

    .line 387
    .line 388
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v0, " since it appears to have no signatures."

    .line 395
    .line 396
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    const-string v1, "PMBA"

    .line 404
    .line 405
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_a

    .line 413
    .line 414
    :goto_9
    iput-object p3, v3, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 415
    .line 416
    :goto_a
    return-void

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
