.class public final synthetic Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v1, p1

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-object p1, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    :goto_0
    return p0
.end method
