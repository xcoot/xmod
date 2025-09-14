.class final Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mRandom:Ljava/util/Random;


# instance fields
.field public final mAnonMemFreedKBs:J

.field public final mCpuTimeMillis:F

.field public final mDeltaAnonRssKBs:J

.field public final mOomAdj:I

.field public final mOomAdjReason:I

.field public final mOrigAnonRss:J

.field public final mProcState:I

.field public final mProcessName:Ljava/lang/String;

.field public final mRssAfterCompaction:[J

.field public final mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public final mUid:I

.field public final mZramConsumedKBs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRandom:Ljava/util/Random;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRssAfterCompaction:[J

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcessName:Ljava/lang/String;

    .line 13
    .line 14
    move/from16 v1, p17

    .line 15
    .line 16
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mUid:I

    .line 17
    .line 18
    move-wide v1, p4

    .line 19
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mDeltaAnonRssKBs:J

    .line 20
    .line 21
    move-wide v1, p6

    .line 22
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mZramConsumedKBs:J

    .line 23
    .line 24
    move-wide v1, p8

    .line 25
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mAnonMemFreedKBs:J

    .line 26
    .line 27
    move-wide v1, p12

    .line 28
    long-to-float v1, v1

    .line 29
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mCpuTimeMillis:F

    .line 30
    .line 31
    move-wide v1, p10

    .line 32
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOrigAnonRss:J

    .line 33
    .line 34
    move/from16 v1, p14

    .line 35
    .line 36
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcState:I

    .line 37
    .line 38
    move/from16 v1, p15

    .line 39
    .line 40
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdj:I

    .line 41
    .line 42
    move/from16 v1, p16

    .line 43
    .line 44
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdjReason:I

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "    ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcessName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mDeltaAnonRssKBs:J

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mZramConsumedKBs:J

    .line 39
    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mAnonMemFreedKBs:J

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    long-to-double v4, v2

    .line 55
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOrigAnonRss:J

    .line 56
    .line 57
    long-to-double v6, v6

    .line 58
    div-double/2addr v4, v6

    .line 59
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v4, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mCpuTimeMillis:F

    .line 66
    .line 67
    float-to-double v4, v4

    .line 68
    long-to-double v2, v2

    .line 69
    div-double/2addr v4, v2

    .line 70
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 71
    .line 72
    mul-double/2addr v4, v2

    .line 73
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcState:I

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdj:I

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdjReason:I

    .line 96
    .line 97
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p0, ")"

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final sendStat()V
    .locals 13

    .line 1
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRandom:Ljava/util/Random;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x3dcccccd    # 0.1f

    .line 8
    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    iget-wide v10, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOrigAnonRss:J

    .line 15
    .line 16
    iget v12, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdjReason:I

    .line 17
    .line 18
    const/16 v1, 0x1eb

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mUid:I

    .line 21
    .line 22
    iget v3, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcState:I

    .line 23
    .line 24
    iget v4, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdj:I

    .line 25
    .line 26
    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mDeltaAnonRssKBs:J

    .line 27
    .line 28
    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mZramConsumedKBs:J

    .line 29
    .line 30
    iget v9, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mCpuTimeMillis:F

    .line 31
    .line 32
    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJJFJI)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
