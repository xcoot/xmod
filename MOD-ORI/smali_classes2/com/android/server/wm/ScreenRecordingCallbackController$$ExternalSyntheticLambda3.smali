.class public final synthetic Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;->f$1:Landroid/util/ArraySet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;->f$1:Landroid/util/ArraySet;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
