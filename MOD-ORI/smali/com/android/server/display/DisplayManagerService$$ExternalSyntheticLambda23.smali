.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Lcom/android/server/display/LogicalDisplay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/display/LogicalDisplay;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/display/LogicalDisplay;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    if-eq p0, v2, :cond_0

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :cond_1
    :goto_0
    if-eq v2, v3, :cond_2

    .line 25
    .line 26
    iget-object p0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 33
    .line 34
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 37
    .line 38
    .line 39
    :cond_2
    monitor-exit v1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda23;->f$1:Lcom/android/server/display/LogicalDisplay;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    const/4 v2, 0x4

    .line 52
    :try_start_1
    invoke-virtual {v0, p0, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    throw p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
