.class public final Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;
.super Landroid/view/autofill/IAutoFillManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 8
    .line 9
    invoke-virtual {v2, p3}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p3, p1, p2, p5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;Z)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    move v0, p1

    .line 20
    :cond_0
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    or-int/lit8 p1, v0, 0x2

    .line 25
    .line 26
    move v0, p1

    .line 27
    :cond_1
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    or-int/lit8 p1, v0, 0x4

    .line 32
    .line 33
    move v0, p1

    .line 34
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {p4, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :catchall_1
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p1

    .line 50
    :try_start_4
    const-string p2, "AutofillManagerService"

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string p5, "addClient(): failed "

    .line 58
    .line 59
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p5

    .line 66
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    return-void

    .line 78
    :goto_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {p4, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public final cancelSession(II)V
    .locals 3

    .line 1
    const-string/jumbo v0, "cancelSession(): no service for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    iget v0, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 39
    .line 40
    if-eq p2, v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeFromServiceLocked()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    const-string/jumbo p0, "cancelSessionLocked(): no session for "

    .line 48
    .line 49
    .line 50
    const-string v0, "("

    .line 51
    .line 52
    const-string v2, ")"

    .line 53
    .line 54
    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "AutofillManagerServiceImpl"

    .line 59
    .line 60
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 67
    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    const-string p0, "AutofillManagerService"

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    monitor-exit v1

    .line 88
    return-void

    .line 89
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public final disableOwnedAutofillServices(I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "cancelSession(): no service for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableOwnedAutofillServicesLocked(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p0, "AutofillManagerService"

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "AutofillManagerService"

    .line 10
    .line 11
    invoke-static {v2, v3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-eqz p3, :cond_5

    .line 19
    .line 20
    array-length v2, p3

    .line 21
    move v3, v0

    .line 22
    move v4, v3

    .line 23
    move v5, v1

    .line 24
    :goto_0
    if-ge v3, v2, :cond_4

    .line 25
    .line 26
    aget-object v6, p3, v3

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v7, -0x1

    .line 32
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    sparse-switch v8, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :sswitch_0
    const-string v8, "--help"

    .line 41
    .line 42
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-nez v8, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v7, 0x2

    .line 50
    goto :goto_1

    .line 51
    :sswitch_1
    const-string v8, "--no-history"

    .line 52
    .line 53
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-nez v8, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v7, v1

    .line 61
    goto :goto_1

    .line 62
    :sswitch_2
    const-string v8, "--ui-only"

    .line 63
    .line 64
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-nez v8, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v7, v0

    .line 72
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 73
    .line 74
    .line 75
    const-string v7, "AutofillManagerService"

    .line 76
    .line 77
    const-string v8, "Ignoring invalid dump arg: "

    .line 78
    .line 79
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :pswitch_0
    const-string p0, "Usage: dumpsys autofill [--ui-only|--no-history]"

    .line 88
    .line 89
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_1
    move v5, v0

    .line 94
    goto :goto_2

    .line 95
    :pswitch_2
    move v4, v1

    .line 96
    :goto_2
    add-int/2addr v3, v1

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    move v0, v4

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    move v5, v1

    .line 101
    :goto_3
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 106
    .line 107
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 112
    .line 113
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 114
    .line 115
    :try_start_0
    sput-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 116
    .line 117
    sput-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 122
    .line 123
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    :try_start_1
    const-string/jumbo v3, "sDebug: "

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 131
    .line 132
    .line 133
    const-string v3, " sVerbose: "

    .line 134
    .line 135
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 139
    .line 140
    .line 141
    const-string v3, "Flags: "

    .line 142
    .line 143
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 147
    .line 148
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 149
    .line 150
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    const-string/jumbo v4, "mPccClassificationEnabled="

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 158
    .line 159
    iget-boolean v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mPccClassificationEnabled:Z

    .line 160
    .line 161
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 162
    .line 163
    .line 164
    const-string v4, ";"

    .line 165
    .line 166
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string/jumbo v4, "mPccPreferProviderOverPcc="

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 176
    .line 177
    iget-boolean v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mPccPreferProviderOverPcc:Z

    .line 178
    .line 179
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 180
    .line 181
    .line 182
    const-string v4, ";"

    .line 183
    .line 184
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string/jumbo v4, "mPccUseFallbackDetection="

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 194
    .line 195
    iget-boolean v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mPccUseFallbackDetection:Z

    .line 196
    .line 197
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 198
    .line 199
    .line 200
    const-string v4, ";"

    .line 201
    .line 202
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string/jumbo v4, "mPccProviderHints="

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 212
    .line 213
    iget-object v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mPccProviderHints:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v4, ";"

    .line 219
    .line 220
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string/jumbo v4, "mAutofillCredmanIntegrationEnabled="

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 230
    .line 231
    iget-boolean v4, v4, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCredmanIntegrationEnabled:Z

    .line 232
    .line 233
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 234
    .line 235
    .line 236
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    :try_start_3
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 238
    .line 239
    invoke-virtual {v3, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 243
    .line 244
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 245
    .line 246
    invoke-virtual {v3, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 250
    .line 251
    .line 252
    const-string v3, "Max partitions per session: "

    .line 253
    .line 254
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    sget v3, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    .line 258
    .line 259
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 260
    .line 261
    .line 262
    const-string v3, "Max visible datasets: "

    .line 263
    .line 264
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    sget v3, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    .line 268
    .line 269
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 270
    .line 271
    .line 272
    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 273
    .line 274
    if-eqz v3, :cond_7

    .line 275
    .line 276
    const-string v3, "Overridden full-screen mode: "

    .line 277
    .line 278
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :catchall_0
    move-exception p0

    .line 288
    goto/16 :goto_6

    .line 289
    .line 290
    :cond_7
    :goto_4
    const-string v3, "User data constraints: "

    .line 291
    .line 292
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string v3, "  "

    .line 296
    .line 297
    invoke-static {v3, p2}, Landroid/service/autofill/UserData;->dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 298
    .line 299
    .line 300
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 301
    .line 302
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 303
    .line 304
    invoke-virtual {v3, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 305
    .line 306
    .line 307
    const-string v3, "Autofill Compat State: "

    .line 308
    .line 309
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 313
    .line 314
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    .line 315
    .line 316
    invoke-static {v3, p2}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->-$$Nest$mdump(Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;Ljava/io/PrintWriter;)V

    .line 317
    .line 318
    .line 319
    const-string/jumbo v3, "from device config: "

    .line 320
    .line 321
    .line 322
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 326
    .line 327
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    const-string/jumbo v4, "compat_mode_allowed_packages"

    .line 331
    .line 332
    .line 333
    const-string v6, "autofill"

    .line 334
    .line 335
    const/4 v7, 0x0

    .line 336
    invoke-static {v6, v4, v7}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-nez v6, :cond_8

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    const-string v4, "autofill_compat_mode_allowed_packages"

    .line 356
    .line 357
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    :goto_5
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 365
    .line 366
    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 367
    .line 368
    if-eqz v3, :cond_9

    .line 369
    .line 370
    const-string v3, "Smart Suggestion modes: "

    .line 371
    .line 372
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 376
    .line 377
    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 378
    .line 379
    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    :cond_9
    const-string v3, "Augmented Service Idle Unbind Timeout: "

    .line 387
    .line 388
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 392
    .line 393
    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    .line 394
    .line 395
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 396
    .line 397
    .line 398
    const-string v3, "Augmented Service Request Timeout: "

    .line 399
    .line 400
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 404
    .line 405
    iget v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    .line 406
    .line 407
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 408
    .line 409
    .line 410
    if-eqz v5, :cond_a

    .line 411
    .line 412
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 413
    .line 414
    .line 415
    const-string v3, "Requests history:"

    .line 416
    .line 417
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 421
    .line 422
    .line 423
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 424
    .line 425
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 426
    .line 427
    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 431
    .line 432
    .line 433
    const-string v3, "UI latency history:"

    .line 434
    .line 435
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 439
    .line 440
    .line 441
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 442
    .line 443
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 444
    .line 445
    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 449
    .line 450
    .line 451
    const-string v3, "WTF history:"

    .line 452
    .line 453
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 457
    .line 458
    .line 459
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 460
    .line 461
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    .line 462
    .line 463
    invoke-virtual {v3, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :cond_a
    const-string p1, "Augmented Autofill State: "

    .line 467
    .line 468
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 472
    .line 473
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 474
    .line 475
    const-string p1, "  "

    .line 476
    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 478
    .line 479
    .line 480
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 482
    .line 483
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 484
    .line 485
    return-void

    .line 486
    :catchall_1
    move-exception p0

    .line 487
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 488
    :try_start_5
    throw p0

    .line 489
    :goto_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 490
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 491
    :catchall_2
    move-exception p0

    .line 492
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 493
    .line 494
    sput-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 495
    .line 496
    throw p0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x35b095a5 -> :sswitch_2
        0x417d0228 -> :sswitch_1
        0x4f7504e1 -> :sswitch_0
    .end sparse-switch

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final finishSession(III)V
    .locals 2

    .line 1
    const-string/jumbo v0, "finishSession(): no service for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->finishSessionLocked(III)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p0, "AutofillManagerService"

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "getAutofillServiceComponentName(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    const-string v4, "AutofillManagerService"

    .line 34
    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 52
    .line 53
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    goto :goto_4

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_4
    const-string v1, "AutofillManagerService"

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v4, "getAutofillServiceComponentName(): failed "

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :goto_3
    return-void

    .line 91
    :goto_4
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 92
    .line 93
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method public final getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "getAvailableFcAlgorithms(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    const-string/jumbo v5, "getFCAlgorithms()"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v0, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    iget-object v0, v4, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    goto :goto_1

    .line 50
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    :try_start_5
    throw v0

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    const-string v4, "AutofillManagerService"

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor([Ljava/lang/String;)Landroid/os/Bundle;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :goto_2
    invoke-static {p1, p0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :goto_3
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 90
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 91
    :catchall_2
    move-exception v0

    .line 92
    goto :goto_5

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_8
    const-string v1, "AutofillManagerService"

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string/jumbo v4, "getAvailableFieldClassificationAlgorithms(): failed "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor([Ljava/lang/String;)Landroid/os/Bundle;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    goto :goto_2

    .line 131
    :goto_4
    return-void

    .line 132
    :goto_5
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor([Ljava/lang/String;)Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {p1, p0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    throw v0
.end method

.method public final getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "getDefaultFcAlgorithm(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    const-string/jumbo v5, "getDefaultFCAlgorithm()"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v0, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    iget-object v0, v4, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    goto :goto_1

    .line 50
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    :try_start_5
    throw v0

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    const-string v4, "AutofillManagerService"

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    :goto_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 77
    .line 78
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :goto_3
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 83
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 84
    :catchall_2
    move-exception v0

    .line 85
    goto :goto_5

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_8
    const-string v1, "AutofillManagerService"

    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v4, "getDefaultFieldClassificationAlgorithm(): failed "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :goto_4
    return-void

    .line 116
    :goto_5
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 117
    .line 118
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0
.end method

.method public final getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "getFillEventHistory(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v4, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const-string v4, "AutofillManagerService"

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 56
    .line 57
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    goto :goto_4

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_4
    const-string v1, "AutofillManagerService"

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v4, "getFillEventHistory(): failed "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :goto_3
    return-void

    .line 95
    :goto_4
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 96
    .line 97
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public final getUserData(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "getUserData(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v4, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const-string v4, "AutofillManagerService"

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 56
    .line 57
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    goto :goto_4

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_4
    const-string v1, "AutofillManagerService"

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v4, "getUserData(): failed "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :goto_3
    return-void

    .line 95
    :goto_4
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 96
    .line 97
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    .line 98
    .line 99
    .line 100
    throw v0
.end method

.method public final getUserDataId(Lcom/android/internal/os/IResultReceiver;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "getUserDataId(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v4, v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    move-object v1, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const-string v4, "AutofillManagerService"

    .line 39
    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    :cond_1
    move-object v0, v2

    .line 56
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v0}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 65
    .line 66
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catchall_1
    move-exception v1

    .line 71
    move-object v6, v1

    .line 72
    move-object v1, v0

    .line 73
    move-object v0, v6

    .line 74
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 75
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    :catchall_2
    move-exception v0

    .line 77
    goto :goto_5

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_3

    .line 80
    :catchall_3
    move-exception v0

    .line 81
    goto :goto_2

    .line 82
    :catchall_4
    move-exception v0

    .line 83
    move-object v1, v2

    .line 84
    goto :goto_5

    .line 85
    :catch_1
    move-exception v0

    .line 86
    move-object v1, v2

    .line 87
    :goto_3
    :try_start_5
    const-string v3, "AutofillManagerService"

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v5, "getUserDataId(): failed "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 112
    .line 113
    .line 114
    if-nez v1, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_1

    .line 122
    :goto_4
    return-void

    .line 123
    :goto_5
    if-nez v1, :cond_4

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_4
    invoke-virtual {v1}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :goto_6
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 131
    .line 132
    invoke-static {p0, p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$msend(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method

.method public final isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "isFieldClassificationEnabled(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, v4, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    const-string/jumbo v5, "isFieldClassificationEnabled"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v0, v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isCalledByServiceLocked(ILjava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    monitor-exit v1

    .line 47
    move v2, v0

    .line 48
    goto :goto_1

    .line 49
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :try_start_3
    throw v0

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    const-string v4, "AutofillManagerService"

    .line 58
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    :goto_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 86
    :catchall_2
    move-exception v0

    .line 87
    goto :goto_5

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_6
    const-string v1, "AutofillManagerService"

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string/jumbo v4, "isFieldClassificationEnabled(): failed "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :goto_4
    return-void

    .line 118
    :goto_5
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method public final isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p3, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception p1

    .line 37
    :try_start_4
    const-string p2, "AutofillManagerService"

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v2, "isServiceEnabled(): failed "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_1
    return-void

    .line 66
    :goto_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {p3, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public final isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    xor-int/lit8 v0, p1, 0x1

    .line 14
    .line 15
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_4
    const-string v1, "AutofillManagerService"

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v3, "isServiceSupported(): failed "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return-void

    .line 60
    :goto_2
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p2, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "token"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :cond_1
    :goto_0
    const-string/jumbo v1, "invalid operation: %d"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "removeClient(): no service for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mClients:Landroid/os/RemoteCallbackList;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p0, "AutofillManagerService"

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    monitor-exit v1

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "restoreSession(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    const-string v3, "activityToken"

    .line 10
    .line 11
    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string v3, "appCallback"

    .line 15
    .line 16
    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 25
    .line 26
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {v4, p1, v0, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const-string p1, "AutofillManagerService"

    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_1
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {p4, v2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    goto :goto_4

    .line 78
    :catch_0
    move-exception p1

    .line 79
    :try_start_4
    const-string p2, "AutofillManagerService"

    .line 80
    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v0, "restoreSession(): failed "

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :goto_3
    return-void

    .line 108
    :goto_4
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {p4, v2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method public final setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "setAugmentedAutofillWhitelist(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 11
    .line 12
    iget-object v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 15
    :try_start_1
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 16
    .line 17
    invoke-virtual {v5, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v5, v0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAugmentedAutofillWhitelistLocked(ILjava/util/List;Ljava/util/List;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    move p2, v3

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const-string p1, "AutofillManagerService"

    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    move p1, v3

    .line 57
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    :goto_1
    move v2, v3

    .line 63
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {p3, v2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catchall_1
    move-exception p2

    .line 71
    move-object v6, p2

    .line 72
    move p2, p1

    .line 73
    move-object p1, v6

    .line 74
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 75
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    :catchall_2
    move-exception p1

    .line 77
    goto :goto_5

    .line 78
    :catch_0
    move-exception p1

    .line 79
    goto :goto_3

    .line 80
    :catchall_3
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :catchall_4
    move-exception p1

    .line 83
    move p2, v3

    .line 84
    goto :goto_5

    .line 85
    :catch_1
    move-exception p1

    .line 86
    move p2, v3

    .line 87
    :goto_3
    :try_start_5
    const-string v0, "AutofillManagerService"

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v4, "setAugmentedAutofillWhitelist(): failed "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 115
    .line 116
    if-eqz p2, :cond_2

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :goto_4
    return-void

    .line 120
    :goto_5
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 121
    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    move v2, v3

    .line 125
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-static {p3, v2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method

.method public final setAuthenticationResult(Landroid/os/Bundle;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p4}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget p2, p0, Lcom/android/server/autofill/Session;->uid:I

    .line 34
    .line 35
    if-ne p4, p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/autofill/Session;->setAuthenticationResultLocked(ILandroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    monitor-exit p2

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    throw p0

    .line 48
    :cond_1
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw p0
.end method

.method public final setAutofillFailure(ILjava/util/List;I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setAutofillFailure(): no service for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAutofillFailureLocked(IILjava/util/List;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p0, "AutofillManagerService"

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final setHasCallback(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setHasCallback(IIZ)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final setUserData(Landroid/service/autofill/UserData;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setUserData(): no service for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setUserData(ILandroid/service/autofill/UserData;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const-string p0, "AutofillManagerService"

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    monitor-exit v2

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final setViewAutofilled(ILandroid/view/autofill/AutofillId;I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setAutofillFailure(): no service for "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setViewAutofilledLocked(ILandroid/view/autofill/AutofillId;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p0, "AutofillManagerService"

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v1, p6

    .line 6
    .line 7
    move-object/from16 v14, p11

    .line 8
    .line 9
    const-string v3, "activityToken"

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v3, "clientCallback"

    .line 15
    .line 16
    .line 17
    move-object/from16 v5, p2

    .line 18
    .line 19
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v3, "autofillId"

    .line 23
    .line 24
    move-object/from16 v6, p3

    .line 25
    .line 26
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v3, "clientActivity"

    .line 30
    .line 31
    .line 32
    move-object/from16 v10, p9

    .line 33
    .line 34
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p9 .. p9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v7, 0x0

    .line 53
    if-ne v1, v4, :cond_0

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v4, v7

    .line 58
    :goto_0
    const-string/jumbo v8, "userId"

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4, v3, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .line 76
    .line 77
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 78
    .line 79
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 80
    .line 81
    invoke-virtual {v3, v2, v7}, Landroid/app/ActivityManagerInternal;->getTaskIdForActivity(Landroid/os/IBinder;Z)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 86
    .line 87
    iget-object v15, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v15

    .line 90
    :try_start_1
    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 91
    .line 92
    invoke-virtual {v4, v1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    iget-object v7, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 101
    .line 102
    iget-boolean v12, v7, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 103
    .line 104
    move-object/from16 v2, p1

    .line 105
    .line 106
    move-object/from16 v5, p2

    .line 107
    .line 108
    move-object/from16 v6, p3

    .line 109
    .line 110
    move-object/from16 v7, p4

    .line 111
    .line 112
    move-object/from16 v8, p5

    .line 113
    .line 114
    move/from16 v9, p7

    .line 115
    .line 116
    move-object/from16 v10, p9

    .line 117
    .line 118
    move/from16 v11, p10

    .line 119
    .line 120
    move/from16 v13, p8

    .line 121
    .line 122
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->startSessionLocked(Landroid/os/IBinder;IILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    long-to-int v3, v1

    .line 128
    const/16 v4, 0x20

    .line 129
    .line 130
    shr-long/2addr v1, v4

    .line 131
    long-to-int v1, v1

    .line 132
    if-eqz v1, :cond_1

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(I)Landroid/os/Bundle;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v14, v3, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "Error async reporting result to client: "

    .line 149
    .line 150
    const-string v2, "AutofillManagerService"

    .line 151
    .line 152
    invoke-static {v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_1
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v14, v3}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 162
    .line 163
    .line 164
    :goto_1
    return-void

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    throw v0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    const-string v2, " is not a valid package"

    .line 172
    .line 173
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    throw v1
.end method

.method public final updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p7

    .line 3
    .line 4
    const-string/jumbo v2, "updateSession(): no service for "

    .line 5
    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserWithLocalBinderIdentityLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/view/autofill/IAutoFillManager$Stub;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v9

    .line 24
    move v5, p1

    .line 25
    move-object v6, p2

    .line 26
    move-object v7, p3

    .line 27
    move-object/from16 v8, p4

    .line 28
    .line 29
    move/from16 v10, p5

    .line 30
    .line 31
    move/from16 v11, p6

    .line 32
    .line 33
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateSessionLocked(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v0, "AutofillManagerService"

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    monitor-exit v3

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw v0
.end method
