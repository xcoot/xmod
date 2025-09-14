.class public final synthetic Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DragState;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;FFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DragState;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$2:F

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DragState;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$1:F

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$2:F

    .line 6
    .line 7
    iget-boolean v4, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;->f$3:Z

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
