.class public final synthetic Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;I)V
    .locals 0

    .line 3
    iput p3, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V
    .locals 1

    .line 5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " animation not completed in 1000 ms"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "UserSwitchingDialog"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/android/server/am/UserSwitchingDialog;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 43
    .line 44
    const-string/jumbo v1, "spinnerAnimation"

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lcom/android/server/am/UserSwitchingDialog;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 60
    .line 61
    const-string/jumbo v1, "dismissAnimation"

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lcom/android/server/am/UserSwitchingDialog;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 77
    .line 78
    const-string/jumbo v1, "showAnimation"

    .line 79
    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v1, "spinnerAnimation"

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x2

    .line 89
    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    check-cast p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    const/4 v3, 0x4

    .line 97
    invoke-direct {v1, v0, p0, v3}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;I)V

    .line 98
    .line 99
    .line 100
    const p0, 0x10204c5

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Landroid/widget/ImageView;

    .line 108
    .line 109
    if-eqz p0, :cond_0

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    instance-of v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 116
    .line 117
    if-eqz v3, :cond_0

    .line 118
    .line 119
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    const/4 p0, 0x0

    .line 123
    :goto_0
    iget-boolean v3, v0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    .line 124
    .line 125
    if-nez v3, :cond_2

    .line 126
    .line 127
    if-nez p0, :cond_1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 133
    .line 134
    .line 135
    new-instance v2, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    .line 136
    .line 137
    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 141
    .line 142
    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    const-string/jumbo v3, "spinner"

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v3, v2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    .line 148
    .line 149
    .line 150
    const-wide/16 v3, 0x3e8

    .line 151
    .line 152
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$1;

    .line 156
    .line 157
    invoke-direct {v0, v2}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->run()V

    .line 168
    .line 169
    .line 170
    :goto_2
    return-void

    .line 171
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Lcom/android/server/am/UserSwitchingDialog;

    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 176
    .line 177
    iget-boolean v1, v0, Lcom/android/server/am/UserSwitchingDialog;->mNeedToFreezeScreen:Z

    .line 178
    .line 179
    if-nez v1, :cond_3

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_3
    const-string/jumbo v1, "traceBegin-"

    .line 183
    .line 184
    .line 185
    const-string/jumbo v2, "startFreezingScreen"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string v3, "UserSwitchingDialog"

    .line 193
    .line 194
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    const-wide/16 v4, 0x40

    .line 198
    .line 199
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/server/am/UserSwitchingDialog;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 203
    .line 204
    const/4 v1, 0x0

    .line 205
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    .line 206
    .line 207
    .line 208
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 209
    .line 210
    .line 211
    const-string/jumbo v0, "traceEnd-"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :goto_3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Lcom/android/server/am/UserSwitchingDialog;

    .line 228
    .line 229
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    .line 232
    .line 233
    .line 234
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
