.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseLongArray;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->f$0:Landroid/util/SparseLongArray;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->f$0:Landroid/util/SparseLongArray;

    .line 5
    check-cast p1, Lcom/android/server/appop/AttributedOp;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;-><init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;I)V

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/server/appop/AttributedOp;->doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;-><init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;I)V

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/server/appop/AttributedOp;->doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V

    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
