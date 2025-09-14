.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/MultiTaskingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;->f$1:Lcom/android/server/wm/WindowProcessController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/wm/MultiTaskingController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;->f$1:Lcom/android/server/wm/WindowProcessController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 12
    .line 13
    const-string v2, "embedded-package-changed"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
