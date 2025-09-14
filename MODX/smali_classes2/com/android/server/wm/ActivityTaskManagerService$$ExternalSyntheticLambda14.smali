.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;->f$2:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;->f$0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;->f$2:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->onOverridesChangedIfNeededInTask(Lcom/android/server/wm/Task;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
