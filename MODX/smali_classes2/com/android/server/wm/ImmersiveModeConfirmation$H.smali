.class public final Lcom/android/server/wm/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    if-eq v0, p1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    iget v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContextRootDisplayAreaId:I

    .line 30
    .line 31
    if-ne p1, v0, :cond_3

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    .line 36
    .line 37
    .line 38
    :cond_4
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    .line 43
    .line 44
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 48
    .line 49
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    const v7, 0x1000120

    .line 52
    .line 53
    .line 54
    const/4 v8, -0x3

    .line 55
    const/4 v4, -0x1

    .line 56
    const/4 v5, -0x1

    .line 57
    const/16 v6, 0x7e1

    .line 58
    .line 59
    move-object v3, v0

    .line 60
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    not-int v2, v2

    .line 72
    and-int/2addr v1, v2

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x3

    .line 77
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 78
    .line 79
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 80
    .line 81
    const v2, 0x20020010

    .line 82
    .line 83
    .line 84
    or-int/2addr v1, v2

    .line 85
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 86
    .line 87
    const-string v1, "ImmersiveModeConfirmation"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const v2, 0x103030e

    .line 93
    .line 94
    .line 95
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 98
    .line 99
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 100
    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 102
    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    const/4 v2, -0x1

    .line 106
    if-ne p1, v2, :cond_5

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    goto :goto_0

    .line 110
    :cond_5
    const-string/jumbo v2, "root_display_area_id"

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :goto_0
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContextRootDisplayAreaId:I

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    const/16 v3, 0x7e1

    .line 122
    .line 123
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const-class v2, Landroid/view/WindowManager;

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroid/view/WindowManager;

    .line 134
    .line 135
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 136
    .line 137
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 138
    .line 139
    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catch_0
    move-exception p0

    .line 144
    goto :goto_1

    .line 145
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    const-string p1, "Must not create a new WindowManager while there is an existing one"

    .line 148
    .line 149
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v0, "Fail to show the immersive confirmation window because of "

    .line 156
    .line 157
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    :goto_2
    return-void
.end method
