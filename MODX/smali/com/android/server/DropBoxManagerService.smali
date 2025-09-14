.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_QUOTA_KB:I

.field public static final DISABLED_BY_DEFAULT_TAGS:Ljava/util/List;

.field public static final sDropboxEntryAddedExtrasMerger:Landroid/os/BundleMerger;


# instance fields
.field public mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field public mBlockSize:I

.field public volatile mBooted:Z

.field public mCachedQuotaBlocks:I

.field public mCachedQuotaUptimeMillis:J

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDropBoxDir:Ljava/io/File;

.field public mFilesByTag:Landroid/util/ArrayMap;

.field public final mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

.field public mLowPriorityRateLimitPeriod:J

.field public mLowPriorityTags:Landroid/util/ArraySet;

.field public mMaxFiles:I

.field public final mReceiver:Lcom/android/server/DropBoxManagerService$1;

.field public mStatFs:Landroid/os/StatFs;

.field public final mStub:Lcom/android/server/DropBoxManagerService$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/16 v0, 0x5000

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x2800

    .line 10
    :goto_0
    sput v0, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 12
    const-string/jumbo v0, "system_app_wtf"

    .line 15
    const-string/jumbo v1, "system_server_wtf"

    .line 18
    const-string/jumbo v2, "data_app_wtf"

    .line 21
    invoke-static {v2, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/server/DropBoxManagerService;->DISABLED_BY_DEFAULT_TAGS:Ljava/util/List;

    .line 27
    new-instance v0, Landroid/os/BundleMerger;

    .line 29
    invoke-direct {v0}, Landroid/os/BundleMerger;-><init>()V

    .line 32
    sput-object v0, Lcom/android/server/DropBoxManagerService;->sDropboxEntryAddedExtrasMerger:Landroid/os/BundleMerger;

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/BundleMerger;->setDefaultMergeStrategy(I)V

    .line 38
    const-string/jumbo v1, "time"

    .line 41
    const/4 v2, 0x4

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/BundleMerger;->setMergeStrategy(Ljava/lang/String;I)V

    .line 45
    const-string v1, "android.os.extra.DROPPED_COUNT"

    .line 47
    const/16 v2, 0x19

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BundleMerger;->setMergeStrategy(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 4
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 6
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 7
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 9
    iput p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 10
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 11
    iput-boolean p1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 13
    new-instance p1, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Lcom/android/server/DropBoxManagerService$1;

    .line 14
    new-instance p1, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/server/DropBoxManagerService$2;

    .line 15
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 16
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 17
    new-instance p1, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 18
    new-instance p1, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    invoke-direct {p1, p0}, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;-><init>(Lcom/android/server/DropBoxManagerService;)V

    const-class p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 3
    invoke-static {v0, v1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    move v5, v2

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v1, :cond_2

    .line 17
    if-eqz v5, :cond_2

    .line 19
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 31
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move v5, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    move v5, v2

    .line 43
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v5
.end method


# virtual methods
.method public final addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 2
    const-string v3, "DropBoxManagerService"

    const-string v4, "Can\'t write: "

    const-string/jumbo v5, "drop"

    const-string v6, "Dropping: "

    const-string v7, "add tag="

    const/16 v8, 0x1ab

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 3
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isTagEnabled="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " flags=0x"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init$1()V

    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 8
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/DropBoxManagerInternal$EntrySource;->length()J

    move-result-wide v12

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-lez v7, :cond_1

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    .line 12
    invoke-static {v8, v5, v1, v9, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    move-object/from16 v12, p2

    move-object v6, v11

    goto :goto_2

    :goto_0
    move-object/from16 v12, p2

    goto/16 :goto_b

    :goto_1
    move-object/from16 v12, p2

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 13
    :cond_1
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 15
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v12, p2

    :try_start_4
    invoke-interface {v12, v7}, Lcom/android/server/DropBoxManagerInternal$EntrySource;->writeTo(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 16
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 17
    :goto_2
    invoke-virtual {v0, v2, v6, v1}, Lcom/android/server/DropBoxManagerService;->createEntry(ILjava/io/File;Ljava/lang/String;)J

    move-result-wide v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 18
    :try_start_6
    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(JLjava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto :goto_9

    .line 20
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v7, "tag"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string/jumbo v7, "time"

    invoke-virtual {v2, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 24
    const-string v5, "android.os.extra.DROPPED_COUNT"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v5, 0x1

    .line 25
    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 26
    :goto_3
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_a

    :catchall_2
    move-exception v0

    :goto_4
    move-object v11, v6

    goto :goto_b

    :catch_2
    move-exception v0

    :goto_5
    move-object v11, v6

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_6
    move-object v2, v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_6

    .line 27
    :goto_7
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_6
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_5

    :cond_3
    move-object/from16 v12, p2

    .line 28
    :try_start_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 29
    :goto_9
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    .line 30
    invoke-static {v8, v0, v1, v9, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 31
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v11, :cond_4

    .line 32
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_a
    return-void

    .line 33
    :goto_b
    invoke-static/range {p2 .. p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v11, :cond_5

    .line 34
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 35
    :cond_5
    throw v0
.end method

.method public final addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V
    .locals 2

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_0

    const-wide/16 v0, 0x4000

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    or-int/lit8 p5, p5, 0x4

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    new-instance v1, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;

    invoke-direct {v1, p3, p4, p2, v0}, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;-><init>(JLjava/io/InputStream;Z)V

    invoke-virtual {p0, p1, v1, p5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    return-void
.end method

.method public final checkPermission(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.PEEK_DROPBOX_DATA"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    invoke-static {}, Lcom/android/server/feature/flags/Flags;->enableReadDropboxPermission()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    const-wide/32 v2, 0x11a58811

    .line 24
    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    const-string v0, "android.permission.READ_DROPBOX_DATA"

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "android.permission.READ_LOGS"

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    const-string v3, "DropBoxManagerService"

    .line 41
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 48
    const-class v2, Landroid/app/AppOpsManager;

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    move-object v4, v0

    .line 55
    check-cast v4, Landroid/app/AppOpsManager;

    .line 57
    const/16 v5, 0x2b

    .line 59
    const/4 v9, 0x0

    .line 60
    move v6, p1

    .line 61
    move-object v7, p2

    .line 62
    move-object v8, p3

    .line 63
    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 69
    const/4 p2, 0x3

    .line 70
    if-eq p1, p2, :cond_2

    .line 72
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 77
    move-result-object p0

    .line 78
    const-string p1, "android.permission.PACKAGE_USAGE_STATS"

    .line 80
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3
    return v1
.end method

.method public final declared-synchronized createEntry(ILjava/io/File;Ljava/lang/String;)J
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v2

    .line 8
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 10
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 12
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 14
    const-wide/16 v5, 0x2710

    .line 16
    add-long/2addr v5, v2

    .line 17
    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    .line 33
    move-result v4

    .line 34
    new-array v4, v4, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 36
    invoke-interface {v0, v4}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 42
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto/16 :goto_4

    .line 49
    :cond_0
    const/4 v4, 0x0

    .line 50
    :goto_0
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 52
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 54
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    .line 57
    move-result v0

    .line 58
    const-wide/16 v5, 0x1

    .line 60
    if-nez v0, :cond_1

    .line 62
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 64
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 66
    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 72
    iget-wide v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 74
    add-long/2addr v7, v5

    .line 75
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 78
    move-result-wide v2

    .line 79
    :cond_1
    if-eqz v4, :cond_5

    .line 81
    array-length v0, v4

    .line 82
    const/4 v7, 0x0

    .line 83
    move-wide v12, v2

    .line 84
    :goto_1
    if-ge v7, v0, :cond_4

    .line 86
    aget-object v2, v4, v7

    .line 88
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 90
    iget v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 92
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 94
    sub-int/2addr v8, v9

    .line 95
    iput v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 97
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 99
    iget-object v8, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 101
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 107
    if-eqz v3, :cond_2

    .line 109
    iget-object v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 111
    invoke-virtual {v8, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_2

    .line 117
    iget v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 119
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 121
    sub-int/2addr v8, v9

    .line 122
    iput v8, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 124
    :cond_2
    iget v3, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 126
    and-int/lit8 v3, v3, 0x1

    .line 128
    if-nez v3, :cond_3

    .line 130
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 132
    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 134
    invoke-virtual {v2, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    .line 137
    move-result-object v9

    .line 138
    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 140
    iget-object v11, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 142
    add-long v16, v12, v5

    .line 144
    iget v14, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 146
    iget v15, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 148
    move-object v8, v3

    .line 149
    invoke-direct/range {v8 .. v15}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    .line 152
    invoke-virtual {v1, v3}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 155
    move-wide/from16 v12, v16

    .line 157
    goto :goto_2

    .line 158
    :cond_3
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 160
    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 162
    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 164
    add-long v9, v12, v5

    .line 166
    invoke-direct {v3, v8, v2, v12, v13}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .line 169
    invoke-virtual {v1, v3}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 172
    move-wide v12, v9

    .line 173
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    move-wide v2, v12

    .line 177
    :cond_5
    if-nez p2, :cond_6

    .line 179
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 181
    iget-object v4, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 183
    move-object/from16 v5, p3

    .line 185
    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .line 188
    invoke-virtual {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 191
    goto :goto_3

    .line 192
    :cond_6
    move-object/from16 v5, p3

    .line 194
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 196
    iget-object v4, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 198
    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 200
    move-object v14, v0

    .line 201
    move-object/from16 v15, p2

    .line 203
    move-object/from16 v16, v4

    .line 205
    move-object/from16 v17, p3

    .line 207
    move-wide/from16 v18, v2

    .line 209
    move/from16 v20, p1

    .line 211
    move/from16 v21, v6

    .line 213
    invoke-direct/range {v14 .. v21}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    .line 216
    invoke-virtual {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_3
    monitor-exit p0

    .line 220
    return-wide v2

    .line 221
    :goto_4
    monitor-exit p0

    .line 222
    throw v0
.end method

.method public final dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 3
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 8
    iget-object p1, p1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 10
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_6

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 26
    invoke-static {v1, p2}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 41
    iget v3, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 43
    and-int/lit8 v3, v3, 0x1

    .line 45
    if-eqz v3, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-wide v3, 0x20b00000001L

    .line 53
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 56
    move-result-wide v9

    .line 57
    const-wide v3, 0x10300000001L

    .line 62
    iget-wide v5, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 64
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 67
    :try_start_0
    new-instance v11, Landroid/os/DropBoxManager$Entry;

    .line 69
    iget-object v4, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 71
    iget-wide v5, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 73
    iget v8, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 75
    move-object v3, v11

    .line 76
    move-object v7, v2

    .line 77
    invoke-direct/range {v3 .. v8}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    invoke-virtual {v11}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    .line 83
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 84
    if-eqz v1, :cond_4

    .line 86
    const/high16 v3, 0x40000

    .line 88
    :try_start_2
    new-array v4, v3, [B

    .line 90
    const/4 v5, 0x0

    .line 91
    move v6, v5

    .line 92
    :goto_1
    if-ltz v5, :cond_3

    .line 94
    add-int/2addr v6, v5

    .line 95
    if-ge v6, v3, :cond_3

    .line 97
    sub-int v5, v3, v6

    .line 99
    invoke-virtual {v1, v4, v6, v5}, Ljava/io/InputStream;->read([BII)I

    .line 102
    move-result v5

    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception v3

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 109
    move-result-object v3

    .line 110
    const-wide v4, 0x10c00000002L

    .line 115
    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    goto :goto_4

    .line 119
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    goto :goto_3

    .line 123
    :catchall_1
    move-exception v1

    .line 124
    :try_start_4
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    :goto_3
    throw v3

    .line 128
    :catchall_2
    move-exception v1

    .line 129
    goto :goto_5

    .line 130
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    :cond_5
    :try_start_5
    invoke-virtual {v11}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 138
    goto :goto_8

    .line 139
    :catch_0
    move-exception v1

    .line 140
    goto :goto_7

    .line 141
    :goto_5
    :try_start_6
    invoke-virtual {v11}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 144
    goto :goto_6

    .line 145
    :catchall_3
    move-exception v3

    .line 146
    :try_start_7
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 149
    :goto_6
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 150
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    const-string v4, "Can\'t read: "

    .line 154
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v2

    .line 164
    const-string v3, "DropBoxManagerService"

    .line 166
    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :goto_8
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 172
    goto/16 :goto_0

    .line 174
    :cond_6
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 177
    return-void
.end method

.method public final declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 4
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 11
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 13
    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 15
    add-int/2addr v1, v2

    .line 16
    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 18
    iget-object v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    if-lez v2, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 26
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 32
    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 36
    invoke-direct {v0}, Lcom/android/server/DropBoxManagerService$FileList;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 41
    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 43
    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 55
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 58
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 60
    iget p1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 62
    add-int/2addr v1, p1

    .line 63
    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public final getLowPriorityResourceConfigs()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0x10e00a9

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    move-result v0

    .line 12
    int-to-long v0, v0

    .line 13
    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 18
    move-result-object v0

    .line 19
    const v1, 0x10700f3

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    array-length v1, v0

    .line 27
    if-nez v1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    .line 35
    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 38
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_1

    .line 43
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 45
    aget-object v4, v0, v2

    .line 47
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public final declared-synchronized init$1()V
    .locals 7

    .line 1
    const-string v0, "Can\'t list files: "

    .line 3
    const-string v1, "Can\'t statfs: "

    .line 5
    const-string v2, "Can\'t mkdir: "

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 10
    if-nez v3, :cond_2

    .line 12
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_1

    .line 20
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 22
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_4

    .line 52
    :cond_1
    :goto_0
    :try_start_1
    new-instance v2, Landroid/os/StatFs;

    .line 54
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 65
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    .line 68
    move-result v2

    .line 69
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    throw v0

    .line 92
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 94
    if-nez v1, :cond_6

    .line 96
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_5

    .line 104
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 106
    invoke-direct {v0}, Lcom/android/server/DropBoxManagerService$FileList;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 111
    new-instance v0, Landroid/util/ArrayMap;

    .line 113
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 118
    array-length v0, v1

    .line 119
    const/4 v2, 0x0

    .line 120
    :goto_2
    if-ge v2, v0, :cond_6

    .line 122
    aget-object v3, v1, v2

    .line 124
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 127
    move-result-object v4

    .line 128
    const-string v5, ".tmp"

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_3

    .line 136
    const-string v4, "DropBoxManagerService"

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const-string v6, "Cleaning temp file: "

    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 161
    goto :goto_3

    .line 162
    :cond_3
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 164
    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 166
    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 169
    iget-object v3, v4, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 171
    if-eqz v3, :cond_4

    .line 173
    invoke-virtual {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 176
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    new-instance v1, Ljava/io/IOException;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 198
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :cond_6
    monitor-exit p0

    .line 200
    return-void

    .line 201
    :goto_4
    monitor-exit p0

    .line 202
    throw v0
.end method

.method public final isTagEnabled(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    sget-object v2, Lcom/android/server/DropBoxManagerService;->DISABLED_BY_DEFAULT_TAGS:Ljava/util/List;

    .line 7
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const-string/jumbo v3, "dropbox:"

    .line 14
    if-eqz v2, :cond_0

    .line 16
    :try_start_1
    const-string/jumbo v2, "enabled"

    .line 19
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    :try_start_2
    const-string/jumbo v2, "disabled"

    .line 50
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    xor-int/lit8 p0, p0, 0x1

    .line 74
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return p0

    .line 78
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x1f4

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/16 v0, 0x3e8

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const-string p1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 16
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Lcom/android/server/DropBoxManagerService$1;

    .line 26
    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    new-instance v2, Lcom/android/server/DropBoxManagerService$3;

    .line 35
    new-instance v3, Landroid/os/Handler;

    .line 37
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 40
    invoke-direct {v2, p0, v3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    .line 43
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    .line 49
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/server/DropBoxManagerService$2;

    .line 3
    const-string/jumbo v1, "dropbox"

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    return-void
.end method

.method public final declared-synchronized trimToFit()J
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    const-string/jumbo v1, "dropbox_age_seconds"

    .line 7
    const v2, 0x3f480

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 16
    const-string/jumbo v2, "dropbox_max_files"

    .line 19
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 22
    move-result v3

    .line 23
    const/16 v4, 0x3e8

    .line 25
    if-eqz v3, :cond_0

    .line 27
    const/16 v3, 0x12c

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v3, v4

    .line 31
    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 34
    move-result v1

    .line 35
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v1

    .line 41
    mul-int/2addr v0, v4

    .line 42
    int-to-long v3, v0

    .line 43
    sub-long v3, v1, v3

    .line 45
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 47
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 49
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    .line 52
    move-result v0

    .line 53
    const/16 v5, 0x1ab

    .line 55
    if-nez v0, :cond_5

    .line 57
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 59
    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 61
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 67
    iget-wide v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 69
    cmp-long v6, v6, v3

    .line 71
    if-lez v6, :cond_2

    .line 73
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 75
    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 77
    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    .line 80
    move-result v6

    .line 81
    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 83
    if-ge v6, v7, :cond_2

    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto/16 :goto_8

    .line 89
    :cond_2
    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 91
    iget-wide v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 93
    sub-long v7, v1, v7

    .line 95
    const/4 v9, 0x4

    .line 96
    invoke-static {v5, v9, v6, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 99
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 101
    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 103
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    .line 109
    if-eqz v5, :cond_3

    .line 111
    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 113
    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_3

    .line 119
    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 121
    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 123
    sub-int/2addr v6, v7

    .line 124
    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 126
    :cond_3
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 128
    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 130
    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_4

    .line 136
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 138
    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 140
    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 142
    sub-int/2addr v6, v7

    .line 143
    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 145
    :cond_4
    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 147
    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 149
    if-eqz v6, :cond_1

    .line 151
    invoke-virtual {v0, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 158
    goto :goto_1

    .line 159
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 162
    move-result-wide v3

    .line 163
    iget-wide v6, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 165
    const-wide/16 v8, 0x1388

    .line 167
    add-long/2addr v6, v8

    .line 168
    cmp-long v0, v3, v6

    .line 170
    const/4 v6, 0x0

    .line 171
    if-lez v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 175
    const-string/jumbo v7, "dropbox_quota_percent"

    .line 178
    const/16 v8, 0xa

    .line 180
    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 183
    move-result v0

    .line 184
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 186
    const-string/jumbo v8, "dropbox_reserve_percent"

    .line 189
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 192
    move-result v7

    .line 193
    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 195
    const-string/jumbo v9, "dropbox_quota_kb"

    .line 198
    sget v10, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 200
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 203
    move-result v8

    .line 204
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 206
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 209
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    iget-object v10, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 212
    invoke-virtual {v10, v9}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :try_start_2
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 217
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 220
    move-result-wide v9

    .line 221
    iget-object v11, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 223
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 226
    move-result-wide v11

    .line 227
    int-to-long v13, v7

    .line 228
    mul-long/2addr v11, v13

    .line 229
    const-wide/16 v13, 0x64

    .line 231
    div-long/2addr v11, v13

    .line 232
    sub-long/2addr v9, v11

    .line 233
    int-to-long v11, v0

    .line 234
    mul-long/2addr v9, v11

    .line 235
    div-long/2addr v9, v13

    .line 236
    const-wide/32 v11, 0x7fffffff

    .line 239
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 242
    move-result-wide v9

    .line 243
    const-wide/16 v11, 0x0

    .line 245
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 248
    move-result-wide v9

    .line 249
    invoke-static {v9, v10}, Ljava/lang/Math;->toIntExact(J)I

    .line 252
    move-result v0

    .line 253
    mul-int/lit16 v8, v8, 0x400

    .line 255
    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 257
    div-int/2addr v8, v7

    .line 258
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    .line 261
    move-result v0

    .line 262
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 264
    iput-wide v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 266
    goto :goto_3

    .line 267
    :catch_0
    new-instance v0, Ljava/io/IOException;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string v2, "Can\'t restat: "

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 288
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 291
    throw v0

    .line 292
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 294
    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 296
    iget v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 298
    if-le v0, v3, :cond_e

    .line 300
    new-instance v3, Ljava/util/TreeSet;

    .line 302
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 304
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 307
    move-result-object v4

    .line 308
    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 311
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 314
    move-result-object v4

    .line 315
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    move-result v7

    .line 319
    if-eqz v7, :cond_8

    .line 321
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    move-result-object v7

    .line 325
    check-cast v7, Lcom/android/server/DropBoxManagerService$FileList;

    .line 327
    if-lez v6, :cond_7

    .line 329
    iget v8, v7, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 331
    iget v9, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 333
    sub-int/2addr v9, v0

    .line 334
    div-int/2addr v9, v6

    .line 335
    if-gt v8, v9, :cond_7

    .line 337
    goto :goto_5

    .line 338
    :cond_7
    iget v7, v7, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 340
    sub-int/2addr v0, v7

    .line 341
    add-int/lit8 v6, v6, 0x1

    .line 343
    goto :goto_4

    .line 344
    :cond_8
    :goto_5
    iget v4, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 346
    sub-int/2addr v4, v0

    .line 347
    div-int/2addr v4, v6

    .line 348
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 351
    move-result-object v0

    .line 352
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_e

    .line 358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    move-result-object v3

    .line 362
    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 364
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 366
    iget v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 368
    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 370
    if-ge v6, v7, :cond_a

    .line 372
    goto :goto_7

    .line 373
    :cond_a
    :goto_6
    iget v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 375
    if-le v6, v4, :cond_9

    .line 377
    iget-object v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 379
    invoke-virtual {v6}, Ljava/util/TreeSet;->isEmpty()Z

    .line 382
    move-result v6

    .line 383
    if-nez v6, :cond_9

    .line 385
    iget-object v6, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 387
    invoke-virtual {v6}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 390
    move-result-object v6

    .line 391
    check-cast v6, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 393
    iget-object v7, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 395
    iget-wide v8, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 397
    sub-long v8, v1, v8

    .line 399
    const/4 v10, 0x3

    .line 400
    invoke-static {v5, v10, v7, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 403
    iget-object v7, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 405
    invoke-virtual {v7, v6}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 408
    move-result v7

    .line 409
    if-eqz v7, :cond_b

    .line 411
    iget v7, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 413
    iget v8, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 415
    sub-int/2addr v7, v8

    .line 416
    iput v7, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 418
    :cond_b
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 420
    iget-object v7, v7, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    .line 422
    invoke-virtual {v7, v6}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 425
    move-result v7

    .line 426
    if-eqz v7, :cond_c

    .line 428
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 430
    iget v8, v7, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 432
    iget v9, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 434
    sub-int/2addr v8, v9

    .line 435
    iput v8, v7, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    :cond_c
    :try_start_3
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 439
    iget-object v8, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 441
    if-eqz v8, :cond_d

    .line 443
    invoke-virtual {v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    .line 446
    move-result-object v7

    .line 447
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 450
    :cond_d
    new-instance v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 452
    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 454
    iget-object v9, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 456
    iget-wide v10, v6, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 458
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .line 461
    invoke-virtual {p0, v7}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    goto :goto_6

    .line 465
    :catch_1
    move-exception v6

    .line 466
    :try_start_4
    const-string v7, "DropBoxManagerService"

    .line 468
    const-string v8, "Can\'t write tombstone file"

    .line 470
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 473
    goto :goto_6

    .line 474
    :cond_e
    :goto_7
    iget v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 476
    iget v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 478
    mul-int/2addr v0, v1

    .line 479
    int-to-long v0, v0

    .line 480
    monitor-exit p0

    .line 481
    return-wide v0

    .line 482
    :goto_8
    monitor-exit p0

    .line 483
    throw v0
.end method
