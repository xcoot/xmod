.class public final Lcom/android/server/uri/UriMetricsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPersistentUriGrantsProvider:Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/android/server/uri/UriMetricsHelper;->DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/uri/UriMetricsHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/uri/UriMetricsHelper;->mPersistentUriGrantsProvider:Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;

    .line 7
    .line 8
    return-void
.end method
