.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/media/projection/IMediaProjectionCallback;

    .line 9
    .line 10
    invoke-interface {p0}, Landroid/media/projection/IMediaProjectionCallback;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string v0, "MediaProjectionManagerService"

    .line 16
    .line 17
    const-string v1, "Failed to notify media projection has stopped"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string/jumbo v1, "display"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x2

    .line 53
    if-ne v1, v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const-string/jumbo v1, "ro.build.characteristics"

    .line 66
    .line 67
    .line 68
    const-string/jumbo v2, "phone"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string/jumbo v2, "tablet"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x1

    .line 83
    const v3, 0x103012b

    .line 84
    .line 85
    .line 86
    if-eqz v1, :cond_0

    .line 87
    .line 88
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v4, Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 93
    .line 94
    iget-object v4, v4, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-direct {v1, v4, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const v3, 0x1041049

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 129
    .line 130
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v4, Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 133
    .line 134
    iget-object v4, v4, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-direct {v1, v4, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$3;->this$0:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const v3, 0x1041048

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 165
    .line 166
    .line 167
    :cond_1
    :goto_1
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
