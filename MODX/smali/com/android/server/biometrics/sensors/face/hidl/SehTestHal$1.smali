.class public final Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

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
    const-string/jumbo v1, "face.hidl.SehTestHal"

    .line 6
    const/16 v2, 0x64

    .line 8
    if-eq v0, v2, :cond_0

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    const-string v0, "Unknown message:"

    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget p1, p1, Landroid/os/Message;->what:I

    .line 19
    invoke-static {p0, p1, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 25
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 27
    if-nez p1, :cond_1

    .line 29
    const-string/jumbo p0, "doAction : currentAction is null"

    .line 32
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 39
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 41
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 43
    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 45
    const/4 v3, 0x1

    .line 46
    if-ne v0, v1, :cond_2

    .line 48
    iget v1, p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    .line 50
    const/16 v4, 0x16

    .line 52
    if-ne v1, v4, :cond_2

    .line 54
    iget v1, p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    .line 56
    const/16 v4, 0x3f8

    .line 58
    if-ne v1, v4, :cond_2

    .line 60
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mGlassesOn:Z

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mGlassesOn:Z

    .line 65
    if-eqz v1, :cond_3

    .line 67
    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    .line 69
    if-ne v0, v1, :cond_3

    .line 71
    iget p1, p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    .line 73
    const/16 v0, 0x1e

    .line 75
    if-ne p1, v0, :cond_3

    .line 77
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 79
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 81
    add-int/2addr v0, v3

    .line 82
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 84
    check-cast p1, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 92
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    :goto_0
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 97
    add-int/2addr p1, v3

    .line 98
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 100
    check-cast v0, Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    move-result v0

    .line 106
    if-ge p1, v0, :cond_4

    .line 108
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 110
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 112
    add-int/2addr v0, v3

    .line 113
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 115
    check-cast p1, Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 123
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 125
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;

    .line 127
    iget-wide v0, p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    .line 129
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    :cond_4
    :goto_1
    return-void
.end method
