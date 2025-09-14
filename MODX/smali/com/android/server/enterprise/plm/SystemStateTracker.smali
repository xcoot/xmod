.class public final Lcom/android/server/enterprise/plm/SystemStateTracker;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

.field public final mBootStateObservers:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mEbpfStateObservers:Ljava/util/List;

.field public mEdmServiceReady:Z

.field public final mEdmStateObservers:Ljava/util/List;

.field public mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

.field public final mLicenseStateObservers:Ljava/util/List;

.field public final mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

.field public mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

.field public final mLockStateObservers:Ljava/util/List;

.field public mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

.field public final mPackageStateObservers:Ljava/util/List;

.field public final mTargetPackageNames:Ljava/util/List;

.field public mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

.field public final mUserStateObservers:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iput-object p2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEbpfStateObservers:Ljava/util/List;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 57
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    .line 62
    check-cast p3, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p1

    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 80
    iget-object p3, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    .line 82
    iget-object p2, p2, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 84
    iget-object p2, p2, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 86
    invoke-virtual {p2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    check-cast p3, Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 99
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 101
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 105
    const/4 p2, 0x0

    .line 106
    iput-boolean p2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    .line 108
    const-class p2, Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 110
    monitor-enter p2

    .line 111
    :try_start_0
    sget-object p3, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 113
    if-nez p3, :cond_1

    .line 115
    new-instance p3, Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 117
    invoke-direct {p3}, Lcom/android/server/enterprise/plm/LockDetectionTracker;-><init>()V

    .line 120
    sput-object p3, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_2

    .line 125
    :cond_1
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    sget-object p2, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 128
    iput-object p2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 130
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 132
    return-void

    .line 133
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    throw p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "Invalid message "

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "handleMessage : "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 13
    const-string v3, "SystemStateTracker"

    .line 15
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget p1, p1, Landroid/os/Message;->what:I

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onLockStateChange(Landroid/os/Message;)V

    .line 46
    goto :goto_1

    .line 47
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onEbpfStateChange(Landroid/os/Message;)V

    .line 50
    goto :goto_1

    .line 51
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onEdmStateChange(Landroid/os/Message;)V

    .line 54
    goto :goto_1

    .line 55
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onBootStateChange(Landroid/os/Message;)V

    .line 58
    goto :goto_1

    .line 59
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onUserStateChange(Landroid/os/Message;)V

    .line 62
    goto :goto_1

    .line 63
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onPackageStateChange(Landroid/os/Message;)V

    .line 66
    goto :goto_1

    .line 67
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onLicenseStateChange(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_1

    .line 71
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_1
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onBootStateChange(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 5
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "onBootStateChange("

    .line 12
    const-string v1, ")"

    .line 14
    const-string v2, "SystemStateTracker"

    .line 16
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 21
    check-cast p0, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 39
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget v0, v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    .line 48
    invoke-static {v1, v0, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public final onEbpfStateChange(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    check-cast v1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 9
    iget-object v2, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 11
    check-cast v2, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v3

    .line 17
    const-string/jumbo v4, "uid"

    .line 20
    const-string/jumbo v5, "type"

    .line 23
    const-string/jumbo v6, "com.samsung.android.cmfa.framework"

    .line 26
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.EBPF_STATE_CHANGE"

    .line 29
    const-string v8, ")"

    .line 31
    const-string/jumbo v9, "onEbpfStateChange("

    .line 34
    const-string v10, "SystemStateTracker"

    .line 36
    const-string v11, ", "

    .line 38
    if-eqz v3, :cond_2

    .line 40
    const/4 v12, 0x1

    .line 41
    if-eq v3, v12, :cond_0

    .line 43
    goto/16 :goto_2

    .line 45
    :cond_0
    iget-object v3, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 47
    check-cast v3, Ljava/lang/Integer;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v12

    .line 53
    iget-object v1, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 55
    check-cast v1, Ljava/lang/Long;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 60
    move-result-wide v13

    .line 61
    new-instance v15, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v8, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEbpfStateObservers:Ljava/util/List;

    .line 93
    check-cast v8, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v8

    .line 99
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_1

    .line 105
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v9

    .line 109
    check-cast v9, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 111
    invoke-virtual {v9, v2, v3, v1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .line 117
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v1, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v2, "activeTimeMs"

    .line 138
    invoke-virtual {v1, v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 141
    iget-object v0, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    goto/16 :goto_2

    .line 148
    :cond_2
    iget-object v3, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 150
    check-cast v3, Ljava/lang/Integer;

    .line 152
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 155
    move-result v12

    .line 156
    iget-object v13, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 158
    check-cast v13, Ljava/lang/Long;

    .line 160
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 163
    move-result-wide v14

    .line 164
    iget-object v1, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj4:Ljava/lang/Object;

    .line 166
    check-cast v1, Ljava/lang/Long;

    .line 168
    move-object/from16 p1, v4

    .line 170
    move-object/from16 v16, v5

    .line 172
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 175
    move-result-wide v4

    .line 176
    move-object/from16 v17, v6

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v6

    .line 211
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v6, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEbpfStateObservers:Ljava/util/List;

    .line 216
    check-cast v6, Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 221
    move-result-object v6

    .line 222
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_4

    .line 228
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    move-result-object v8

    .line 232
    check-cast v8, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 234
    invoke-virtual {v8}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 237
    move-result-object v9

    .line 238
    if-nez v9, :cond_3

    .line 240
    goto :goto_1

    .line 241
    :cond_3
    new-instance v10, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 243
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object v2, v10, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 248
    iput-object v3, v10, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 250
    iput-object v13, v10, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 252
    iput-object v1, v10, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj4:Ljava/lang/Object;

    .line 254
    invoke-static {v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    .line 257
    move-result-object v11

    .line 258
    iget v8, v8, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    .line 260
    iput v8, v11, Landroid/os/Message;->what:I

    .line 262
    iput-object v10, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 264
    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    goto :goto_1

    .line 268
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 270
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 273
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    move-object/from16 v3, v17

    .line 278
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 284
    move-result-object v2

    .line 285
    move-object/from16 v3, v16

    .line 287
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    move-object/from16 v2, p1

    .line 292
    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string/jumbo v2, "userTimeUs"

    .line 298
    invoke-virtual {v1, v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 301
    const-string/jumbo v2, "systemTimeUs"

    .line 304
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 307
    iget-object v0, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
    :goto_2
    return-void
.end method

.method public final onEdmStateChange(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 5
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v1, "onEdmStateChange("

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ")"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "SystemStateTracker"

    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v2, "edm service ready : "

    .line 43
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-static {v1, v0, p1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 49
    iput-boolean p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    .line 51
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    .line 53
    check-cast p0, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p0

    .line 59
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 71
    if-eqz p1, :cond_0

    .line 73
    const-string/jumbo v1, "ready"

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    const-string/jumbo v1, "not ready"

    .line 80
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 83
    move-result-object v2

    .line 84
    if-nez v2, :cond_1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget v0, v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    .line 89
    invoke-static {v2, v0, v1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method public final onLicenseStateChange(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 5
    iget-object v0, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v3, "onLicenseStateChange("

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, ", "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ")"

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    const-string v2, "SystemStateTracker"

    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    .line 52
    check-cast p0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p0

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 70
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget v1, v1, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    .line 79
    invoke-static {v2, v1, v0, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method

.method public final onLockStateChange(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 5
    iget-object v0, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result v2

    .line 17
    iget-object v3, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 19
    check-cast v3, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v4

    .line 25
    const/4 v5, -0x1

    .line 26
    if-eq v4, v5, :cond_5

    .line 28
    const/4 v5, 0x6

    .line 29
    if-eq v4, v5, :cond_4

    .line 31
    const/4 v5, 0x1

    .line 32
    if-eq v4, v5, :cond_3

    .line 34
    const/4 v5, 0x2

    .line 35
    if-eq v4, v5, :cond_2

    .line 37
    const/4 v5, 0x3

    .line 38
    if-eq v4, v5, :cond_1

    .line 40
    const/4 v5, 0x4

    .line 41
    if-eq v4, v5, :cond_0

    .line 43
    const-string v5, ""

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v5, "PASSWORD"

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v5, "PIN"

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v5, "PASSWORD_OR_PIN"

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-string v5, "PATTERN"

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    const-string v5, "SMARTCARDNUMERIC"

    .line 60
    goto :goto_0

    .line 61
    :cond_5
    const-string v5, "NONE"

    .line 63
    :goto_0
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj4:Ljava/lang/Object;

    .line 65
    check-cast p1, Ljava/lang/String;

    .line 67
    const-string/jumbo v6, "onLockStateChange("

    .line 70
    const-string v7, ", "

    .line 72
    invoke-static {v4, v6, v7, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 75
    move-result-object v4

    .line 76
    const-string v6, ")"

    .line 78
    const-string v7, "SystemStateTracker"

    .line 80
    invoke-static {v4, v6, v7}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v4, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    .line 85
    check-cast v4, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v4

    .line 91
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_6

    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 103
    invoke-virtual {v6, v1, v3, p1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    new-instance v1, Landroid/content/Intent;

    .line 109
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v0, "com.samsung.android.cmfa.framework"

    .line 118
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v0, "result"

    .line 124
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string/jumbo v0, "factorType"

    .line 130
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v0, "localTime"

    .line 136
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public final onPackageStateChange(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 5
    iget-object v0, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 13
    const-string/jumbo v1, "onPackageStateChange("

    .line 16
    const-string v2, ", "

    .line 18
    const-string v3, ")"

    .line 20
    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "SystemStateTracker"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 31
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 49
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget v1, v1, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    .line 58
    invoke-static {v2, v1, v0, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public final onUserStateChange(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 5
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "onUserStateChange("

    .line 12
    const-string v1, ")"

    .line 14
    const-string v2, "SystemStateTracker"

    .line 16
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 21
    check-cast p0, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 39
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget v0, v0, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    .line 48
    invoke-static {v1, v0, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public final stopLicenseStateListener()V
    .locals 2

    .line 1
    const-string/jumbo v0, "enterprise_license_policy"

    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 19
    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    .line 31
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 36
    return-void
.end method

.method public final stopLockStateListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 7
    iget-object v1, v1, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 27
    if-ne v2, v0, :cond_0

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    .line 37
    check-cast p0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 42
    return-void
.end method
