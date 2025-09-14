.class public final Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;
.super Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final sourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedSourceCompactionStats;->sourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 6
    return-void
.end method
