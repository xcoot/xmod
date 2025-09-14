.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/SafeActivityOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/wm/SafeActivityOptions;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 4
    .line 5
    iget v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$2:I

    .line 6
    .line 7
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/wm/SafeActivityOptions;

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 12
    .line 13
    iget v3, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    iget v4, v1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 17
    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;Z)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method
