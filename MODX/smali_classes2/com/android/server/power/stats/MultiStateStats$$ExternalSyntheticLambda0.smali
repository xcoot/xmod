.class public final synthetic Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/MultiStateStats;

.field public final synthetic f$1:[J

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/MultiStateStats;Lcom/android/modules/utils/TypedXmlSerializer;[J)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/MultiStateStats;

    iput-object p2, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$1:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/MultiStateStats;[JLjava/lang/StringBuilder;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/MultiStateStats;

    iput-object p2, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$1:[J

    iput-object p3, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/MultiStateStats;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/android/modules/utils/TypedXmlSerializer;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$1:[J

    .line 13
    .line 14
    check-cast p1, [I

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/power/stats/MultiStateStats;->writeXmlForStates(Lcom/android/modules/utils/TypedXmlSerializer;[I[J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/MultiStateStats;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$1:[J

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/power/stats/MultiStateStats$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    check-cast p1, [I

    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/power/stats/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/power/stats/MultiStateStats;->mFactory:Lcom/android/server/power/stats/MultiStateStats$Factory;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/MultiStateStats$Factory;->getSerialState([I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v2, v1, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    .line 49
    .line 50
    .line 51
    array-length v2, v1

    .line 52
    const/4 v3, 0x0

    .line 53
    move v4, v3

    .line 54
    :goto_0
    if-ge v4, v2, :cond_5

    .line 55
    .line 56
    aget-wide v5, v1, v4

    .line 57
    .line 58
    const-wide/16 v7, 0x0

    .line 59
    .line 60
    cmp-long v5, v5, v7

    .line 61
    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 69
    .line 70
    const-string v2, "\n"

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_0
    const-string v2, "("

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    move v4, v3

    .line 82
    :goto_1
    array-length v5, p1

    .line 83
    if-ge v4, v5, :cond_3

    .line 84
    .line 85
    iget-object v5, v0, Lcom/android/server/power/stats/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/MultiStateStats$States;

    .line 86
    .line 87
    aget-object v6, v5, v4

    .line 88
    .line 89
    iget-boolean v6, v6, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 90
    .line 91
    if-eqz v6, :cond_2

    .line 92
    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    const-string v2, " "

    .line 96
    .line 97
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :cond_1
    aget-object v2, v5, v4

    .line 101
    .line 102
    iget-object v2, v2, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 103
    .line 104
    aget v5, p1, v4

    .line 105
    .line 106
    aget-object v2, v2, v5

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move v2, v3

    .line 112
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    const-string p1, ") "

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    :goto_2
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
