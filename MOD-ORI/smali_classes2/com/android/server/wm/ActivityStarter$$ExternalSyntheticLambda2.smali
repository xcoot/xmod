.class public final synthetic Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStarter;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivityStarter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivityStarter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WmScreenshotController;->invalidateForScreenShot(Lcom/android/server/wm/DisplayContent;Z)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
