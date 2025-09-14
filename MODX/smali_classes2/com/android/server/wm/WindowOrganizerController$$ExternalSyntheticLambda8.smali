.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction$HierarchyOp;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$1:Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$3:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$1:Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 4
    .line 5
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v10, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$3:Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getWhitelistToken()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget v11, p0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    iget v12, p0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    invoke-virtual/range {v2 .. v12}, Landroid/app/ActivityManagerInternal;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;II)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method
