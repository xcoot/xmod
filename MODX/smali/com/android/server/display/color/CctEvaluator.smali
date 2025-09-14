.class public final Lcom/android/server/display/color/CctEvaluator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final mIndexOffset:I

.field final mSteppedCctsAtOffsetCcts:[I

.field final mStepsAtOffsetCcts:[I


# direct methods
.method public constructor <init>(II[I[I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sub-int/2addr p2, p1

    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p2, v0

    .line 7
    new-array v1, p2, [I

    .line 9
    iput-object v1, p0, Lcom/android/server/display/color/CctEvaluator;->mStepsAtOffsetCcts:[I

    .line 11
    new-array v2, p2, [I

    .line 13
    iput-object v2, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    .line 15
    iput p1, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    .line 17
    array-length p1, p3

    .line 18
    array-length v2, p3

    .line 19
    array-length v3, p4

    .line 20
    const/4 v4, 0x0

    .line 21
    const-string v5, "CctEvaluator"

    .line 23
    if-eq v2, v3, :cond_0

    .line 25
    const-string p1, "Parallel arrays cctRangeMinimums and steps are different lengths; setting step of 1"

    .line 27
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 33
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    .line 35
    array-length p2, p1

    .line 36
    if-ge v4, p2, :cond_5

    .line 38
    iget p2, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    .line 40
    add-int/2addr p2, v4

    .line 41
    aput p2, p1, v4

    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    if-nez p1, :cond_1

    .line 48
    const-string p1, "No cctRangeMinimums or steps are set; setting step of 1"

    .line 50
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 56
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    .line 58
    array-length p2, p1

    .line 59
    if-ge v4, p2, :cond_5

    .line 61
    iget p2, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    .line 63
    add-int/2addr p2, v4

    .line 64
    aput p2, p1, v4

    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/high16 v0, -0x80000000

    .line 71
    move v2, v0

    .line 72
    move v1, v4

    .line 73
    :goto_2
    if-ge v4, p2, :cond_5

    .line 75
    iget v3, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    .line 77
    add-int/2addr v3, v4

    .line 78
    add-int/lit8 v5, v1, 0x1

    .line 80
    :goto_3
    if-ge v5, p1, :cond_2

    .line 82
    aget v6, p3, v5

    .line 84
    if-lt v3, v6, :cond_2

    .line 86
    add-int/lit8 v1, v5, 0x1

    .line 88
    move v7, v5

    .line 89
    move v5, v1

    .line 90
    move v1, v7

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/color/CctEvaluator;->mStepsAtOffsetCcts:[I

    .line 94
    aget v6, p4, v1

    .line 96
    aput v6, v5, v4

    .line 98
    if-eq v2, v0, :cond_3

    .line 100
    sub-int v5, v2, v3

    .line 102
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 105
    move-result v5

    .line 106
    aget v6, p4, v1

    .line 108
    if-lt v5, v6, :cond_4

    .line 110
    :cond_3
    move v2, v3

    .line 111
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    .line 113
    aput v2, v3, v4

    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 3
    check-cast p3, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 13
    move-result p3

    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p2

    .line 18
    sub-int/2addr p3, p2

    .line 19
    int-to-float p2, p3

    .line 20
    mul-float/2addr p1, p2

    .line 21
    add-float/2addr p1, v0

    .line 22
    float-to-int p1, p1

    .line 23
    iget p2, p0, Lcom/android/server/display/color/CctEvaluator;->mIndexOffset:I

    .line 25
    sub-int p2, p1, p2

    .line 27
    if-ltz p2, :cond_1

    .line 29
    iget-object p0, p0, Lcom/android/server/display/color/CctEvaluator;->mSteppedCctsAtOffsetCcts:[I

    .line 31
    array-length p3, p0

    .line 32
    if-lt p2, p3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    aget p0, p0, p2

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo p3, "steppedCctValueAt: returning same since invalid requested index="

    .line 47
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    const-string p2, "CctEvaluator"

    .line 59
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p0

    .line 66
    :goto_1
    return-object p0
.end method
