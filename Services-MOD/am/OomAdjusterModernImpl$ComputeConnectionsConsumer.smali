.class public final Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V
    .locals 4

    .line 2
    iget-object v0, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 3
    iget-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/ActiveUids;

    .line 4
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    iget v3, v3, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 5
    iput v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v2, :cond_0

    .line 7
    iget v3, v2, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 9
    invoke-static {v0, p0}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    return-void
.end method
