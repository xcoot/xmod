.class public final synthetic Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioner;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskPositioner;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskPositioner;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {v1, v0, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
