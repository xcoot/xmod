.class public final Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KZT_FW_PKG_NAME:Ljava/lang/String; = "com.samsung.android.knox.zt.framework"

.field public static final TAG:Ljava/lang/String; = "EndpointMonitorImpl"


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public mBootTimeNanos:J

.field public final mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

.field public final mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

.field public volatile mKztFrameworkPid:I

.field public final mProcessObserver:Landroid/app/IProcessObserver;

.field public final mProcessObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

.field public final mSessionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    invoke-direct {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 5
    iget-wide v0, p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    .line 6
    iput-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mBootTimeNanos:J

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionLock:Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-direct {v1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 9
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$LocalService;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInternal:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    .line 10
    const-class v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;

    invoke-direct {p1, p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$1;-><init>(Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;)V

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    return-void
.end method

.method public static synthetic lambda$getFilter$0(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method


# virtual methods
.method public final containsNetworkEventFlag(I)Z
    .locals 0

    .line 1
    const p0, 0x8000

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, p1

    .line 5
    if-gtz p0, :cond_1

    .line 6
    .line 7
    const/high16 p0, 0x10000

    .line 8
    .line 9
    and-int/2addr p0, p1

    .line 10
    if-gtz p0, :cond_1

    .line 11
    .line 12
    const/high16 p0, 0x20000

    .line 13
    .line 14
    and-int/2addr p0, p1

    .line 15
    if-lez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public final createMonitoringTask(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->rescheduleMonitoringTask(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v2, v1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Task rescheduled = "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object v3, v1

    .line 21
    check-cast v3, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2, v3, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    :pswitch_0
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_1
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/LocalNetworkPktMonitoring;

    .line 35
    .line 36
    iget-object v11, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 37
    .line 38
    move-object v4, v1

    .line 39
    move/from16 v5, p2

    .line 40
    .line 41
    move/from16 v6, p1

    .line 42
    .line 43
    move/from16 v7, p3

    .line 44
    .line 45
    move/from16 v8, p4

    .line 46
    .line 47
    move/from16 v9, p5

    .line 48
    .line 49
    move-object/from16 v10, p6

    .line 50
    .line 51
    invoke-direct/range {v4 .. v11}, Lcom/android/server/knox/zt/devicetrust/task/LocalNetworkPktMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :pswitch_2
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/AbnormalPacketsMonitoring;

    .line 57
    .line 58
    iget-object v11, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 59
    .line 60
    move-object v4, v1

    .line 61
    move/from16 v5, p2

    .line 62
    .line 63
    move/from16 v6, p1

    .line 64
    .line 65
    move/from16 v7, p3

    .line 66
    .line 67
    move/from16 v8, p4

    .line 68
    .line 69
    move/from16 v9, p5

    .line 70
    .line 71
    move-object/from16 v10, p6

    .line 72
    .line 73
    invoke-direct/range {v4 .. v11}, Lcom/android/server/knox/zt/devicetrust/task/AbnormalPacketsMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_3
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/InsecurePortsMonitoring;

    .line 79
    .line 80
    iget-object v11, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 81
    .line 82
    move-object v4, v1

    .line 83
    move/from16 v5, p2

    .line 84
    .line 85
    move/from16 v6, p1

    .line 86
    .line 87
    move/from16 v7, p3

    .line 88
    .line 89
    move/from16 v8, p4

    .line 90
    .line 91
    move/from16 v9, p5

    .line 92
    .line 93
    move-object/from16 v10, p6

    .line 94
    .line 95
    invoke-direct/range {v4 .. v11}, Lcom/android/server/knox/zt/devicetrust/task/InsecurePortsMonitoring;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_4
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/PrivilegeEscalationMonitoring;

    .line 101
    .line 102
    iget-object v9, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 103
    .line 104
    move-object v2, v1

    .line 105
    move/from16 v3, p2

    .line 106
    .line 107
    move/from16 v4, p3

    .line 108
    .line 109
    move/from16 v5, p4

    .line 110
    .line 111
    move/from16 v6, p5

    .line 112
    .line 113
    move-object/from16 v7, p6

    .line 114
    .line 115
    move-object/from16 v8, p7

    .line 116
    .line 117
    invoke-direct/range {v2 .. v9}, Lcom/android/server/knox/zt/devicetrust/task/PrivilegeEscalationMonitoring;-><init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :pswitch_5
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/ProcessMonitoring;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 125
    .line 126
    move-object v10, v1

    .line 127
    move/from16 v11, p2

    .line 128
    .line 129
    move/from16 v12, p3

    .line 130
    .line 131
    move/from16 v13, p4

    .line 132
    .line 133
    move/from16 v14, p5

    .line 134
    .line 135
    move-object/from16 v15, p6

    .line 136
    .line 137
    move-object/from16 v16, p7

    .line 138
    .line 139
    move-object/from16 v17, v0

    .line 140
    .line 141
    invoke-direct/range {v10 .. v17}, Lcom/android/server/knox/zt/devicetrust/task/ProcessMonitoring;-><init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :pswitch_6
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/ExecveMonitoring;

    .line 147
    .line 148
    iget-object v9, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 149
    .line 150
    move-object v2, v1

    .line 151
    move/from16 v3, p2

    .line 152
    .line 153
    move/from16 v4, p3

    .line 154
    .line 155
    move/from16 v5, p4

    .line 156
    .line 157
    move/from16 v6, p5

    .line 158
    .line 159
    move-object/from16 v7, p6

    .line 160
    .line 161
    move-object/from16 v8, p7

    .line 162
    .line 163
    invoke-direct/range {v2 .. v9}, Lcom/android/server/knox/zt/devicetrust/task/ExecveMonitoring;-><init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :pswitch_7
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 171
    .line 172
    move-object v10, v1

    .line 173
    move/from16 v11, p2

    .line 174
    .line 175
    move/from16 v12, p3

    .line 176
    .line 177
    move/from16 v13, p4

    .line 178
    .line 179
    move/from16 v14, p5

    .line 180
    .line 181
    move-object/from16 v15, p6

    .line 182
    .line 183
    move-object/from16 v16, p7

    .line 184
    .line 185
    move-object/from16 v17, v0

    .line 186
    .line 187
    invoke-direct/range {v10 .. v17}, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;-><init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :pswitch_8
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/PacketMonitoring;

    .line 192
    .line 193
    iget-object v10, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 194
    .line 195
    const/4 v3, 0x5

    .line 196
    move-object v2, v1

    .line 197
    move/from16 v4, p2

    .line 198
    .line 199
    move/from16 v5, p3

    .line 200
    .line 201
    move/from16 v6, p4

    .line 202
    .line 203
    move/from16 v7, p5

    .line 204
    .line 205
    move-object/from16 v8, p6

    .line 206
    .line 207
    move-object/from16 v9, p7

    .line 208
    .line 209
    invoke-direct/range {v2 .. v10}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :pswitch_9
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/SocketStateMonitoring;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 216
    .line 217
    const/4 v12, 0x3

    .line 218
    move-object v11, v1

    .line 219
    move/from16 v13, p2

    .line 220
    .line 221
    move/from16 v14, p3

    .line 222
    .line 223
    move/from16 v15, p4

    .line 224
    .line 225
    move/from16 v16, p5

    .line 226
    .line 227
    move-object/from16 v17, p6

    .line 228
    .line 229
    move-object/from16 v18, p7

    .line 230
    .line 231
    move-object/from16 v19, v0

    .line 232
    .line 233
    invoke-direct/range {v11 .. v19}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :pswitch_a
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/SystemCallMonitoring;

    .line 238
    .line 239
    iget-object v10, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 240
    .line 241
    const/4 v3, 0x1

    .line 242
    move-object v2, v1

    .line 243
    move/from16 v4, p2

    .line 244
    .line 245
    move/from16 v5, p3

    .line 246
    .line 247
    move/from16 v6, p4

    .line 248
    .line 249
    move/from16 v7, p5

    .line 250
    .line 251
    move-object/from16 v8, p6

    .line 252
    .line 253
    move-object/from16 v9, p7

    .line 254
    .line 255
    invoke-direct/range {v2 .. v10}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 256
    .line 257
    .line 258
    :goto_0
    return-object v1

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getFilter(Landroid/os/Bundle;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    const-string p0, "app_only"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    new-instance p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public final getFlags(ILandroid/os/Bundle;)I
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "flags"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x3

    .line 14
    if-ne p1, p0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x20

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x5

    .line 20
    if-ne p1, p0, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 p0, 0x7

    .line 26
    if-ne p1, p0, :cond_3

    .line 27
    .line 28
    const/16 v0, 0x80

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const/4 p0, 0x4

    .line 32
    if-ne p1, p0, :cond_4

    .line 33
    .line 34
    const/16 v0, 0x800

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    const/16 p0, 0xa

    .line 38
    .line 39
    if-ne p1, p0, :cond_5

    .line 40
    .line 41
    const/16 v0, 0x1000

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_5
    const/16 p0, 0xb

    .line 45
    .line 46
    if-ne p1, p0, :cond_6

    .line 47
    .line 48
    const/16 v0, 0x2000

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_6
    const/16 p0, 0xc

    .line 52
    .line 53
    if-ne p1, p0, :cond_7

    .line 54
    .line 55
    const/16 v0, 0x4000

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_7
    const/16 p0, 0xe

    .line 59
    .line 60
    if-ne p1, p0, :cond_8

    .line 61
    .line 62
    const v0, 0x8000

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_8
    const/16 p0, 0xf

    .line 67
    .line 68
    if-ne p1, p0, :cond_9

    .line 69
    .line 70
    const/high16 v0, 0x10000

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_9
    const/16 p0, 0x10

    .line 74
    .line 75
    if-ne p1, p0, :cond_a

    .line 76
    .line 77
    const/high16 v0, 0x20000

    .line 78
    .line 79
    :cond_a
    :goto_0
    return v0
.end method

.method public final getNetworkEventTypeByFlag(I)I
    .locals 0

    .line 1
    const p0, 0x8000

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, p1

    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0xe

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/high16 p0, 0x10000

    .line 11
    .line 12
    and-int/2addr p0, p1

    .line 13
    if-lez p0, :cond_1

    .line 14
    .line 15
    const/16 p0, 0xf

    .line 16
    .line 17
    return p0

    .line 18
    :cond_1
    const/high16 p0, 0x20000

    .line 19
    .line 20
    and-int/2addr p0, p1

    .line 21
    if-lez p0, :cond_2

    .line 22
    .line 23
    const/16 p0, 0x10

    .line 24
    .line 25
    return p0

    .line 26
    :cond_2
    const/4 p0, -0x1

    .line 27
    return p0
.end method

.method public final prepare(II)I
    .locals 4

    .line 1
    const-string/jumbo v0, "prepare() startMonitoringNetworkEvents() flags = "

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x3e8

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p2, v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string/jumbo v3, "com.samsung.android.knox.zt.framework"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iput p2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iput v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mKztFrameworkPid:I

    .line 34
    .line 35
    :cond_1
    :goto_0
    and-int/lit8 p2, p1, 0x40

    .line 36
    .line 37
    if-lez p2, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    .line 42
    .line 43
    invoke-interface {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;->attachProbes(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_2
    and-int/lit16 p2, p1, 0x1000

    .line 49
    .line 50
    if-gtz p2, :cond_6

    .line 51
    .line 52
    and-int/lit16 p2, p1, 0x2000

    .line 53
    .line 54
    if-gtz p2, :cond_6

    .line 55
    .line 56
    and-int/lit16 p2, p1, 0x4000

    .line 57
    .line 58
    if-gtz p2, :cond_6

    .line 59
    .line 60
    and-int/lit8 p2, p1, 0x20

    .line 61
    .line 62
    if-lez p2, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->containsNetworkEventFlag(I)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_5

    .line 70
    .line 71
    :try_start_0
    sget-object p2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getKnoxNetworkEventService()Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getNetworkEventTypeByFlag(I)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    new-instance p1, Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v0, "eventType"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 111
    .line 112
    if-eqz p0, :cond_4

    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    invoke-static {p0, v0, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    iget-object p1, p2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 120
    .line 121
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    :cond_4
    :try_start_2
    monitor-exit p2

    .line 125
    goto :goto_1

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    monitor-exit p2

    .line 128
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :catch_0
    move-exception p0

    .line 130
    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 131
    .line 132
    const-string/jumbo p2, "prepare() startMonitoringNetworkEvents error "

    .line 133
    .line 134
    .line 135
    invoke-static {p0, p2, p1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/4 p0, -0x1

    .line 139
    return p0

    .line 140
    :cond_5
    :goto_1
    return v2

    .line 141
    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->setOffsets()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    return p0
.end method

.method public final registerProcessObserverLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->contains()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 28
    .line 29
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "Failed to register process observer: "

    .line 37
    .line 38
    invoke-static {v1, p0, v0}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public final rescheduleMonitoringTask(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    .line 4
    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move-object v6, p6

    .line 11
    move-object v7, p7

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->reschedule(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final reset(I)I
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x40

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;->detachProbes(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->containsNetworkEventFlag(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :try_start_0
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo v2, "reset() disableNetworkEventMonitoring called"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getKnoxNetworkEventService()Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getNetworkEventTypeByFlag(I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :try_start_1
    new-instance p1, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v2, "eventType"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-static {p0, v2, v1, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p1, v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0

    .line 69
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v0, "reset() disableNetworkEventMonitoring error "

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0, p1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, -0x1

    .line 80
    return p0

    .line 81
    :cond_2
    :goto_0
    return v1
.end method

.method public final startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v2, p1

    .line 3
    move v3, p2

    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    const-string/jumbo v4, "startTracing("

    .line 7
    .line 8
    .line 9
    const-string/jumbo v5, "prepare("

    .line 10
    .line 11
    .line 12
    sget-object v6, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v7, "startMonitoring() - type : "

    .line 15
    .line 16
    .line 17
    const-string v8, ", reqId : "

    .line 18
    .line 19
    invoke-static {p1, p2, v7, v8, v6}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v7, -0x2

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    if-eqz p4, :cond_6

    .line 26
    .line 27
    invoke-static {p1}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->validateTraceType(I)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-nez v8, :cond_0

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getFlags(ILandroid/os/Bundle;)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-gtz v8, :cond_1

    .line 40
    .line 41
    return v7

    .line 42
    :cond_1
    const-string/jumbo v9, "mode"

    .line 43
    .line 44
    .line 45
    const/4 v10, 0x3

    .line 46
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    invoke-static {v9}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->validateMode(I)Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-nez v10, :cond_2

    .line 55
    .line 56
    return v7

    .line 57
    :cond_2
    const-string/jumbo v7, "extras"

    .line 58
    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getFilter(Landroid/os/Bundle;)Ljava/util/function/Predicate;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    iget-object v11, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionLock:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v11

    .line 72
    :try_start_0
    iget-object v1, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->contains(I)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    const-string v0, "Failed :: Task already running"

    .line 81
    .line 82
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    monitor-exit v11

    .line 86
    const/4 v0, -0x4

    .line 87
    return v0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0, v8, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->prepare(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v12, -0x5

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ")"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    monitor-exit v11

    .line 118
    return v12

    .line 119
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startTracing(I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ")"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    monitor-exit v11

    .line 146
    return v12

    .line 147
    :cond_5
    move-object v1, p0

    .line 148
    move v2, p1

    .line 149
    move v3, p2

    .line 150
    move v4, v9

    .line 151
    move v5, v8

    .line 152
    move v6, v7

    .line 153
    move-object/from16 v7, p4

    .line 154
    .line 155
    move-object v8, v10

    .line 156
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->createMonitoringTask(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startMonitoringTask(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    monitor-exit v11

    .line 165
    return v0

    .line 166
    :goto_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    throw v0

    .line 168
    :cond_6
    :goto_1
    return v7
.end method

.method public final startMonitoringTask(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->schedule()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->schedule()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->establish()V

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 v0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v0, -0x5

    .line 36
    :goto_1
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->add(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->registerProcessObserverLocked()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return v0
.end method

.method public final startTracing(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->containsNetworkEventFlag(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v1, "prepare() startNetworkEventLogging called"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->getNetworkEventTypeByFlag(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->startNetworkEventLogging(I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->startTracing(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final stopMonitoring(II)I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopMonitoring() - type : "

    const-string v2, ", reqId : "

    .line 2
    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/knox/zt/devicetrust/EndpointMonitorConst;->validateTraceType(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x2

    return p0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v2, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->find(I)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    const-string p0, "Session not found"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->checkPermission(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    monitor-exit v1

    const/4 p0, -0x1

    return p0

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoringInner(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I

    move-result p0

    monitor-exit v1

    return p0

    .line 11
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopMonitoring(I)V
    .locals 5

    .line 19
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopMonitoring() - reqId : "

    .line 20
    invoke-static {p1, v1, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    invoke-virtual {v2, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->findByUid(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoringInner(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I

    move-result v2

    .line 26
    sget-object v3, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "stopMonitoring() - Task : %s, Result : %d"

    .line 27
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 29
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 30
    :cond_1
    monitor-exit v1

    return-void

    .line 31
    :cond_2
    :goto_1
    const-string p0, "Session not found"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    monitor-exit v1

    return-void

    .line 33
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final stopMonitoringInner(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFlags:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->reset(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ")"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v3, "reset("

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoringTask(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string/jumbo v3, "stopMonitoringTask("

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v3, v1, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFlags:I

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopTracing(I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    sget-object p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v0, "stopTracing("

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return p0
.end method

.method public final stopMonitoringTask(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->keep()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->terminate()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p1, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->release()V

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 v0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v0, -0x5

    .line 36
    :goto_1
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 39
    .line 40
    iget p1, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->remove(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->unregisterProcessObserverLocked()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return v0
.end method

.method public final stopTracing(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->stopTracing(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final unregisterProcessObserverLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mSession:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->contains()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mInjector:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 28
    .line 29
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "Failed to unregister process observer: "

    .line 37
    .line 38
    invoke-static {v1, p0, v0}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method
