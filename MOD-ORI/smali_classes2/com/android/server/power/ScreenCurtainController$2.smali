.class public final Lcom/android/server/power/ScreenCurtainController$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$2;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    sparse-switch v4, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    const-string v4, "com.samsung.pen.INSERT"

    .line 21
    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v3, v0

    .line 30
    goto :goto_0

    .line 31
    :sswitch_1
    const-string v4, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x2

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string v4, "android.samsung.media.action.AUDIO_MODE"

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v3, v1

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 54
    .line 55
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v3, v2

    .line 63
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController$2;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 68
    .line 69
    iget-boolean v3, p1, Lcom/android/server/power/ScreenCurtainController;->mPenInsertStateInitialized:Z

    .line 70
    .line 71
    if-nez v3, :cond_4

    .line 72
    .line 73
    iput-boolean v1, p1, Lcom/android/server/power/ScreenCurtainController;->mPenInsertStateInitialized:Z

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const-string/jumbo p1, "penInsert"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    const/4 v2, 0x6

    .line 86
    goto :goto_1

    .line 87
    :pswitch_1
    const/4 v2, 0x5

    .line 88
    goto :goto_1

    .line 89
    :pswitch_2
    const-string p1, "android.samsung.media.extra.AUDIO_MODE"

    .line 90
    .line 91
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-lt p1, v1, :cond_5

    .line 96
    .line 97
    move v2, v0

    .line 98
    goto :goto_1

    .line 99
    :pswitch_3
    const/4 v2, 0x4

    .line 100
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$2;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 119
    .line 120
    .line 121
    :cond_6
    return-void

    .line 122
    nop

    .line 123
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3
        -0x7539e1b9 -> :sswitch_2
        -0x5cb29ba5 -> :sswitch_1
        -0x145e1ed1 -> :sswitch_0
    .end sparse-switch

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
