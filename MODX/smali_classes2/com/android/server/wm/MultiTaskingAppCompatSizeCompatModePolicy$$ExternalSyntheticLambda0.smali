.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;->f$0:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;->f$1:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;->f$0:Z

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasAppCompatDisplayInsetsWithoutInheritance()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatMode(ZZ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
