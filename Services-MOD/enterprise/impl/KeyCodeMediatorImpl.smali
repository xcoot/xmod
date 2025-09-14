.class public final Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;

.field public final mRestrictedKeyCodeBackup:Ljava/util/Map;

.field public final mRestrictionCallbacks:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    .line 16
    new-instance v1, Ljava/util/HashSet;

    .line 18
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;

    .line 25
    iget-object v1, v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;->mHandler:Landroid/os/Handler;

    .line 27
    if-nez v1, :cond_0

    .line 29
    new-instance v1, Landroid/os/Handler;

    .line 31
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 38
    iput-object v1, v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;->mHandler:Landroid/os/Handler;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public final getAllRestrictedKeyCodes()Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    .line 8
    check-cast p0, Ljava/util/HashSet;

    .line 10
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 26
    invoke-interface {v1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getRestrictedKeyCodes()Ljava/util/Set;

    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 32
    invoke-interface {v1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getRestrictedKeyCodes()Ljava/util/Set;

    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 1
    iget v3, p1, Landroid/os/Message;->what:I

    .line 3
    sget-object p1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 5
    const-class v0, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 18
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->PRESS_TYPES_TO_BLOCK:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    const-string v8, "WindowManagerAdapter"

    .line 30
    if-eqz v2, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 38
    const-string/jumbo v4, "fail to getKeyCustomizationInfo "

    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    move-result-wide v5

    .line 45
    const/16 v7, 0xa

    .line 47
    :try_start_0
    iget-object v9, p1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v2

    .line 53
    invoke-interface {v9, v7, v2, v3}, Landroid/view/IWindowManager;->getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 56
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :catch_0
    move-exception v2

    .line 64
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-static {v8, v2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    const/4 v2, 0x0

    .line 83
    :goto_0
    if-eqz v2, :cond_0

    .line 85
    iget v4, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 87
    if-ne v4, v7, :cond_0

    .line 89
    iget v2, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 91
    const/4 v4, 0x4

    .line 92
    if-ne v2, v4, :cond_0

    .line 94
    sget-object p1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 96
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    check-cast p1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 107
    const-string/jumbo v1, "clearKeyCustomizationInfoByKeyCode with priority/keyCode : 10/"

    .line 110
    const-string/jumbo v2, "fail to clearAllConfiguration "

    .line 113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 116
    move-result-wide v5

    .line 117
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    invoke-static {v8, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p1, p1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 134
    invoke-interface {p1, v7, v3, v4}, Landroid/view/IWindowManager;->clearKeyCustomizationInfoByAction(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    goto :goto_4

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    goto :goto_2

    .line 143
    :catch_1
    move-exception p1

    .line 144
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    invoke-static {v8, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    goto :goto_1

    .line 160
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    throw p0

    .line 164
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    throw p0

    .line 168
    :cond_1
    :goto_4
    iget-object p1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    .line 170
    check-cast p1, Ljava/util/HashSet;

    .line 172
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 175
    move-result-object p1

    .line 176
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_3

    .line 182
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 188
    invoke-interface {v1, v3}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->isKeyCodeInputAllowed(I)Z

    .line 191
    move-result v2

    .line 192
    if-nez v2, :cond_2

    .line 194
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;

    .line 196
    const-string/jumbo p1, "keyCode "

    .line 199
    const-string v2, " must be blocked by "

    .line 201
    invoke-static {v3, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move-result-object p1

    .line 205
    invoke-interface {v1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getServiceName()Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    const-string p0, "KeyCodeMediator"

    .line 221
    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object p0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 226
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-result-object p0

    .line 230
    check-cast p0, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    .line 232
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    check-cast p0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 237
    const-string/jumbo p1, "putKeyCustomizationInfo with pressType : 3, "

    .line 240
    const-string/jumbo v9, "fail to putKeyCustomizationInfo "

    .line 243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 246
    move-result-wide v10

    .line 247
    :try_start_4
    new-instance v12, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 249
    const/4 v1, 0x3

    .line 250
    const/4 v7, -0x2

    .line 251
    const/16 v2, 0xa

    .line 253
    const/4 v4, 0x4

    .line 254
    const/4 v5, 0x0

    .line 255
    const/4 v6, -0x1

    .line 256
    move-object v0, v12

    .line 257
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;II)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-static {v12}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->keyCustomizationInfoToString(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)Ljava/lang/String;

    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object p1

    .line 276
    invoke-static {v8, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 281
    invoke-interface {p0, v12}, Landroid/view/IWindowManager;->putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 284
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    goto :goto_7

    .line 288
    :catchall_2
    move-exception p0

    .line 289
    goto :goto_6

    .line 290
    :catch_2
    move-exception p0

    .line 291
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object p0

    .line 303
    invoke-static {v8, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 306
    goto :goto_5

    .line 307
    :goto_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw p0

    .line 311
    :cond_3
    :goto_7
    const/4 p0, 0x1

    .line 312
    return p0
.end method

.method public final onAdminRemoved(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Set;

    .line 15
    iget-object v1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    check-cast v1, Ljava/util/HashMap;

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "Restricted Keycodes are appearing Null for Admin: "

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    const-string p0, "KeyCodeMediator"

    .line 73
    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getAllRestrictedKeyCodes()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 13
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public final update(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;

    .line 3
    iget-object v1, v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;->mHandler:Landroid/os/Handler;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    iput-object v1, v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;->mHandler:Landroid/os/Handler;

    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;->mHandler:Landroid/os/Handler;

    .line 20
    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    return-void

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "Failed to update for keycode :"

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const-string p0, "KeyCodeMediator"

    .line 59
    invoke-static {p0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
