.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 5
    iput-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 7
    iput p3, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v1, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 10
    iget-object v2, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 14
    iget v0, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$2:I

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-wide/32 v8, 0x80000

    .line 22
    const-string/jumbo v3, "unhibernatePackage"

    .line 25
    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v20

    .line 32
    :try_start_0
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 38
    iget-object v3, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 40
    const-wide/32 v4, 0x200ca200

    .line 43
    invoke-interface {v3, v2, v4, v5, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 46
    move-result-object v3

    .line 47
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-wide/from16 v23, v8

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-wide/from16 v23, v8

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/Intent;

    .line 60
    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 62
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    move-result-object v6

    .line 69
    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 71
    filled-new-array {v3}, [Ljava/lang/String;

    .line 74
    move-result-object v22

    .line 75
    iget-object v3, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/4 v15, -0x1

    .line 82
    const/16 v16, 0x0

    .line 84
    const/16 v17, 0x0

    .line 86
    const/16 v18, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    move-wide/from16 v23, v8

    .line 94
    move-object v8, v12

    .line 95
    const/4 v9, -0x1

    .line 96
    move-object/from16 v12, v22

    .line 98
    move/from16 v19, v0

    .line 100
    :try_start_1
    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 103
    new-instance v3, Landroid/content/Intent;

    .line 105
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 107
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    move-result-object v6

    .line 114
    iget-object v3, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    .line 116
    const/4 v10, 0x0

    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v13, 0x0

    .line 119
    const/4 v14, 0x0

    .line 120
    const/4 v15, -0x1

    .line 121
    const/16 v16, 0x0

    .line 123
    const/16 v17, 0x0

    .line 125
    const/16 v18, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    const/4 v7, 0x0

    .line 130
    const/4 v8, 0x0

    .line 131
    const/4 v9, -0x1

    .line 132
    move-object/from16 v12, v22

    .line 134
    move/from16 v19, v0

    .line 136
    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    .line 145
    return-void

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    goto :goto_2

    .line 148
    :catch_1
    move-exception v0

    .line 149
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 152
    move-result-object v0

    .line 153
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    :goto_2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    .line 160
    throw v0

    .line 161
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 163
    iget-object v2, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 165
    check-cast v2, Lcom/android/server/apphibernation/HibernationStateDiskStore;

    .line 167
    iget v0, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda3;->f$2:I

    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-virtual {v2}, Lcom/android/server/apphibernation/HibernationStateDiskStore;->readHibernationStates()Ljava/util/List;

    .line 175
    move-result-object v2

    .line 176
    iget-object v3, v1, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 178
    monitor-enter v3

    .line 179
    :try_start_3
    iget-object v4, v1, Lcom/android/server/apphibernation/AppHibernationService;->mUserManager:Landroid/os/UserManager;

    .line 181
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_2

    .line 187
    invoke-virtual {v1, v0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->initializeUserHibernationStates(ILjava/util/List;)V

    .line 190
    iget-object v2, v1, Lcom/android/server/apphibernation/AppHibernationService;->mUserStates:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Ljava/util/Map;

    .line 198
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 201
    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 205
    move-result-object v0

    .line 206
    :cond_1
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_2

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Lcom/android/server/apphibernation/UserLevelState;

    .line 218
    iget-object v4, v2, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 220
    iget-object v5, v1, Lcom/android/server/apphibernation/AppHibernationService;->mGlobalHibernationStates:Ljava/util/Map;

    .line 222
    check-cast v5, Landroid/util/ArrayMap;

    .line 224
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Lcom/android/server/apphibernation/GlobalLevelState;

    .line 230
    iget-boolean v5, v5, Lcom/android/server/apphibernation/GlobalLevelState;->hibernated:Z

    .line 232
    if-eqz v5, :cond_1

    .line 234
    iget-boolean v2, v2, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 236
    if-nez v2, :cond_1

    .line 238
    const/4 v2, 0x0

    .line 239
    invoke-virtual {v1, v4, v2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 242
    goto :goto_3

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    goto :goto_4

    .line 245
    :cond_2
    monitor-exit v3

    .line 246
    return-void

    .line 247
    :goto_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 248
    throw v0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
