.class public final Lcom/android/server/am/FreecessHandler$BluetoothHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$BluetoothHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 7
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$BluetoothHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 9
    iget-object v1, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 11
    if-nez v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string/jumbo v1, "uid"

    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 21
    move-result v0

    .line 22
    sget-object v1, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter$BlueToothConnectedFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    iget-object v1, v1, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->mBTTargetList:Ljava/util/List;

    .line 30
    if-eqz v1, :cond_5

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_5

    .line 38
    iget v1, p1, Landroid/os/Message;->what:I

    .line 40
    const/16 v2, 0x1a

    .line 42
    const-string v3, "FreecessHandler"

    .line 44
    if-eq v1, v2, :cond_3

    .line 46
    const/16 v2, 0x1b

    .line 48
    if-ne v1, v2, :cond_2

    .line 50
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 52
    if-eqz p1, :cond_1

    .line 54
    const-string/jumbo p1, "handle FREECESS_UNFREEZE_BT_SCAN_MSG...."

    .line 57
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 62
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->onUnFreeze(I)V

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "Unexpected value: "

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0

    .line 88
    :cond_3
    sget-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 90
    if-eqz p1, :cond_4

    .line 92
    const-string/jumbo p1, "handle FREECESS_FREEZE_BT_SCAN_MSG...."

    .line 95
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 100
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->onFreeze(I)V

    .line 103
    :cond_5
    :goto_0
    return-void
.end method
