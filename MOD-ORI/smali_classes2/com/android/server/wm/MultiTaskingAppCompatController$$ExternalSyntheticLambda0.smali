.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatController;ILjava/util/List;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$3:Z

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lcom/android/server/wm/Task;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget p1, v5, Lcom/android/server/wm/Task;->mUserId:I

    .line 18
    .line 19
    if-ne v1, p1, :cond_1

    .line 20
    .line 21
    iget-object p1, v5, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, v1}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 54
    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    const-string p1, "MultiTaskingAppCompat:"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_0
    move-object v8, p0

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v11, -0x1

    .line 66
    const/4 v6, 0x1

    .line 67
    const/4 v7, 0x0

    .line 68
    const/16 v10, 0x3e8

    .line 69
    .line 70
    const/4 v12, 0x0

    .line 71
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method
