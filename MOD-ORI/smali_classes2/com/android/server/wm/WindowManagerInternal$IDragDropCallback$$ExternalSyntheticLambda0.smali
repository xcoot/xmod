.class public final synthetic Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$1:Landroid/view/InputChannel;

.field public final synthetic f$2:Lcom/android/server/wm/DragState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;Lcom/android/server/wm/DragState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/InputManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;->f$1:Landroid/view/InputChannel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/DragState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/InputManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;->f$1:Landroid/view/InputChannel;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/DragState;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Void;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/android/server/input/InputManagerService;->startDragAndDrop(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
