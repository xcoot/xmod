.class public final synthetic Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->f$0:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->f$0:J

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    .line 9
    .line 10
    iput-wide v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->f$0:J

    .line 14
    .line 15
    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    .line 16
    .line 17
    iput-wide v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->f$0:J

    .line 21
    .line 22
    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    .line 23
    .line 24
    iput-wide v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
