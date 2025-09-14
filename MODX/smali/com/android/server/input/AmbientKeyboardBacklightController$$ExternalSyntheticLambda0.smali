.class public final synthetic Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/AmbientKeyboardBacklightController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/AmbientKeyboardBacklightController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/AmbientKeyboardBacklightController;

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/AmbientKeyboardBacklightController;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 11
    if-eq v0, v1, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->handleDisplayChange()V

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    check-cast p1, Ljava/lang/Integer;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p1

    .line 27
    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

    .line 50
    iget-object v2, v2, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 52
    invoke-virtual {v2, p1}, Lcom/android/server/input/KeyboardBacklightController;->handleAmbientLightValueChanged(I)V

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    monitor-exit v0

    .line 59
    :goto_1
    return v1

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method
