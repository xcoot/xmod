.class public final Lcom/android/server/people/data/EventIndex;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY:Lcom/android/server/people/data/EventIndex;

.field public static final TIME_SLOT_FACTORIES:Ljava/util/List;


# instance fields
.field public final mEventBitmaps:[J

.field public final mInjector:Lcom/android/server/people/data/EventIndex$Injector;

.field public mLastUpdatedTime:J

.field public final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/people/data/EventIndex;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Ljava/util/function/Function;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v2}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    new-instance v1, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-direct {v1, v2}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    aput-object v1, v0, v2

    .line 37
    .line 38
    new-instance v1, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    invoke-direct {v1, v2}, Lcom/android/server/people/data/EventIndex$$ExternalSyntheticLambda0;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    aput-object v1, v0, v2

    .line 46
    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/people/data/EventIndex$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/EventIndex$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/EventIndex$Injector;)V
    .locals 3

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    const/4 p1, 0x4

    .line 9
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 10
    iput-wide p3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/EventIndex;)V
    .locals 4

    .line 2
    iget-object v0, p1, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    iget-object v1, p1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    iget-wide v2, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    return-void
.end method

.method public static combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 2
    .line 3
    iget-wide v2, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, p1

    .line 12
    :goto_0
    if-ltz v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object p0, p1

    .line 16
    :goto_1
    new-instance p1, Lcom/android/server/people/data/EventIndex;

    .line 17
    .line 18
    invoke-direct {p1, v1}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex;)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/android/server/people/data/EventIndex;->updateEventBitmaps(J)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_2
    const/4 v1, 0x4

    .line 28
    if-ge v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 31
    .line 32
    aget-wide v2, v1, v0

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 35
    .line 36
    aget-wide v4, v4, v0

    .line 37
    .line 38
    or-long/2addr v2, v4

    .line 39
    aput-wide v2, v1, v0

    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    return-object p1
.end method

.method public static combineTimeSlotLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v1, v3, :cond_2

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    check-cast v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v2, v4, :cond_2

    .line 22
    .line 23
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroid/util/Range;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/util/Range;

    .line 34
    .line 35
    invoke-virtual {v4, v3}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    cmp-long v5, v5, v7

    .line 70
    .line 71
    if-gez v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v1, v3, :cond_3

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    check-cast p1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-ge v2, p0, :cond_4

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-virtual {p1, v2, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static diffTimeSlots(IJJ)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/function/Function;

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/util/Range;

    .line 18
    .line 19
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/util/Range;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide p2

    .line 39
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    sub-long/2addr p2, v0

    .line 50
    invoke-static {p1}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    div-long/2addr p2, p0

    .line 55
    long-to-int p0, p2

    .line 56
    return p0
.end method

.method public static getDuration(Landroid/util/Range;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    return-wide v0
.end method

.method public static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventIndex;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/4 v5, -0x1

    .line 12
    if-eq v4, v5, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v4, v5, :cond_1

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-eq v4, v5, :cond_0

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v5, "Could not read undefined field: "

    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "EventIndex"

    .line 43
    .line 44
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-wide v2, 0x10300000002L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .line 59
    .line 60
    const-wide v5, 0x20300000001L

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    aput-wide v5, v0, v1

    .line 70
    .line 71
    move v1, v4

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p0, Lcom/android/server/people/data/EventIndex;

    .line 74
    .line 75
    new-instance v1, Lcom/android/server/people/data/EventIndex$Injector;

    .line 76
    .line 77
    invoke-direct {v1}, Lcom/android/server/people/data/EventIndex$Injector;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/people/data/EventIndex;-><init>(Lcom/android/server/people/data/EventIndex$Injector;[JJ)V

    .line 81
    .line 82
    .line 83
    return-object p0
.end method

.method public static toEpochMilli(Ljava/time/LocalDateTime;)J
    .locals 2

    .line 1
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public static toLocalDateTime(J)Ljava/time/LocalDateTime;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final addEvent(J)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    .line 2
    .line 3
    if-eq v0, p0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mInjector:Lcom/android/server/people/data/EventIndex$Injector;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/android/server/people/data/EventIndex;->updateEventBitmaps(J)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    const/4 v4, 0x4

    .line 22
    if-ge v3, v4, :cond_1

    .line 23
    .line 24
    invoke-static {v3, p1, p2, v1, v2}, Lcom/android/server/people/data/EventIndex;->diffTimeSlots(IJJ)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/16 v5, 0x40

    .line 29
    .line 30
    if-ge v4, v5, :cond_0

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 33
    .line 34
    aget-wide v6, v5, v3

    .line 35
    .line 36
    const-wide/16 v8, 0x1

    .line 37
    .line 38
    shl-long/2addr v8, v4

    .line 39
    or-long/2addr v6, v8

    .line 40
    aput-wide v6, v5, v3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "EMPTY instance is immutable"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/people/data/EventIndex;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/people/data/EventIndex;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 24
    .line 25
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :goto_0
    return v0
.end method

.method public final getActiveTimeSlots()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/4 v3, 0x4

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlotsForType(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v0, v3}, Lcom/android/server/people/data/EventIndex;->combineTimeSlotLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final getActiveTimeSlotsForType(I)Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 2
    .line 3
    aget-wide v0, v0, p1

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/function/Function;

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/util/Range;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Long;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    cmp-long v7, v0, v5

    .line 47
    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-lez v7, :cond_1

    .line 55
    .line 56
    int-to-long v8, v7

    .line 57
    mul-long/2addr v8, p0

    .line 58
    sub-long/2addr v2, v8

    .line 59
    ushr-long/2addr v0, v7

    .line 60
    :cond_1
    cmp-long v5, v0, v5

    .line 61
    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    add-long v6, v2, p0

    .line 69
    .line 70
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    sub-long/2addr v2, p0

    .line 82
    const/4 v5, 0x1

    .line 83
    ushr-long/2addr v0, v5

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-object v4
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 8
    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final isEmpty()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    const/4 v3, 0x4

    .line 7
    if-ge v2, v3, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 10
    .line 11
    aget-wide v3, v3, v2

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v3, v3, v5

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    monitor-exit v0

    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EventIndex {perDayEventBitmap=0b"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 10
    .line 11
    aget-wide v3, v2, v1

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", perFourHoursEventBitmap=0b"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aget-wide v3, v2, v1

    .line 27
    .line 28
    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", perHourEventBitmap=0b"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    aget-wide v3, v2, v1

    .line 42
    .line 43
    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", perTwoMinutesEventBitmap=0b"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    aget-wide v1, v2, v1

    .line 57
    .line 58
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", lastUpdatedTime="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 71
    .line 72
    .line 73
    iget-wide v2, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 74
    .line 75
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string/jumbo p0, "}"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method

.method public final updateEventBitmaps(J)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    iget-object v3, p0, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget-wide v4, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 9
    .line 10
    invoke-static {v1, v4, v5, p1, p2}, Lcom/android/server/people/data/EventIndex;->diffTimeSlots(IJJ)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v4, 0x40

    .line 15
    .line 16
    if-ge v2, v4, :cond_0

    .line 17
    .line 18
    aget-wide v4, v3, v1

    .line 19
    .line 20
    shl-long/2addr v4, v2

    .line 21
    aput-wide v4, v3, v1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    aput-wide v4, v3, v1

    .line 27
    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    aget-wide v1, v3, v0

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    shl-long/2addr v1, v4

    .line 35
    aput-wide v1, v3, v0

    .line 36
    .line 37
    ushr-long/2addr v1, v4

    .line 38
    aput-wide v1, v3, v0

    .line 39
    .line 40
    iput-wide p1, p0, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 41
    .line 42
    return-void
.end method
