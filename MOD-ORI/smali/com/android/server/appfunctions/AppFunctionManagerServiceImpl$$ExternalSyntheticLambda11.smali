.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

.field public final synthetic f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final synthetic f$5:Landroid/os/ICancellationSignal;

.field public final synthetic f$6:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$2:Landroid/os/UserHandle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$5:Landroid/os/ICancellationSignal;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$6:Landroid/os/IBinder;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v12, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$2:Landroid/os/UserHandle;

    .line 8
    .line 9
    iget-object v13, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$5:Landroid/os/ICancellationSignal;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$6:Landroid/os/IBinder;

    .line 16
    .line 17
    move-object/from16 v5, p1

    .line 18
    .line 19
    check-cast v5, Ljava/lang/Void;

    .line 20
    .line 21
    iget-object v5, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 22
    .line 23
    invoke-interface {v5, v2, v12}, Lcom/android/server/appfunctions/ServiceHelper;->resolveAppFunctionService(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v14, 0x7d0

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 32
    .line 33
    const-string v1, "Cannot find the target service."

    .line 34
    .line 35
    invoke-direct {v0, v14, v1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v13, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    invoke-static {v4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    new-instance v4, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

    .line 48
    .line 49
    invoke-direct {v4, v15}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;-><init>(Landroid/os/CancellationSignal;)V

    .line 50
    .line 51
    .line 52
    iget-object v5, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 55
    .line 56
    check-cast v1, Lcom/android/server/appfunctions/ServiceConfigImpl;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string v1, "appfunctions"

    .line 62
    .line 63
    const-string/jumbo v6, "execute_app_function_cancellation_timeout_millis"

    .line 64
    .line 65
    .line 66
    const-wide/16 v7, 0x1388

    .line 67
    .line 68
    invoke-static {v1, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    new-instance v10, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 73
    .line 74
    invoke-direct {v10, v3, v4, v13}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    .line 75
    .line 76
    .line 77
    move-object v1, v5

    .line 78
    check-cast v1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v11, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 84
    .line 85
    move-object v3, v11

    .line 86
    move-object v4, v1

    .line 87
    move-object v5, v2

    .line 88
    move-object v6, v12

    .line 89
    move-object v9, v15

    .line 90
    move-object v14, v11

    .line 91
    move-object v11, v0

    .line 92
    invoke-direct/range {v3 .. v11}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;Landroid/content/Intent;Landroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Landroid/os/IBinder;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    const v3, 0x4000001

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2, v14, v3, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v2, v14}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v15, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

    .line 115
    .line 116
    invoke-direct {v2, v14}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    .line 117
    .line 118
    .line 119
    iput-object v2, v14, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mDirectServiceVulture:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    move-object v2, v0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v3, "Failed to link to death on "

    .line 131
    .line 132
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v3, v14, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v3, ": "

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v3, "AppFunctionsServiceCall"

    .line 150
    .line 151
    invoke-static {v3, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v14}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 156
    .line 157
    .line 158
    :goto_0
    if-nez v1, :cond_2

    .line 159
    .line 160
    const-string v0, "AppFunctionManagerServiceImpl"

    .line 161
    .line 162
    const-string v1, "Failed to bind to the AppFunctionService"

    .line 163
    .line 164
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 168
    .line 169
    const-string v1, "Failed to bind the AppFunctionService."

    .line 170
    .line 171
    const/16 v2, 0x7d0

    .line 172
    .line 173
    invoke-direct {v0, v2, v1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    :goto_1
    return-void
.end method
