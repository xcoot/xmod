.class public final Lcom/android/server/aod/AODManagerService$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/aod/AODManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lcom/android/server/aod/AODManagerService$2;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    iget p0, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const-string v2, "AODManagerService"

    .line 15
    .line 16
    check-cast v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 17
    .line 18
    if-eq p0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    const-string/jumbo v3, "handleAODDozeReleased : RemoteException : "

    .line 22
    .line 23
    .line 24
    if-eq p0, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq p0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lcom/samsung/android/aod/AODToast;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object p1, v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-interface {p1, p0}, Lcom/samsung/android/aod/IAODDozeCallback;->onAODToastRequested(Lcom/samsung/android/aod/AODToast;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    sget p1, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 51
    .line 52
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    :try_start_1
    iget-object p0, v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 60
    .line 61
    invoke-static {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-interface {p0}, Lcom/samsung/android/aod/IAODDozeCallback;->onDozeReleased()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception p0

    .line 72
    sget p1, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 73
    .line 74
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    :try_start_2
    iget-object p0, v0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 82
    .line 83
    invoke-static {p0}, Lcom/samsung/android/aod/IAODDozeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODDozeCallback;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    invoke-interface {p0}, Lcom/samsung/android/aod/IAODDozeCallback;->onDozeAcquired()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_2
    move-exception p0

    .line 94
    sget p1, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 95
    .line 96
    const-string/jumbo p1, "handleAODDozeAcquired : RemoteException : "

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget p0, p1, Landroid/os/Message;->what:I

    .line 104
    .line 105
    const/16 v2, 0x64

    .line 106
    .line 107
    if-eq p0, v2, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string/jumbo p1, "logs"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    sget p1, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 122
    .line 123
    check-cast v0, Lcom/android/server/aod/AODManagerService;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    if-nez p0, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const/4 p1, 0x0

    .line 132
    move v2, p1

    .line 133
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ge v2, v3, :cond_6

    .line 138
    .line 139
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Ljava/lang/String;

    .line 144
    .line 145
    iget-object v4, v0, Lcom/android/server/aod/AODManagerService;->mAppLogger:Lcom/android/server/aod/AODLogger;

    .line 146
    .line 147
    invoke-virtual {v4, v3, p1}, Lcom/android/server/aod/AODLogger;->add(Ljava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    add-int/2addr v2, v1

    .line 151
    goto :goto_1

    .line 152
    :cond_6
    :goto_2
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
