.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyAppSaturation([F[F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/wm/ActivityRecord;[F[F)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
