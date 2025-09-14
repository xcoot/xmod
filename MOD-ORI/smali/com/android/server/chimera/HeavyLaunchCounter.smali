.class public Lcom/android/server/chimera/HeavyLaunchCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final DELAY:J = 0xa4cb80L


# instance fields
.field private mBuffer:Lcom/android/internal/util/RingBuffer;

.field private mBufferSize:I

.field private mIsHeavyLaunch:Z

.field private mLastStartedUpTime:J

.field mLaunchCounter:I

.field private mLaunchPackageLimit:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x50

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    .line 7
    .line 8
    const/16 v0, 0x19

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    .line 11
    .line 12
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 13
    .line 14
    const-class v1, Landroid/util/Pair;

    .line 15
    .line 16
    iget v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    .line 33
    .line 34
    iput p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    .line 35
    .line 36
    iput p2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iput-wide p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public addLaunch(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    .line 2
    .line 3
    new-instance v1, Landroid/util/Pair;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    add-int/2addr p1, p2

    .line 23
    iput p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-wide v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    .line 30
    .line 31
    sub-long/2addr v0, v2

    .line 32
    const-wide/32 v2, 0xa4cb80

    .line 33
    .line 34
    .line 35
    cmp-long p1, v0, v2

    .line 36
    .line 37
    if-lez p1, :cond_3

    .line 38
    .line 39
    iget p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchCounter:I

    .line 40
    .line 41
    rem-int/lit8 p1, p1, 0xa

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBuffer:Lcom/android/internal/util/RingBuffer;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, [Landroid/util/Pair;

    .line 52
    .line 53
    array-length p3, p1

    .line 54
    iget v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    .line 55
    .line 56
    if-ne p3, v0, :cond_3

    .line 57
    .line 58
    sub-int/2addr v0, p2

    .line 59
    aget-object p3, p1, v0

    .line 60
    .line 61
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p3, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    const/4 p3, 0x0

    .line 70
    aget-object v2, p1, p3

    .line 71
    .line 72
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Ljava/lang/Long;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    sub-long/2addr v0, v2

    .line 81
    const-wide/32 v2, 0x36ee80

    .line 82
    .line 83
    .line 84
    cmp-long v0, v0, v2

    .line 85
    .line 86
    if-gez v0, :cond_2

    .line 87
    .line 88
    new-instance v0, Ljava/util/HashSet;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    .line 92
    .line 93
    move v1, p3

    .line 94
    :goto_0
    iget v2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mBufferSize:I

    .line 95
    .line 96
    if-ge v1, v2, :cond_0

    .line 97
    .line 98
    aget-object v2, p1, v1

    .line 99
    .line 100
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v2, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLaunchPackageLimit:I

    .line 115
    .line 116
    if-lt p1, v0, :cond_1

    .line 117
    .line 118
    iput-boolean p2, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    .line 119
    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide p1

    .line 124
    iget-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mStartTime:J

    .line 125
    .line 126
    sub-long/2addr p1, v0

    .line 127
    iput-wide p1, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    iput-boolean p3, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    iput-boolean p3, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    .line 134
    .line 135
    :cond_3
    :goto_1
    return-void
.end method

.method public getLastStartedUpTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mLastStartedUpTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isHeavyLaunch()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/chimera/HeavyLaunchCounter;->mIsHeavyLaunch:Z

    .line 2
    .line 3
    return p0
.end method
