.class public final synthetic Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
