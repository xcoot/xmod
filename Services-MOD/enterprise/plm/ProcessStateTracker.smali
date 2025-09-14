.class public final Lcom/android/server/enterprise/plm/ProcessStateTracker;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/plm/IStateDelegate;


# instance fields
.field public final mAdapters:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public mStarted:Z

.field public final mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 11
    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 13
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/plm/SystemStateTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 18
    iput-object p2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    .line 20
    check-cast p3, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 38
    iput-object p0, p2, Lcom/android/server/enterprise/plm/ProcessAdapter;->mStateDelegate:Lcom/android/server/enterprise/plm/IStateDelegate;

    .line 40
    iget-object p3, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 42
    iget-object v0, p2, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 44
    iget-object v0, v0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 46
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    check-cast p3, Ljava/util/HashMap;

    .line 52
    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
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
    const-string v3, "ProcessStateTracker"

    .line 15
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const-string v2, ""

    .line 22
    packed-switch v1, :pswitch_data_0

    .line 25
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget p1, p1, Landroid/os/Message;->what:I

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto/16 :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_0

    .line 47
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 49
    if-nez v0, :cond_0

    .line 51
    goto/16 :goto_1

    .line 53
    :cond_0
    const-string/jumbo v0, "onLockUpdate"

    .line 56
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 63
    if-nez p1, :cond_1

    .line 65
    goto/16 :goto_1

    .line 67
    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 69
    check-cast p1, Ljava/lang/String;

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 77
    goto/16 :goto_1

    .line 79
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 81
    if-nez v0, :cond_2

    .line 83
    goto/16 :goto_1

    .line 85
    :cond_2
    const-string/jumbo v0, "onEdmUpdate"

    .line 88
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 95
    if-nez p1, :cond_3

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 100
    check-cast p1, Ljava/lang/String;

    .line 102
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 108
    goto :goto_1

    .line 109
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 111
    if-nez v0, :cond_4

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const-string/jumbo v0, "onBootUpdate"

    .line 117
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 124
    if-nez p1, :cond_5

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 129
    check-cast p1, Ljava/lang/String;

    .line 131
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 137
    goto :goto_1

    .line 138
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 140
    if-nez v0, :cond_6

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    const-string/jumbo v0, "onUserUpdate"

    .line 146
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 153
    if-nez p1, :cond_7

    .line 155
    goto :goto_1

    .line 156
    :cond_7
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 158
    check-cast p1, Ljava/lang/String;

    .line 160
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 166
    goto :goto_1

    .line 167
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onPackageUpdate(Landroid/os/Message;)V

    .line 170
    goto :goto_1

    .line 171
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onLicenseUpdate(Landroid/os/Message;)V

    .line 174
    goto :goto_1

    .line 175
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStop()V

    .line 178
    goto :goto_1

    .line 179
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStart(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    goto :goto_1

    .line 183
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 186
    move-result-object p0

    .line 187
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_1
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isKlmActivated()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "SystemStateTracker"

    .line 8
    const-string/jumbo v1, "isKlmActive : "

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object p0

    .line 18
    const-string/jumbo v3, "klm_activated"

    .line 21
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 24
    move-result p0

    .line 25
    if-lez p0, :cond_0

    .line 27
    const/4 v2, 0x1

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return v2
.end method

.method public final notifyUpdateToAdapters(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "notify update for "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string v1, "all"

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, p1

    .line 19
    :goto_0
    const-string v2, "ProcessStateTracker"

    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 26
    check-cast p0, Ljava/util/HashMap;

    .line 28
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 36
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_4

    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 54
    if-nez v0, :cond_2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result v1

    .line 61
    iget-object v3, v0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 63
    if-nez v1, :cond_3

    .line 65
    iget-object v1, v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 67
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 77
    :cond_3
    iget-object v1, v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 79
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    const-string/jumbo v3, "notify update to "

    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x5

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_1

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    return-void
.end method

.method public final onLicenseUpdate(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ProcessStateTracker"

    .line 8
    const-string/jumbo v1, "onLicenseUpdate"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 18
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 25
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v3, "license "

    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    if-eqz p1, :cond_2

    .line 43
    const-string p1, "activated"

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string/jumbo p1, "deactivated"

    .line 49
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string p1, " on "

    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string p1, ""

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final onPackageUpdate(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ProcessStateTracker"

    .line 8
    const-string/jumbo v1, "onPackageUpdate"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 18
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 25
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, " "

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p1, ":"

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 59
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    const-string v3, "Utils"

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 p1, 0x0

    .line 72
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public final onTrackerStart(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 10
    check-cast p1, Lcom/android/server/enterprise/plm/StartReason;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v1, "onTrackerStart : "

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "ProcessStateTracker"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 34
    const/4 v2, 0x5

    .line 35
    iget-object v3, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 37
    if-nez v0, :cond_b

    .line 39
    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLicenseStateListener()V

    .line 42
    const-string/jumbo v0, "enterprise_license_policy"

    .line 45
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 51
    if-eqz v0, :cond_1

    .line 53
    new-instance v4, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 55
    invoke-direct {v4, v3}, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    .line 58
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 63
    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 72
    const/4 v4, 0x0

    .line 73
    if-eqz v0, :cond_2

    .line 75
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 82
    :cond_2
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 84
    check-cast v0, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    new-instance v8, Landroid/content/IntentFilter;

    .line 91
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 96
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "package"

    .line 102
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    .line 107
    check-cast v0, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v0

    .line 113
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_3

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Ljava/lang/String;

    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-virtual {v8, v5, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_4

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    new-instance v6, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-direct {v6, v3, v0}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    .line 143
    iput-object v6, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 145
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 147
    sget-object v7, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v10, 0x0

    .line 151
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 154
    :goto_1
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 156
    if-eqz v0, :cond_5

    .line 158
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 165
    :cond_5
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 167
    check-cast v0, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    .line 174
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string v5, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 179
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 184
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v5, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 189
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v5, "android.intent.action.USER_UNLOCKED"

    .line 194
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 200
    move-result v5

    .line 201
    if-nez v5, :cond_6

    .line 203
    goto :goto_2

    .line 204
    :cond_6
    new-instance v5, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 206
    const/4 v6, 0x2

    .line 207
    invoke-direct {v5, v3, v6}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    .line 210
    iput-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 212
    iget-object v6, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 214
    const/4 v7, 0x2

    .line 215
    invoke-virtual {v6, v5, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 218
    :goto_2
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 220
    if-eqz v0, :cond_7

    .line 222
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 229
    :cond_7
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 231
    check-cast v0, Ljava/util/ArrayList;

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    .line 238
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 244
    move-result v4

    .line 245
    if-nez v4, :cond_8

    .line 247
    goto :goto_3

    .line 248
    :cond_8
    new-instance v4, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 250
    const/4 v5, 0x0

    .line 251
    invoke-direct {v4, v3, v5}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    .line 254
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 256
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v5, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    :goto_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLockStateListener()V

    .line 264
    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 266
    invoke-direct {v0, v3}, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    .line 269
    iput-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 271
    iget-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 273
    iget-object v4, v4, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    .line 275
    check-cast v4, Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    .line 282
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 284
    const/4 v5, 0x3

    .line 285
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 288
    check-cast v0, Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 295
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 297
    const/4 v5, 0x4

    .line 298
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 301
    check-cast v0, Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 308
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 310
    invoke-direct {v4, v2, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 313
    check-cast v0, Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 320
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 322
    const/4 v5, 0x6

    .line 323
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 326
    check-cast v0, Ljava/util/ArrayList;

    .line 328
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    .line 333
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 335
    const/4 v5, 0x7

    .line 336
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 339
    check-cast v0, Ljava/util/ArrayList;

    .line 341
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    .line 346
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 348
    const/16 v5, 0x8

    .line 350
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 353
    check-cast v0, Ljava/util/ArrayList;

    .line 355
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 360
    check-cast v0, Ljava/util/HashMap;

    .line 362
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 365
    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 369
    move-result-object v0

    .line 370
    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    move-result v4

    .line 374
    const/4 v5, 0x1

    .line 375
    if-eqz v4, :cond_a

    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    move-result-object v4

    .line 381
    check-cast v4, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 386
    move-result-object v4

    .line 387
    check-cast v4, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 389
    if-eqz v4, :cond_9

    .line 391
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    goto :goto_4

    .line 395
    :cond_a
    const-string/jumbo v0, "start : true"

    .line 398
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iput-boolean v5, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 403
    :cond_b
    sget-object p0, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    .line 405
    if-ne p1, p0, :cond_c

    .line 407
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 412
    invoke-static {v3, v2, p0}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 415
    move-result-object p0

    .line 416
    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 419
    :cond_c
    return-void
.end method

.method public final onTrackerStop()V
    .locals 5

    .line 1
    const-string/jumbo v0, "onTrackerStop"

    .line 4
    const-string v1, "ProcessStateTracker"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 11
    if-eqz v0, :cond_11

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    iget-object v2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 19
    check-cast v2, Ljava/util/HashMap;

    .line 21
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 47
    if-eqz v3, :cond_0

    .line 49
    const/4 v4, 0x2

    .line 50
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 56
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    .line 58
    check-cast v3, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v3

    .line 64
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 76
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 79
    move-result-object v4

    .line 80
    if-ne v4, p0, :cond_2

    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 85
    :cond_3
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    .line 87
    check-cast v3, Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v3

    .line 93
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_5

    .line 99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 105
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 108
    move-result-object v4

    .line 109
    if-ne v4, p0, :cond_4

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 114
    :cond_5
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 116
    check-cast v3, Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v3

    .line 122
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_7

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 134
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 137
    move-result-object v4

    .line 138
    if-ne v4, p0, :cond_6

    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 143
    :cond_7
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 145
    check-cast v3, Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    move-result-object v3

    .line 151
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_9

    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 163
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 166
    move-result-object v4

    .line 167
    if-ne v4, p0, :cond_8

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 172
    :cond_9
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 174
    check-cast v3, Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object v3

    .line 180
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_b

    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 192
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 195
    move-result-object v4

    .line 196
    if-ne v4, p0, :cond_a

    .line 198
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 201
    :cond_b
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    .line 203
    check-cast v3, Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    move-result-object v3

    .line 209
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_d

    .line 215
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 221
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 224
    move-result-object v4

    .line 225
    if-ne v4, p0, :cond_c

    .line 227
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 230
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLockStateListener()V

    .line 233
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 235
    if-eqz v3, :cond_e

    .line 237
    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 244
    :cond_e
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 246
    check-cast v3, Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 253
    if-eqz v3, :cond_f

    .line 255
    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 262
    :cond_f
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 264
    check-cast v3, Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 269
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 271
    if-eqz v3, :cond_10

    .line 273
    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 280
    :cond_10
    iget-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 282
    check-cast v0, Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLicenseStateListener()V

    .line 290
    const-string/jumbo v0, "start : false"

    .line 293
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 299
    :cond_11
    return-void
.end method
