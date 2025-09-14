.class public final synthetic Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/MultiStateStats;

.field public final synthetic f$1:[J

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Landroid/util/IndentingPrintWriter;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:[Lcom/android/server/power/stats/MultiStateStats$States;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/MultiStateStats;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$1:[J

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$2:[Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$3:Landroid/util/IndentingPrintWriter;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$5:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$7:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/MultiStateStats;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$1:[J

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$2:[Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$3:Landroid/util/IndentingPrintWriter;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$5:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$6:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;->f$7:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 16
    .line 17
    check-cast p1, [I

    .line 18
    .line 19
    iget-object v7, v0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/MultiStateStats$Factory;->getSerialState([I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v7, v1, v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    .line 28
    .line 29
    .line 30
    array-length v0, v1

    .line 31
    const/4 v7, 0x0

    .line 32
    move v8, v7

    .line 33
    :goto_0
    if-ge v8, v0, :cond_6

    .line 34
    .line 35
    aget-wide v9, v1, v8

    .line 36
    .line 37
    const-wide/16 v11, 0x0

    .line 38
    .line 39
    cmp-long v9, v9, v11

    .line 40
    .line 41
    if-eqz v9, :cond_5

    .line 42
    .line 43
    aget-boolean v0, v2, v7

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 51
    .line 52
    .line 53
    :cond_0
    aput-boolean v7, v2, v7

    .line 54
    .line 55
    const-string v0, "("

    .line 56
    .line 57
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v2, 0x1

    .line 62
    move v4, v7

    .line 63
    :goto_1
    array-length v8, p1

    .line 64
    const-string v9, " "

    .line 65
    .line 66
    if-ge v4, v8, :cond_3

    .line 67
    .line 68
    aget-object v8, v5, v4

    .line 69
    .line 70
    iget-boolean v8, v8, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 71
    .line 72
    if-eqz v8, :cond_2

    .line 73
    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_1
    aget-object v2, v5, v4

    .line 80
    .line 81
    iget-object v2, v2, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 82
    .line 83
    aget v8, p1, v4

    .line 84
    .line 85
    aget-object v2, v2, v8

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move v2, v7

    .line 91
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    if-eqz v6, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_4
    const-string p1, ") "

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    :goto_2
    return-void
.end method
