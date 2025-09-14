.class public final synthetic Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 13
    .line 14
    sget-object p1, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aget v0, p1, v0

    .line 18
    .line 19
    const/16 v1, 0x11

    .line 20
    .line 21
    if-lt p0, v0, :cond_1

    .line 22
    .line 23
    aget v0, p1, v1

    .line 24
    .line 25
    if-gt p0, v0, :cond_1

    .line 26
    .line 27
    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ltz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    neg-int p0, v1

    .line 37
    add-int/lit8 v1, p0, -0x1

    .line 38
    .line 39
    :cond_1
    :goto_0
    return v1

    .line 40
    :pswitch_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 43
    .line 44
    return p0

    .line 45
    :pswitch_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 46
    .line 47
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 48
    .line 49
    if-ltz p0, :cond_2

    .line 50
    .line 51
    const/16 p1, 0x13

    .line 52
    .line 53
    if-gt p0, p1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/16 p0, 0x14

    .line 57
    .line 58
    :goto_1
    return p0

    .line 59
    :pswitch_3
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 62
    .line 63
    return p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
