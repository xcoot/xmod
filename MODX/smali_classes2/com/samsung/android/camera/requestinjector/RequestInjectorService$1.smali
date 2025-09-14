.class public final Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/requestinjector/RequestInjectorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p2, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v0, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    const/4 v3, 0x1

    .line 14
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    aget-object v4, p2, v2

    .line 17
    .line 18
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    move p2, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move p2, v1

    .line 30
    :goto_1
    const-string v0, "RequestInjectorService"

    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    const-string p0, "Samsung Camera is opened. ignore VT Camera Setting."

    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    if-eqz p3, :cond_6

    .line 41
    .line 42
    if-eq p3, v3, :cond_6

    .line 43
    .line 44
    const/4 p2, 0x2

    .line 45
    if-eq p3, p2, :cond_6

    .line 46
    .line 47
    sget-object p2, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    const-string v3, "VT Camera Setting does not exist "

    .line 51
    .line 52
    const-string v4, "VT Camera Setting does not exist"

    .line 53
    .line 54
    const-string v5, "camera_open_id"

    .line 55
    .line 56
    const-string v6, "com.samsung.android.vtcamerasettings"

    .line 57
    .line 58
    if-eq p3, v2, :cond_5

    .line 59
    .line 60
    const/16 v2, 0x64

    .line 61
    .line 62
    if-eq p3, v2, :cond_3

    .line 63
    .line 64
    const/16 p5, 0x65

    .line 65
    .line 66
    if-eq p3, p5, :cond_5

    .line 67
    .line 68
    const-string p0, "Non acceptable state "

    .line 69
    .line 70
    invoke-static {p3, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_3
    :try_start_0
    invoke-static {p5, p4}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    if-eqz p3, :cond_4

    .line 80
    .line 81
    iget v1, p3, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    .line 82
    .line 83
    :cond_4
    new-instance p3, Landroid/content/Intent;

    .line 84
    .line 85
    const-string p5, "intentfilter.samsung.vtcamerasetting.cameraobserver"

    .line 86
    .line 87
    invoke-direct {p3, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string p5, "camera_open_package_name"

    .line 94
    .line 95
    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    const-string p4, "display_id"

    .line 102
    .line 103
    invoke-virtual {p3, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const-string p4, "Camera is opening. Start VT Camera Setting. cameraId(%s), displayId(%d)"

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p5

    .line 112
    filled-new-array {p1, p5}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 124
    .line 125
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 128
    .line 129
    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catch_0
    move-exception p0

    .line 134
    invoke-static {v0, v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p2, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    :try_start_1
    new-instance p5, Landroid/content/Intent;

    .line 154
    .line 155
    const-string v1, "intentfilter.samsung.vtcamerasetting.closecamera"

    .line 156
    .line 157
    invoke-direct {p5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    const-string v1, "camera_close_package_name"

    .line 164
    .line 165
    invoke-virtual {p5, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p5, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    const-string p4, "Camera is closed. cameraId(%s), state(%d)"

    .line 172
    .line 173
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$1;->this$0:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 189
    .line 190
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    sget-object p1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 193
    .line 194
    invoke-virtual {p0, p5, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :catch_1
    move-exception p0

    .line 199
    invoke-static {v0, v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .line 201
    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {p2, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    :goto_2
    return-void
.end method
