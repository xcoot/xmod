.class public final Lcom/android/server/display/DensityMapping;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;


# direct methods
.method public constructor <init>([Lcom/android/server/display/DensityMapping$Entry;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/DensityMapping$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 16
    iput-object p1, p0, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    .line 18
    const/4 p0, 0x1

    .line 19
    :goto_0
    array-length v0, p1

    .line 20
    if-ge p0, v0, :cond_2

    .line 22
    add-int/lit8 v0, p0, -0x1

    .line 24
    aget-object v0, p1, v0

    .line 26
    aget-object v1, p1, p0

    .line 28
    iget v2, v0, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    .line 30
    iget v3, v1, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    .line 32
    const-string v4, ", "

    .line 34
    if-eq v2, v3, :cond_1

    .line 36
    iget v2, v0, Lcom/android/server/display/DensityMapping$Entry;->density:I

    .line 38
    iget v3, v1, Lcom/android/server/display/DensityMapping$Entry;->density:I

    .line 40
    if-gt v2, v3, :cond_0

    .line 42
    add-int/lit8 p0, p0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "Found two entries in the density mapping with increasing diagonal but decreasing density: "

    .line 51
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    const-string v2, "Found two entries in the density mapping with the same diagonal: "

    .line 77
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DensityMapping{mDensityMappingEntries="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    .line 10
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const/16 p0, 0x7d

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
