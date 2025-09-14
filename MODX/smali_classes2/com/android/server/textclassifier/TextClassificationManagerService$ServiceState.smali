.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBindServiceFlags:I

.field public mBinding:Z

.field public mBoundComponentName:Landroid/content/ComponentName;

.field public mBoundServiceUid:I

.field public final mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

.field public mEnabled:Z

.field public mInstalled:Z

.field public final mIsTrusted:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

.field public mService:Landroid/service/textclassifier/ITextClassifierService;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "userId"

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    const-string/jumbo v1, "packageName"

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 33
    .line 34
    .line 35
    const-string v1, "installed"

    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 44
    .line 45
    .line 46
    const-string v1, "enabled"

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 55
    .line 56
    .line 57
    const-string v1, "boundComponentName"

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    .line 60
    .line 61
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 62
    .line 63
    .line 64
    const-string v1, "isTrusted"

    .line 65
    .line 66
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 73
    .line 74
    .line 75
    const-string v1, "bindServiceFlags"

    .line 76
    .line 77
    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 84
    .line 85
    .line 86
    const-string v1, "boundServiceUid"

    .line 87
    .line 88
    iget v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 95
    .line 96
    .line 97
    const-string v1, "binding"

    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 106
    .line 107
    .line 108
    const-string/jumbo v1, "numOfPendingRequests"

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 114
    .line 115
    check-cast p0, Ljava/util/ArrayDeque;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p1, v1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 126
    .line 127
    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p0
.end method

.method public static -$$Nest$mhandlePendingRequestsLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/textclassifier/FixedSizeQueue;->mDelegate:Ljava/util/Queue;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, v2

    .line 23
    :goto_1
    const-string v3, "TextClassificationManagerService"

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mUid:I

    .line 28
    .line 29
    iget-object v4, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v1, v4}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mUid:I

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v4, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    .line 44
    .line 45
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v4, "UID %d is not allowed to see the %s request"

    .line 50
    .line 51
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mRequest:Ljava/lang/Runnable;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v4, "Unable to bind TextClassifierService for PendingRequest "

    .line 73
    .line 74
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, v4, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mOnServiceFailure:Ljava/lang/Runnable;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 85
    .line 86
    .line 87
    :goto_2
    iget-object v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;->mBinder:Landroid/os/IBinder;

    .line 88
    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/textclassifier/FixedSizeQueue;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/textclassifier/FixedSizeQueue;-><init>(Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    .line 23
    .line 24
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 25
    .line 26
    iput-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    .line 29
    .line 30
    invoke-direct {v0, p0, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    .line 34
    .line 35
    iput-boolean p4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    const p1, 0x4200001

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const p1, 0x4000001

    .line 50
    .line 51
    .line 52
    :goto_0
    iput p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isPackageInstalledForUser()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final bindLocked()Z
    .locals 10

    .line 1
    const-string v0, "TextClassificationManagerService"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 4
    .line 5
    const-string v2, "Could not bind to "

    .line 6
    .line 7
    const-string v3, "Binding to "

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    :try_start_0
    iget-object v6, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    iget-boolean v7, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    if-eqz v7, :cond_2

    .line 30
    .line 31
    const/high16 v7, 0x100000

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v7, v8

    .line 35
    :goto_1
    iget-object v9, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v6, v9, v7}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    .line 38
    .line 39
    .line 40
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return v8

    .line 47
    :cond_3
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v8, "android.service.textclassifier.TextClassifierService"

    .line 50
    .line 51
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    new-instance v8, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    .line 80
    .line 81
    iget v8, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBindServiceFlags:I

    .line 82
    .line 83
    iget v9, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 84
    .line 85
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v1, v7, v3, v8, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBinding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    return v1

    .line 119
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method

.method public final checkRequestAcceptedLocked(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mIsTrusted:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundServiceUid:I

    .line 6
    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, "["

    .line 11
    .line 12
    const-string p1, "] Non-default TextClassifierServices may only see text from the same uid."

    .line 13
    .line 14
    const-string v0, "TextClassificationManagerService"

    .line 15
    .line 16
    invoke-static {p0, p2, p1, v0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method public final isPackageInstalledForUser()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 13
    .line 14
    invoke-virtual {v1, v2, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :catch_0
    :cond_0
    return v0
.end method

.method public final isServiceEnabledForUser()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v2, "android.service.textclassifier.TextClassifierService"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    iget p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 33
    .line 34
    :goto_0
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_1
    return p0
.end method
