.class public final Lcom/android/server/trust/TrustAgentWrapper$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$6;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$6;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    .line 5
    .line 6
    return-void
.end method
