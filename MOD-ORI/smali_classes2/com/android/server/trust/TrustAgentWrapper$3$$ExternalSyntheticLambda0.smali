.class public final synthetic Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/trust/TrustAgentWrapper$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/trust/TrustAgentWrapper$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/trust/TrustAgentWrapper$3;

    .line 2
    .line 3
    check-cast p1, Landroid/service/trust/GrantTrustResult;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/service/trust/GrantTrustResult;->getStatus()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$3;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide/16 v2, 0x3a98

    .line 24
    .line 25
    add-long v6, v0, v2

    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 28
    .line 29
    new-instance v9, Lcom/android/server/trust/TrustAgentWrapper$6;

    .line 30
    .line 31
    invoke-direct {v9, p0}, Lcom/android/server/trust/TrustAgentWrapper$6;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    const/4 v5, 0x2

    .line 39
    const-string v8, "TrustAgentWrapper"

    .line 40
    .line 41
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
