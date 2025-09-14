.class public final Lcom/android/server/display/mode/SizeVote;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mHeight:I

.field public final mMinHeight:I

.field public final mMinWidth:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/display/mode/SizeVote;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/display/mode/SizeVote;

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    .line 15
    .line 16
    if-ne v3, v1, :cond_1

    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    .line 19
    .line 20
    iget v3, p1, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    .line 21
    .line 22
    if-ne v1, v3, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    .line 25
    .line 26
    iget v3, p1, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    .line 27
    .line 28
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    .line 31
    .line 32
    iget p1, p1, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    .line 33
    .line 34
    if-ne p0, p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_0
    return v0

    .line 39
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SizeVote{ mWidth="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mHeight="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mMinWidth="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mMinHeight="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    .line 39
    .line 40
    const-string v1, " }"

    .line 41
    .line 42
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public final updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    .line 6
    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    iget v2, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    .line 14
    .line 15
    const/4 v4, -0x1

    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    iget v5, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 19
    .line 20
    if-ne v5, v4, :cond_0

    .line 21
    .line 22
    iput v1, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 23
    .line 24
    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 25
    .line 26
    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 27
    .line 28
    iput v3, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-boolean v4, p1, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    .line 40
    .line 41
    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 42
    .line 43
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    .line 48
    .line 49
    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 50
    .line 51
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    .line 56
    .line 57
    iget p0, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    .line 58
    .line 59
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method
