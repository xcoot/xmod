.class public final Lcom/android/server/stats/pull/netstats/NetworkStatsExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final isTypeProxy:Z

.field public final oemManaged:I

.field public final ratType:I

.field public final slicedByFgbg:Z

.field public final slicedByMetered:Z

.field public final slicedByTag:Z

.field public final stats:Landroid/net/NetworkStats;

.field public final subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

.field public final transports:[I


# direct methods
.method public constructor <init>(Landroid/net/NetworkStats;[IZ)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 4
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 6
    iput-boolean p3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    .line 7
    iput-boolean p4, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    .line 8
    iput-boolean p5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    .line 9
    iput p6, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    .line 10
    iput-object p7, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 11
    iput p8, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 12
    iput-boolean p9, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    return-void
.end method
