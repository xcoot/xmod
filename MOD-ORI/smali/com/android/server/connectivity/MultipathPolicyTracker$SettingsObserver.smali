.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    const-string p0, "MultipathPolicyTracker"

    const-string p1, "Should never be reached."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 2
    const-string/jumbo p1, "network_default_daily_multipath_quota_bytes"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected settings observation: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultipathPolicyTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->-$$Nest$mupdateAllMultipathBudgets(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method
