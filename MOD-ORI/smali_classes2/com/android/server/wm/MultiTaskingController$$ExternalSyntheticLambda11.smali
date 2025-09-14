.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/MultiTaskingController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$3:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/MultiTaskingController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;->f$3:Ljava/util/ArrayList;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/Task;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    .line 16
    .line 17
    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
