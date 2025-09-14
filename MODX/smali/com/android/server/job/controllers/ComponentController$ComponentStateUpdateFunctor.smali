.class public final Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mChangedJobs:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 3
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/ComponentController;->updateComponentEnabledStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 13
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    return-void
.end method
