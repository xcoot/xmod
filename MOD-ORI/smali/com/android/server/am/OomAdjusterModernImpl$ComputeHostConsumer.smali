.class public final Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    .line 3
    .line 4
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 7
    .line 8
    iget-object v3, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 9
    .line 10
    iget-object v6, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    iget-wide v4, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 13
    .line 14
    iget v8, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 15
    .line 16
    iget-boolean v7, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mFullUpdate:Z

    .line 17
    .line 18
    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 19
    .line 20
    iget v9, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 21
    .line 22
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/am/Flags;->skipUnimportantConnections()Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    .line 28
    .line 29
    move-object v2, p2

    .line 30
    invoke-interface/range {v0 .. v8}, Lcom/android/server/am/OomAdjusterModernImpl$Connection;->computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZI)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 39
    .line 40
    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 41
    .line 42
    if-eq v1, v9, :cond_0

    .line 43
    .line 44
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 58
    .line 59
    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 60
    .line 61
    if-eq v0, p1, :cond_1

    .line 62
    .line 63
    invoke-static {}, Lcom/android/server/am/Flags;->simplifyProcessTraversal()Z

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    .line 67
    .line 68
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method
