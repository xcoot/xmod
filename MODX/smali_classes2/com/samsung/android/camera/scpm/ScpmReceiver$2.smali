.class public final Lcom/samsung/android/camera/scpm/ScpmReceiver$2;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    .line 10
    .line 11
    sget-object v4, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicyList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/samsung/android/camera/scpm/PolicyListVO;

    .line 34
    .line 35
    iget-object v5, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    iget-object v2, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->value:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    cmp-long v0, v3, v0

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const-string v0, "CameraService/ScpmReceiver"

    .line 63
    .line 64
    const-string v1, "cameraId"

    .line 65
    .line 66
    const-string v3, "facing"

    .line 67
    .line 68
    const-string/jumbo v4, "package_hint"

    .line 69
    .line 70
    .line 71
    const-string/jumbo v5, "package_name"

    .line 72
    .line 73
    .line 74
    const-string v6, "com.sec.android.sdhms"

    .line 75
    .line 76
    if-eqz p3, :cond_4

    .line 77
    .line 78
    const/4 v7, 0x3

    .line 79
    if-eq p3, v7, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    new-instance p3, Landroid/content/Intent;

    .line 83
    .line 84
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v7, "com.samsung.android.camera.action.camera_close"

    .line 88
    .line 89
    invoke-virtual {p3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    .line 113
    .line 114
    sget-boolean p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->DEBUG:Z

    .line 115
    .line 116
    if-eqz p0, :cond_5

    .line 117
    .line 118
    const-string p0, "Send Close Message to SDMHS"

    .line 119
    .line 120
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    new-instance p3, Landroid/content/Intent;

    .line 125
    .line 126
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v7, "com.samsung.android.camera.action.camera_open"

    .line 130
    .line 131
    invoke-virtual {p3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$2;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    .line 155
    .line 156
    sget-boolean p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->DEBUG:Z

    .line 157
    .line 158
    if-eqz p0, :cond_5

    .line 159
    .line 160
    const-string p0, "Send Open Message to SDMHS"

    .line 161
    .line 162
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_0
    return-void
.end method
