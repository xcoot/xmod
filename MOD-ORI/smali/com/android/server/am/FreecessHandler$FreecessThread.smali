.class public final Lcom/android/server/am/FreecessHandler$FreecessThread;
.super Landroid/os/HandlerThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 9
    .line 10
    const-string p1, "FreecessHandler"

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 20
    .line 21
    const-string p1, "Freecess_HAMSL"

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    sget-object p1, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 31
    .line 32
    const-string p1, "Freecess_BT"

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$HandleAmsLockHandler;

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v1, v2, p0}, Lcom/android/server/am/FreecessHandler$BluetoothHandler;-><init>(Lcom/android/server/am/FreecessHandler;Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mBluetoothHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 37
    .line 38
    new-instance v1, Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v1, p0}, Lcom/android/server/am/FreecessHandler$MainHandler;-><init>(Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
