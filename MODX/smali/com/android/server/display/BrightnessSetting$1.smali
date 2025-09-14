.class public final Lcom/android/server/display/BrightnessSetting$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessSetting;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessSetting;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/BrightnessSetting$1;->this$0:Lcom/android/server/display/BrightnessSetting;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 8
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    move-result p1

    .line 12
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting$1;->this$0:Lcom/android/server/display/BrightnessSetting;

    .line 14
    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 32
    check-cast v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    move-result-object v1

    .line 38
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 40
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 42
    const/16 v3, 0x8

    .line 44
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 47
    move-result-object v1

    .line 48
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    move-result-wide v3

    .line 57
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method
