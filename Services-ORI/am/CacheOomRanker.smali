.class public final Lcom/android/server/am/CacheOomRanker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CACHE_USE_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

.field static final DEFAULT_OOM_RE_RANKING_LRU_WEIGHT:F = 0.35f

.field static final DEFAULT_OOM_RE_RANKING_NUMBER_TO_RE_RANK:I = 0x8

.field static final DEFAULT_OOM_RE_RANKING_RSS_WEIGHT:F = 0.15f

.field static final DEFAULT_OOM_RE_RANKING_USES_WEIGHT:F = 0.5f

.field static final DEFAULT_PRESERVE_TOP_N_APPS:I = 0x3

.field static final DEFAULT_RSS_UPDATE_RATE_MS:J = 0x2710L

.field static final DEFAULT_USE_FREQUENT_RSS:Z = true

.field static final KEY_OOM_RE_RANKING_LRU_WEIGHT:Ljava/lang/String; = "oom_re_ranking_lru_weight"

.field static final KEY_OOM_RE_RANKING_NUMBER_TO_RE_RANK:Ljava/lang/String; = "oom_re_ranking_number_to_re_rank"

.field static final KEY_OOM_RE_RANKING_PRESERVE_TOP_N_APPS:Ljava/lang/String; = "oom_re_ranking_preserve_top_n_apps"

.field static final KEY_OOM_RE_RANKING_RSS_UPDATE_RATE_MS:Ljava/lang/String; = "oom_re_ranking_rss_update_rate_ms"

.field static final KEY_OOM_RE_RANKING_RSS_WEIGHT:Ljava/lang/String; = "oom_re_ranking_rss_weight"

.field static final KEY_OOM_RE_RANKING_USES_WEIGHT:Ljava/lang/String; = "oom_re_ranking_uses_weight"

.field static final KEY_OOM_RE_RANKING_USE_FREQUENT_RSS:Ljava/lang/String; = "oom_re_ranking_rss_use_frequent_rss"

.field static final KEY_USE_OOM_RE_RANKING:Ljava/lang/String; = "use_oom_re_ranking"

.field public static final LAST_ACTIVITY_TIME_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

.field public static final LAST_RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

.field public static final RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

.field public static final SCORED_PROCESS_RECORD_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;


# instance fields
.field public mLruPositions:[I

.field mLruWeight:F

.field public final mOnFlagsChangedListener:Lcom/android/server/am/CacheOomRanker$1;

.field public final mPhenotypeFlagLock:Ljava/lang/Object;

.field mPreserveTopNApps:I

.field public final mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

.field public final mProfilerLock:Ljava/lang/Object;

.field mRssUpdateRateMs:J

.field mRssWeight:F

.field public mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field mUseFrequentRss:Z

.field public mUseOomReRanking:Z

.field mUsesWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/am/CacheOomRanker;->SCORED_PROCESS_RECORD_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/am/CacheOomRanker;->CACHE_USE_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/android/server/am/CacheOomRanker;->RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_RSS_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-direct {v0, v1}, Lcom/android/server/am/CacheOomRanker$RssComparator;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/android/server/am/CacheOomRanker;->LAST_ACTIVITY_TIME_COMPARATOR:Lcom/android/server/am/CacheOomRanker$RssComparator;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CacheOomRanker$ProcessDependencies;)V
    .locals 2

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
    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mPreserveTopNApps:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/server/am/CacheOomRanker;->mUseFrequentRss:Z

    .line 19
    .line 20
    const-wide/16 v0, 0x2710

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssUpdateRateMs:J

    .line 23
    .line 24
    const v0, 0x3eb33333    # 0.35f

    .line 25
    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    .line 28
    .line 29
    const/high16 v0, 0x3f000000    # 0.5f

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    .line 32
    .line 33
    const v0, 0x3e19999a    # 0.15f

    .line 34
    .line 35
    .line 36
    iput v0, p0, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/am/CacheOomRanker$1;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/android/server/am/CacheOomRanker$1;-><init>(Lcom/android/server/am/CacheOomRanker;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Lcom/android/server/am/CacheOomRanker$1;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker;->mProfilerLock:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/am/CacheOomRanker;->mProcessDependencies:Lcom/android/server/am/CacheOomRanker$ProcessDependencies;

    .line 56
    .line 57
    return-void
.end method

.method public static addToScore([Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;F)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    aget-object v1, p0, v0

    .line 6
    .line 7
    iget v2, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 8
    .line 9
    int-to-float v3, v0

    .line 10
    mul-float/2addr v3, p1

    .line 11
    add-float/2addr v3, v2

    .line 12
    iput v3, v1, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;->score:F

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public getNumberToReRank()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length p0, p0

    .line 8
    :goto_0
    return p0
.end method

.method public final updateNumberToReRank()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/CacheOomRanker;->getNumberToReRank()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "oom_re_ranking_number_to_re_rank"

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    const-string v3, "activity_manager"

    .line 11
    .line 12
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    new-array v0, v1, [Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/CacheOomRanker;->mScoredProcessRecords:[Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 24
    .line 25
    array-length v3, v2

    .line 26
    if-ge v0, v3, :cond_0

    .line 27
    .line 28
    new-instance v3, Lcom/android/server/am/CacheOomRanker$RankedProcessRecord;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    aput-object v3, v2, v0

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-array v0, v1, [I

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/am/CacheOomRanker;->mLruPositions:[I

    .line 41
    .line 42
    :cond_1
    return-void
.end method
