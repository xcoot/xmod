.class public final synthetic Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 4
    .line 5
    iget v1, v0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mCurrentUserId:I

    .line 6
    .line 7
    const/16 v2, -0x2710

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v1, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mCurrentUserId:I

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->setCurrentUserHandle(Landroid/os/UserHandle;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
