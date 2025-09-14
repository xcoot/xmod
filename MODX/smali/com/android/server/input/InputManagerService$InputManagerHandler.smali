.class public final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
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
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 6
    if-eq v0, v1, :cond_3

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 11
    const/4 v1, 0x3

    .line 12
    const/16 v2, 0x20

    .line 14
    const-wide v3, 0xffffffffL

    .line 19
    if-eq v0, v1, :cond_1

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 24
    goto/16 :goto_1

    .line 26
    :pswitch_0
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string p0, "InputManager"

    .line 33
    const-string/jumbo p1, "mSensorManager is null."

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto/16 :goto_1

    .line 41
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 45
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 47
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 49
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 51
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 53
    sget-boolean v3, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 55
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->deliverSwitchEventChanged(IIII)V

    .line 58
    goto/16 :goto_1

    .line 60
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 64
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 66
    int-to-long v0, v0

    .line 67
    and-long/2addr v0, v3

    .line 68
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 70
    int-to-long v3, v3

    .line 71
    shl-long v2, v3, v2

    .line 73
    or-long/2addr v0, v2

    .line 74
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 76
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 78
    check-cast p1, Ljava/lang/String;

    .line 80
    sget-boolean v3, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 82
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/input/InputManagerService;->wakeUp(JILjava/lang/String;)V

    .line 85
    goto :goto_1

    .line 86
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 88
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 90
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->deliverMultiFingerGesture(II)V

    .line 95
    goto :goto_1

    .line 96
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 98
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    instance-of v1, p1, Landroid/view/PointerIcon;

    .line 102
    if-eqz v1, :cond_0

    .line 104
    check-cast p1, Landroid/view/PointerIcon;

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    const/4 p1, 0x0

    .line 108
    :goto_0
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 110
    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->deliverPointerIconChanged(ILandroid/view/PointerIcon;)V

    .line 113
    goto :goto_1

    .line 114
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 118
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 120
    int-to-long v0, v0

    .line 121
    and-long/2addr v0, v3

    .line 122
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 124
    int-to-long v3, v3

    .line 125
    shl-long v2, v3, v2

    .line 127
    or-long/2addr v0, v2

    .line 128
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 130
    check-cast p1, Ljava/lang/Boolean;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    move-result p1

    .line 136
    sget-boolean v2, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 138
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->deliverLidStateChanged(JZ)V

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 146
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 148
    int-to-long v0, v0

    .line 149
    and-long/2addr v0, v3

    .line 150
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 152
    int-to-long v3, v3

    .line 153
    shl-long v2, v3, v2

    .line 155
    or-long/2addr v0, v2

    .line 156
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    move-result p1

    .line 164
    sget-boolean v2, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 166
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    .line 169
    goto :goto_1

    .line 170
    :cond_2
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 172
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    .line 175
    goto :goto_1

    .line 176
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    check-cast p1, [Landroid/view/InputDevice;

    .line 180
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    .line 185
    :goto_1
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
