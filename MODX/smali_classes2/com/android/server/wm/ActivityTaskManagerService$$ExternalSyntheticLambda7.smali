.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/graphics/Rect;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$3:Landroid/graphics/Rect;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$3:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/wm/Transition;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo p1, "resizeTask not allowed on task="

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "ActivityTaskManager"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->abort()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {p1, v3, v2, v4, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 54
    .line 55
    .line 56
    iget-object p1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 61
    .line 62
    .line 63
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$4:I

    .line 64
    .line 65
    invoke-virtual {v2, p0, v0}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x1

    .line 69
    invoke-virtual {v3, v2, p0}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method
