.class public final Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackagesMonitor:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;

.field public final mPhoneStateListener:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    .line 2
    .line 3
    const-string v0, "SemDeviceInfoManagerService"

    .line 4
    .line 5
    sput-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 18
    .line 19
    new-instance p1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "EventProcessHandler:handleMessage() msg.what = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget v1, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_5

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v1, v3, :cond_4

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-eq v1, v3, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    if-eq v1, v2, :cond_0

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v1, "msg.what has invalid value. msg.what = "

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget p1, p1, Landroid/os/Message;->what:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter p1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    const-string/jumbo v2, "monitor_package_state"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1

    .line 99
    .line 100
    sget-object p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    const-string v0, "PackageMonitor is still in use! DO NOT UNREGISTER!"

    .line 103
    .line 104
    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    monitor-exit p1

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p0

    .line 120
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, p0, v1, v0, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception p0

    .line 132
    sget-object p1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v1, "Error on registering package monitor! "

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    const-string/jumbo v0, "phone"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    .line 164
    .line 165
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_5
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    .line 171
    .line 172
    const-string/jumbo v0, "phone"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    .line 182
    .line 183
    const/16 v0, 0x20

    .line 184
    .line 185
    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 186
    .line 187
    .line 188
    :goto_1
    return-void
.end method
