.class public final Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDiffCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

.field public mHasReportedAtLeastOnce:Z

.field public final mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

.field public mLastRealtimeMinutes:I

.field public mLastUptimeMinutes:I

.field public final mTempCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->this$1:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    .line 6
    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 8
    invoke-direct {p1}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 13
    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 15
    invoke-direct {p1}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mTempCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 20
    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 22
    invoke-direct {p1}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mDiffCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    .line 27
    return-void
.end method
