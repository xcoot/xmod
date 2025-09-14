.class public final Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final appDigestCNCList:Ljava/util/HashMap;

.field public final appDigestList:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestList:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method
