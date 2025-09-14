.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;
.super Landroid/app/usage/NetworkStatsManager$UsageCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/usage/NetworkStatsManager$UsageCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onThresholdReached(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
