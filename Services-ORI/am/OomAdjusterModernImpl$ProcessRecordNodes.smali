.class public final Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFirstPopulatedSlot:I

.field public final mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

.field public final mSlotFunction:Ljava/util/function/ToIntFunction;

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 6
    .line 7
    iput p2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-direct {p2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    invoke-direct {p2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-direct {p2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    .line 57
    .line 58
    :goto_0
    new-array v0, p3, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    .line 61
    .line 62
    :goto_1
    if-ge p1, p3, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    .line 65
    .line 66
    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    .line 67
    .line 68
    invoke-direct {v1, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;-><init>(Ljava/util/function/ToIntFunction;)V

    .line 69
    .line 70
    .line 71
    aput-object v1, v0, p1

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-array p1, p3, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 79
    .line 80
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final offer(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 14
    .line 15
    if-ge p1, v1, :cond_0

    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    .line 23
    .line 24
    aget-object p0, p0, p1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 29
    .line 30
    invoke-interface {p1, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 37
    .line 38
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 39
    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 45
    .line 46
    invoke-interface {v2, v3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-le v2, p1, :cond_1

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iput-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 56
    .line 57
    iget-object p0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 58
    .line 59
    iput-object p0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 60
    .line 61
    iget-object p0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 64
    .line 65
    iput-object v0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 66
    .line 67
    return-void
.end method

.method public final poll()Lcom/android/server/am/ProcessRecord;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v3, v2

    .line 6
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 7
    .line 8
    iget v4, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 9
    .line 10
    if-ge v4, v1, :cond_2

    .line 11
    .line 12
    aget-object v3, v0, v4

    .line 13
    .line 14
    iget-object v4, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 15
    .line 16
    iget-object v4, v4, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 19
    .line 20
    if-ne v4, v3, :cond_1

    .line 21
    .line 22
    move-object v3, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    .line 25
    .line 26
    .line 27
    move-object v3, v4

    .line 28
    :goto_1
    if-nez v3, :cond_0

    .line 29
    .line 30
    iget v4, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    iput v4, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-nez v3, :cond_3

    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_3
    iget-object p0, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 41
    .line 42
    return-object p0
.end method

.method public reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-object v2, v1, v0

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->reset()V

    .line 10
    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 17
    .line 18
    aput-object v1, v2, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final unlink(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    move v5, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 18
    .line 19
    sget-object v1, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aget v4, v1, v4

    .line 23
    .line 24
    const/16 v5, 0x11

    .line 25
    .line 26
    if-lt p1, v4, :cond_4

    .line 27
    .line 28
    aget v4, v1, v5

    .line 29
    .line 30
    if-gt p1, v4, :cond_4

    .line 31
    .line 32
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ltz v5, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    neg-int p1, v5

    .line 42
    add-int/lit8 v5, p1, -0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 46
    .line 47
    if-ltz p1, :cond_3

    .line 48
    .line 49
    const/16 v1, 0x13

    .line 50
    .line 51
    if-gt p1, v1, :cond_3

    .line 52
    .line 53
    :goto_0
    move v5, p1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/16 p1, 0x14

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    :goto_1
    if-eq v5, v2, :cond_5

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 61
    .line 62
    aget-object p1, p0, v5

    .line 63
    .line 64
    if-ne p1, v0, :cond_5

    .line 65
    .line 66
    iget-object p1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 67
    .line 68
    aput-object p1, p0, v5

    .line 69
    .line 70
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    .line 71
    .line 72
    .line 73
    return-void
.end method
