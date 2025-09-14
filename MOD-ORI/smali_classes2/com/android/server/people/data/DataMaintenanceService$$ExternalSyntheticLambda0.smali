.class public final synthetic Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataMaintenanceService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataMaintenanceService;ILandroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataMaintenanceService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$2:Landroid/app/job/JobParameters;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataMaintenanceService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;->f$2:Landroid/app/job/JobParameters;

    .line 6
    .line 7
    sget v2, Lcom/android/server/people/data/DataMaintenanceService;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-class v2, Lcom/android/server/people/PeopleServiceInternal;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/people/PeopleServiceInternal;

    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v3}, Lcom/android/server/people/PeopleServiceInternal;->pruneDataForUser(ILandroid/os/CancellationSignal;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
