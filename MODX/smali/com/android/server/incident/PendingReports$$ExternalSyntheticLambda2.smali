.class public final synthetic Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:Landroid/os/IIncidentAuthListener;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/incident/PendingReports;

    .line 6
    iput-object p2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$1:Landroid/os/IIncidentAuthListener;

    .line 8
    iput-object p3, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    .line 10
    iput p4, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/incident/PendingReports;

    .line 3
    iget-object v1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$1:Landroid/os/IIncidentAuthListener;

    .line 5
    iget-object v2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    .line 7
    iget p0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$3:I

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    const-string v4, "Got death notification listener="

    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    const-string v4, "IncidentCompanionService"

    .line 28
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 34
    return-void
.end method
