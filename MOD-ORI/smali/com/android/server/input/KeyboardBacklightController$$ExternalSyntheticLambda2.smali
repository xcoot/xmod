.class public final synthetic Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardBacklightController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->handleInteractiveStateChange(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    move v1, v2

    .line 27
    goto :goto_5

    .line 28
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 29
    .line 30
    move p1, v1

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ge p1, v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 46
    .line 47
    iget-boolean v3, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    .line 48
    .line 49
    iget-object v4, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    iget v3, v4, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    iget-object v3, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    .line 57
    .line 58
    iget v5, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    .line 59
    .line 60
    aget v3, v3, v5

    .line 61
    .line 62
    :goto_2
    iget-boolean v4, v4, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    move v3, v1

    .line 68
    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserActivity()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    sget-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_DOWN:Lcom/android/server/input/KeyboardBacklightController$Direction;

    .line 87
    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardBacklightController;->updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    sget-object v0, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    .line 101
    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardBacklightController;->updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, [I

    .line 109
    .line 110
    array-length v0, p1

    .line 111
    :goto_4
    if-ge v1, v0, :cond_0

    .line 112
    .line 113
    aget v3, p1, v1

    .line 114
    .line 115
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardBacklightController;->onInputDeviceAdded(I)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :goto_5
    return v1

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
