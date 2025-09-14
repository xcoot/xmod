.class public abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field public final mPackageItemLock:Ljava/lang/Object;

.field public final mPackageName:Ljava/lang/String;

.field public final mPackageUserId:I

.field public final mSaveShortcutPackageRunner:Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;

.field public final mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

.field public mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackageItem;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mSaveShortcutPackageRunner:Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 19
    .line 20
    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 21
    .line 22
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/String;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 31
    .line 32
    new-instance p2, Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Lcom/android/server/pm/ShortcutBitmapSaver;-><init>(Lcom/android/server/pm/ShortcutService;)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 40
    .line 41
    return-void
.end method

.method public static getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Ljava/io/File;

    .line 6
    .line 7
    const-string v1, ".backup"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Ljava/io/File;

    .line 17
    .line 18
    const-string v1, ".reservecopy"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    .line 28
    .line 29
    const-string/jumbo v6, "shortcut package item"

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/16 v5, 0x1f9

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    move-object v2, p0

    .line 37
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method


# virtual methods
.method public final attemptToRestoreIfNeededAndSave()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 15
    .line 16
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v4, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    const/16 v6, 0x66

    .line 31
    .line 32
    if-lez v4, :cond_5

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 40
    .line 41
    .line 42
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 49
    .line 50
    iget-object v4, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {v4, v2, v3}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const-string v4, "ShortcutService"

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    const-string v1, "Can\'t restore: Package signature mismatch"

    .line 61
    .line 62
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 75
    .line 76
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 77
    .line 78
    const v2, 0x8000

    .line 79
    .line 80
    .line 81
    and-int/2addr v1, v2

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    iget-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 85
    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    :cond_3
    const-string v1, "Can\'t restore: package didn\'t or doesn\'t allow backup"

    .line 89
    .line 90
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    const/16 v6, 0x65

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    move v6, v5

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    const-string v4, "Attempted to restore package "

    .line 99
    .line 100
    const-string v7, "/u"

    .line 101
    .line 102
    const-string v8, " but signatures not found in the restore data."

    .line 103
    .line 104
    invoke-static {v3, v4, v2, v7, v8}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const/4 v3, 0x0

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored(I)V

    .line 113
    .line 114
    .line 115
    iput-boolean v5, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public abstract getOwnerUserId()I
.end method

.method public abstract getShortcutPackageItemFile()Ljava/io/File;
.end method

.method public abstract onRestored(I)V
.end method

.method public final refreshPackageSignatureAndSave()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const-string v0, "Attempted to refresh package info for shadow package "

    .line 17
    .line 18
    const-string v1, ", user="

    .line 19
    .line 20
    invoke-static {v0, v3, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    iget v4, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "ShortcutService"

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    const-string v0, "Package not found: "

    .line 52
    .line 53
    invoke-static {v0, v3, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    const-string v0, "Not refreshing signature for "

    .line 62
    .line 63
    const-string v1, " since it appears to have no signing info."

    .line 64
    .line 65
    invoke-static {v0, v3, v1, v2}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 78
    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final removeShortcutPackageItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getShortcutPackageItemFile()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/pm/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/pm/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final saveToFileLocked(Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "Failed to write to shortcut file "

    .line 2
    .line 3
    const-string v1, "Failed to write to file "

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    move-exception p0

    .line 40
    move-object v2, v3

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    :goto_0
    :try_start_2
    const-string v3, "ShortcutService"

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v3, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p1, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", Error : "

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catchall_1
    move-exception p1

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_3
    throw p0
.end method

.method public abstract saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V
.end method

.method public final scheduleSave()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mSaveShortcutPackageRunner:Lcom/android/server/pm/ShortcutPackageItem$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public scheduleSaveToAppSearchLocked()V
    .locals 0

    .line 1
    return-void
.end method

.method public verifyStates()V
    .locals 0

    .line 1
    return-void
.end method

.method public final waitForBitmapSaves()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
