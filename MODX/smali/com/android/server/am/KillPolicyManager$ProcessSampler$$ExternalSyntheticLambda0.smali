.class public final synthetic Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    iget p0, p1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    .line 10
    if-ltz p0, :cond_1

    .line 12
    const/16 p1, 0x11

    .line 14
    if-lt p0, p1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ADJ_PRIORITY_BY_LABEL_INDEX:[I

    .line 19
    aget p0, p1, p0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/16 p0, 0x3e8

    .line 24
    :goto_1
    return p0

    .line 25
    :pswitch_0
    iget p0, p1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    .line 27
    const/16 p1, 0x11

    .line 29
    if-ltz p0, :cond_3

    .line 31
    if-lt p0, p1, :cond_2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    sget-object v0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ALWAYS_RUNNING_ADJ_BY_LABEL_INDEX:[Z

    .line 36
    aget-boolean v0, v0, p0

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 40
    :goto_3
    const/16 v1, 0x3e8

    .line 42
    if-eqz v0, :cond_5

    .line 44
    if-ltz p0, :cond_5

    .line 46
    if-lt p0, p1, :cond_4

    .line 48
    goto :goto_4

    .line 49
    :cond_4
    sget-object p1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ADJ_PRIORITY_BY_LABEL_INDEX:[I

    .line 51
    aget v1, p1, p0

    .line 53
    :cond_5
    :goto_4
    return v1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
