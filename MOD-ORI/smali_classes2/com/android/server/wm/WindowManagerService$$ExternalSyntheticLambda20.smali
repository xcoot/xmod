.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$2:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$2:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$3:Z

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->f$4:Z

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mImeTargetChangeListener:Lcom/android/server/wm/ImeTargetChangeListener;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x3

    .line 23
    if-eq v2, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    iget-object p0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeLayeringOverlay:Landroid/os/IBinder;

    .line 30
    .line 31
    return-void
.end method
