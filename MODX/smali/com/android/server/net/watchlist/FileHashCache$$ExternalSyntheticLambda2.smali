.class public final synthetic Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/watchlist/FileHashCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/watchlist/FileHashCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/watchlist/FileHashCache;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/net/watchlist/FileHashCache;

    .line 3
    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    .line 10
    const-string v1, ","

    .line 12
    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/io/File;

    .line 17
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 39
    move-result-object v0

    .line 40
    iget-object p0, p0, Lcom/android/server/net/watchlist/FileHashCache;->mEntries:Ljava/util/Map;

    .line 42
    new-instance v4, Lcom/android/server/net/watchlist/FileHashCache$Entry;

    .line 44
    invoke-direct {v4, v2, v3, v0}, Lcom/android/server/net/watchlist/FileHashCache$Entry;-><init>(J[B)V

    .line 47
    check-cast p0, Ljava/util/HashMap;

    .line 49
    invoke-virtual {p0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string v0, "Invalid entry for "

    .line 56
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    sget-boolean v0, Lcom/android/server/net/watchlist/FileHashCache;->sLoggedWtf:Z

    .line 62
    const-string v1, "FileHashCache"

    .line 64
    if-nez v0, :cond_0

    .line 66
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 p0, 0x1

    .line 70
    sput-boolean p0, Lcom/android/server/net/watchlist/FileHashCache;->sLoggedWtf:Z

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_0
    return-void
.end method
