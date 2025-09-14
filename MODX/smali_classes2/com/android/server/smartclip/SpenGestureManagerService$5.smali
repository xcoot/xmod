.class public final Lcom/android/server/smartclip/SpenGestureManagerService$5;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 9
    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :pswitch_0
    const/16 p0, 0x9

    .line 14
    .line 15
    invoke-static {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_1
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    instance-of p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    check-cast p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 31
    .line 32
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v0, "sendPenDetectionInfo."

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    .line 46
    .line 47
    const-string v2, "SpenGestureManagerService"

    .line 48
    .line 49
    invoke-static {p1, v0, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-boolean p1, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 53
    .line 54
    const-string/jumbo v0, "penName"

    .line 55
    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    const-string p1, "Start AirCommandUiService. #0"

    .line 60
    .line 61
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    new-instance p1, Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "cause"

    .line 70
    .line 71
    const-string/jumbo v3, "pen_detected"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    iput-object p0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 91
    .line 92
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    .line 96
    .line 97
    const-string v5, "eventTime"

    .line 98
    .line 99
    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-static {v4, v0, p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    :try_start_0
    iget-object p1, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 120
    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    const-string p1, "Failed to send the pen detection info"

    .line 129
    .line 130
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_3
    const/16 p0, 0xa

    .line 135
    .line 136
    invoke-static {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_0
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x3018
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
