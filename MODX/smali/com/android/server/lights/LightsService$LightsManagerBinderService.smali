.class public final Lcom/android/server/lights/LightsService$LightsManagerBinderService;
.super Landroid/hardware/lights/ILightsManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSessions:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Landroid/hardware/lights/ILightsManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public final closeSession(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->closeSession_enforcePermission()V

    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->closeSessionInternal(Landroid/os/IBinder;)V

    .line 10
    return-void
.end method

.method public final closeSessionInternal(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->invalidateLightStatesLocked()V

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p1, "Service: aidl(extension) ("

    .line 3
    const-string p3, "Service: aidl ("

    .line 5
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "LightsService"

    .line 13
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 25
    iget-object v2, v1, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 27
    if-eqz v2, :cond_1

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object p3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 36
    iget-object p3, p3, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 38
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string p3, ")"

    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto/16 :goto_3

    .line 61
    :cond_1
    iget-object p3, v1, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 63
    if-eqz p3, :cond_2

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 72
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 74
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string p1, ")"

    .line 83
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const-string p1, "Service: hidl"

    .line 96
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    :goto_0
    const-string p1, "Lights:"

    .line 101
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const/4 p1, 0x0

    .line 105
    move p3, p1

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 108
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 110
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 113
    move-result v1

    .line 114
    if-ge p3, v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 118
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 120
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lcom/android/server/lights/LightsService$LightImpl;

    .line 126
    const-string v2, "  Light id=%d ordinal=%d color=%08x"

    .line 128
    iget-object v3, v1, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 130
    iget v3, v3, Landroid/hardware/light/HwLight;->id:I

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v3

    .line 136
    iget-object v4, v1, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 138
    iget v4, v4, Landroid/hardware/light/HwLight;->ordinal:I

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v4

    .line 144
    iget v1, v1, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v1

    .line 150
    filled-new-array {v3, v4, v1}, [Ljava/lang/Object;

    .line 153
    move-result-object v1

    .line 154
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    add-int/lit8 p3, p3, 0x1

    .line 163
    goto :goto_1

    .line 164
    :cond_3
    const-string p3, "Session clients:"

    .line 166
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 171
    check-cast p0, Ljava/util/ArrayList;

    .line 173
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object p0

    .line 177
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result p3

    .line 181
    if-eqz p3, :cond_5

    .line 183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    move-result-object p3

    .line 187
    check-cast p3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v2, "  Session token="

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v2, p3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    move v1, p1

    .line 212
    :goto_2
    iget-object v2, p3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 214
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 217
    move-result v2

    .line 218
    if-ge v1, v2, :cond_4

    .line 220
    const-string v2, "    Request id=%d color=%08x"

    .line 222
    iget-object v3, p3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 224
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 227
    move-result v3

    .line 228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    move-result-object v3

    .line 232
    iget-object v4, p3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 234
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Landroid/hardware/lights/LightState;

    .line 240
    invoke-virtual {v4}, Landroid/hardware/lights/LightState;->getColor()I

    .line 243
    move-result v4

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object v4

    .line 248
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 251
    move-result-object v3

    .line 252
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    .line 261
    goto :goto_2

    .line 262
    :cond_5
    monitor-exit v0

    .line 263
    return-void

    .line 264
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    throw p0
.end method

.method public final getLightState(I)Landroid/hardware/lights/LightState;
    .locals 3

    .line 1
    const-string v0, "Invalid light: "

    .line 3
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->getLightState_enforcePermission()V

    .line 6
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 11
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/lights/LightsService$LightImpl;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 27
    new-instance p1, Landroid/hardware/lights/LightState;

    .line 29
    iget p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 31
    invoke-direct {p1, p0}, Landroid/hardware/lights/LightState;-><init>(I)V

    .line 34
    monitor-exit v1

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0

    .line 56
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final getLights()Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->getLights_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 15
    iget-object v3, v3, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v3

    .line 21
    if-ge v2, v3, :cond_1

    .line 23
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 25
    iget-object v3, v3, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    .line 33
    invoke-static {v3}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 41
    iget-object v3, v3, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    .line 49
    iget-object v3, v3, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 51
    new-instance v4, Landroid/hardware/lights/Light;

    .line 53
    iget v5, v3, Landroid/hardware/light/HwLight;->id:I

    .line 55
    iget v6, v3, Landroid/hardware/light/HwLight;->ordinal:I

    .line 57
    iget-byte v3, v3, Landroid/hardware/light/HwLight;->type:B

    .line 59
    invoke-direct {v4, v5, v6, v3}, Landroid/hardware/lights/Light;-><init>(III)V

    .line 62
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    monitor-exit v0

    .line 72
    return-object v1

    .line 73
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 22
    iget-object v1, v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    .line 24
    invoke-interface {p1, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 40
    return-object p0

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final invalidateLightStatesLocked()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 16
    :goto_0
    const/4 v2, 0x0

    .line 17
    if-ltz v1, :cond_1

    .line 19
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 29
    iget-object v3, v3, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 31
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 34
    move-result v4

    .line 35
    if-ge v2, v4, :cond_0

    .line 37
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroid/hardware/lights/LightState;

    .line 51
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v1, v2

    .line 61
    :goto_2
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 63
    iget-object v3, v3, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 68
    move-result v3

    .line 69
    if-ge v1, v3, :cond_4

    .line 71
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 73
    iget-object v3, v3, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    .line 81
    invoke-static {v3}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_3

    .line 87
    iget-object v4, v3, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 89
    iget v4, v4, Landroid/hardware/light/HwLight;->id:I

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Landroid/hardware/lights/LightState;

    .line 101
    if-eqz v4, :cond_2

    .line 103
    invoke-virtual {v4}, Landroid/hardware/lights/LightState;->getColor()I

    .line 106
    move-result v4

    .line 107
    const-string v5, "LightsService"

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    const-string v7, "[api] [SvcLED] setColor : color: "

    .line 113
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v6

    .line 127
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    monitor-enter v3

    .line 131
    :try_start_0
    invoke-virtual {v3, v4, v2, v2, v2}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 134
    monitor-exit v3

    .line 135
    goto :goto_3

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p0

    .line 139
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    .line 142
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    return-void
.end method

.method public final openSession(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->openSession_enforcePermission()V

    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    const-string v3, "already registered"

    .line 22
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    new-instance v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v1, p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;)V

    .line 30
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 33
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 35
    new-instance v2, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 37
    invoke-direct {v2, p2, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;-><init>(ILandroid/os/IBinder;)V

    .line 40
    check-cast v1, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->mSessions:Ljava/util/List;

    .line 47
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string p1, "LightsService"

    .line 57
    const-string p2, "Couldn\'t open session, client already died"

    .line 59
    invoke-static {p1, p2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string p1, "Client is already dead."

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public final setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/hardware/lights/ILightsManager$Stub;->setLightStates_enforcePermission()V

    .line 4
    array-length v0, p2

    .line 5
    array-length v1, p3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    move v0, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/os/IBinder;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->getSessionLocked(Landroid/os/IBinder;)Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 31
    move v1, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v2

    .line 34
    :goto_1
    const-string/jumbo v4, "not registered"

    .line 37
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 40
    array-length v1, p2

    .line 41
    move v4, v2

    .line 42
    :goto_2
    if-ge v4, v1, :cond_3

    .line 44
    aget v5, p2, v4

    .line 46
    iget-object v6, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->this$0:Lcom/android/server/lights/LightsService;

    .line 48
    iget-object v6, v6, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 50
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Lcom/android/server/lights/LightsService$LightImpl;

    .line 56
    if-eqz v6, :cond_2

    .line 58
    invoke-static {v6}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z

    .line 61
    move-result v6

    .line 62
    if-nez v6, :cond_2

    .line 64
    move v6, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    move v6, v2

    .line 67
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    const-string v8, "Invalid lightId "

    .line 71
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 81
    invoke-static {v6, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    :goto_4
    array-length v1, p2

    .line 88
    if-ge v2, v1, :cond_5

    .line 90
    aget v1, p2, v2

    .line 92
    aget-object v3, p3, v2

    .line 94
    if-eqz v3, :cond_4

    .line 96
    iget-object v4, p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    goto :goto_5

    .line 102
    :cond_4
    iget-object v3, p1, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 104
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 107
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_4

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_6

    .line 112
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->invalidateLightStatesLocked()V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 117
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p0
.end method
