.class public final Lcom/android/server/net/watchlist/FileHashCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sLoggedWtf:Z = false

.field static sPersistFileName:Ljava/lang/String; = "/data/system/file_hash_cache"

.field public static final sSaveDeferredDelayMillis:J


# instance fields
.field public final mEntries:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mLoadTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

.field public final mSaveTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x5

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/net/watchlist/FileHashCache;->sSaveDeferredDelayMillis:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/FileHashCache;I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, p0, v2}, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/net/watchlist/FileHashCache;I)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/net/watchlist/FileHashCache;->mSaveTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final getSha256Hash(Ljava/io/File;)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mSaveTask:Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/net/watchlist/FileHashCache;->getSha256HashFromCache(Ljava/io/File;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v3, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-wide v4, v4, Landroid/system/StructStat;->st_ctime:J

    .line 27
    .line 28
    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/net/watchlist/FileHashCache$Entry;-><init>(J[B)V

    .line 29
    .line 30
    .line 31
    check-cast v2, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    sget-wide v2, Lcom/android/server/net/watchlist/FileHashCache;->sSaveDeferredDelayMillis:J

    .line 42
    .line 43
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public getSha256HashFromCache(Ljava/io/File;)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/Exception;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p1, "FileHashCache"

    .line 20
    .line 21
    const-string v0, "Request from invalid thread"

    .line 22
    .line 23
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    .line 28
    .line 29
    check-cast v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    :try_start_0
    iget-wide v2, v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-wide v4, v4, Landroid/system/StructStat;->st_ctime:J

    .line 51
    .line 52
    cmp-long v2, v2, v4

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    iget-object p0, v0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    return-object p0

    .line 59
    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    .line 60
    .line 61
    check-cast p0, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-object v1
.end method
