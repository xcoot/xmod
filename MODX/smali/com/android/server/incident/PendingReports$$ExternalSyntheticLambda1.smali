.class public final synthetic Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:Landroid/os/IIncidentAuthListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/incident/PendingReports;

    .line 6
    iput-object p2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;->f$1:Landroid/os/IIncidentAuthListener;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/incident/PendingReports;

    .line 3
    iget-object p0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;->f$1:Landroid/os/IIncidentAuthListener;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    .line 15
    move-result-object v2

    .line 16
    const/16 v3, -0x2710

    .line 18
    if-eq v1, v3, :cond_0

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 25
    :cond_0
    return-void
.end method
