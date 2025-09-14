.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public final mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public static -$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    move-object v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v0, p1, p2, v3, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 28
    .line 29
    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :goto_1
    iput-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "Default"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "System"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "Untrusted"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V
    .locals 1

    .line 8
    const-string v0, ": "

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 10
    invoke-static {p2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$mdump(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getAllServiceStatesLocked()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_2
    return-object v0
.end method

.method public final getServiceStateLocked(Z)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationConstants;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 29
    .line 30
    if-nez v2, :cond_4

    .line 31
    .line 32
    iget-object v2, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    iget v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    .line 60
    .line 61
    invoke-direct {v0, p1, v3, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 65
    .line 66
    :cond_3
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_4
    if-eqz v3, :cond_5

    .line 70
    .line 71
    move-object v0, v3

    .line 72
    :cond_5
    return-object v0
.end method

.method public final onTextClassifierServicePackageOverrideChangedLocked()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 23
    .line 24
    iget-object v3, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "Unbinding "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, " for "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v4, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    .line 46
    .line 47
    const-string v5, "TextClassificationManagerService"

    .line 48
    .line 49
    invoke-static {v3, v4, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->init(Landroid/service/textclassifier/ITextClassifierService;Landroid/content/ComponentName;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iput-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    .line 66
    .line 67
    return-void
.end method
