.class public final synthetic Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashSet;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;->f$3:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;

    .line 24
    .line 25
    invoke-interface {v3, v1, v2, p0}, Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;->onTransientSystemBarsVisibilityChanged(IZZ)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
