.class public final Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public hasReachableClient:Z

.field public mArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    .line 3
    .line 4
    move-object v3, p2

    .line 5
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 8
    .line 9
    iget-object v2, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    iget-object v6, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    .line 12
    .line 13
    iget-wide v4, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    .line 14
    .line 15
    iget v8, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 16
    .line 17
    iget-object p1, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 18
    .line 19
    iget-boolean p1, p1, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/android/server/am/Flags;->skipUnimportantConnections()Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionIgnoringReachableClientsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-interface/range {v0 .. v8}, Lcom/android/server/am/OomAdjusterModernImpl$Connection;->computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZI)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
