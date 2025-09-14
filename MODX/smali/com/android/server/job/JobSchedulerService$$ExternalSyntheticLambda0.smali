.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/JobSchedulerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/JobSchedulerService;

    .line 8
    move-object v2, p1

    .line 9
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 11
    const/4 v5, 0x7

    .line 12
    const-string/jumbo v6, "user removed"

    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0xd

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/JobSchedulerService;

    .line 24
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/JobSchedulerService;

    .line 43
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 48
    check-cast v1, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v1

    .line 54
    if-ge v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 58
    check-cast v1, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
