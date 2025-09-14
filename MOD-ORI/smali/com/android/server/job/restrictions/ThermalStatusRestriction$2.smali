.class public final Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "job_restriction"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    .line 12
    .line 13
    if-eq p2, p1, :cond_2

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mForceRestricted:Z

    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIncreased:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    :cond_1
    invoke-virtual {p2, p0, v0}, Lcom/android/server/job/JobSchedulerService;->onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method
