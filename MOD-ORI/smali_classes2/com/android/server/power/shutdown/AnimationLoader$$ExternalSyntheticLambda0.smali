.class public final synthetic Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/shutdown/AnimationLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/shutdown/AnimationLoader;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/AnimationLoader;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->playTimeout:J

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v3, "timeout["

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "]"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "stopAnimation reason["

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "] "

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "Shutdown-AnimationLoader"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->loadDrawable()Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v2, "stopAnimation can\'t load drawable "

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->STOP:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void

    .line 112
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->loadDrawable()Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string/jumbo v2, "startAnimation "

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "Shutdown-AnimationLoader"

    .line 134
    .line 135
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->START:Lcom/android/server/power/shutdown/AnimationStatus;

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    .line 143
    .line 144
    .line 145
    iget v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->repeatCount:I

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 157
    .line 158
    .line 159
    :cond_2
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
