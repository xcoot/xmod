.class public final synthetic Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/Task;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/wm/Task;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-wide v0, p2, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    .line 11
    .line 12
    iget-wide p0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    .line 13
    .line 14
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    iget-wide v0, p2, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    .line 20
    .line 21
    iget-wide p0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    .line 22
    .line 23
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
