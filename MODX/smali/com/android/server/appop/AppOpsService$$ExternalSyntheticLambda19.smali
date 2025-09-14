.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/SparseLongArray;

.field public final synthetic f$1:Lcom/android/server/appop/AttributedOp;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$0:Landroid/util/SparseLongArray;

    .line 5
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/appop/AttributedOp;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$0:Landroid/util/SparseLongArray;

    .line 8
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/appop/AttributedOp;

    .line 10
    check-cast p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 12
    iget v1, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 14
    const-wide v2, 0x7fffffffffffffffL

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 22
    move-result-wide v2

    .line 23
    const/4 v0, -0x1

    .line 24
    if-eq v1, v0, :cond_0

    .line 26
    iget-wide v0, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 28
    cmp-long v0, v0, v2

    .line 30
    if-ltz v0, :cond_0

    .line 32
    iget-object p1, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$0:Landroid/util/SparseLongArray;

    .line 41
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/appop/AttributedOp;

    .line 43
    check-cast p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 45
    if-nez p1, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget v1, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    .line 50
    const/4 v2, -0x1

    .line 51
    if-eq v1, v2, :cond_2

    .line 53
    const-wide v2, 0x7fffffffffffffffL

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 61
    move-result-wide v2

    .line 62
    iget-wide v4, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    .line 64
    cmp-long v2, v4, v2

    .line 66
    if-gez v2, :cond_2

    .line 68
    invoke-virtual {v0, v1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 71
    :cond_2
    iget-object p1, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 77
    :goto_0
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
