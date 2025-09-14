.class public final synthetic Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 6
    iput p2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 3
    iget p0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 7
    const-string v1, "WatchlistLoggingHandler"

    .line 9
    iget-object v2, v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result p0

    .line 23
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-nez v3, :cond_3

    .line 30
    array-length v3, v2

    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_0
    if-ge v5, v3, :cond_3

    .line 34
    aget-object v6, v2, v5

    .line 36
    :try_start_0
    iget-object v7, v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 38
    const/high16 v8, 0xc0000

    .line 40
    invoke-virtual {v7, v6, v8, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 43
    move-result-object v7

    .line 44
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 46
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 48
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_0

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v8, "Cannot find apkPath for "

    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    goto :goto_3

    .line 77
    :cond_0
    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_1

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v8, "Skipping incremental path: "

    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v7

    .line 100
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object p0, v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mApkHashCache:Lcom/android/server/net/watchlist/FileHashCache;

    .line 108
    if-eqz p0, :cond_2

    .line 110
    new-instance v0, Ljava/io/File;

    .line 112
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/FileHashCache;->getSha256Hash(Ljava/io/File;)[B

    .line 118
    move-result-object p0

    .line 119
    :goto_2
    move-object v4, p0

    .line 120
    goto :goto_4

    .line 121
    :cond_2
    new-instance p0, Ljava/io/File;

    .line 123
    invoke-direct {p0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {p0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    .line 129
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_2

    .line 131
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "Cannot get digest from uid: "

    .line 135
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    const-string p1, ",pkg: "

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :cond_3
    :goto_4
    return-object v4
.end method
