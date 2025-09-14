.class Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final mClientToken:Landroid/os/IBinder;

.field public mContainer:Lcom/android/server/wm/WindowContainer;

.field public mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

.field public mHasPendingConfiguration:Z

.field public mLastReportedConfig:Landroid/content/res/Configuration;

.field public mLastReportedDisplay:I

.field public final mOptions:Landroid/os/Bundle;

.field public final mType:I

.field public final mWpc:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic this$0:Lcom/android/server/wm/WindowContextListenerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContextListenerController;Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;ILandroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mWpc:Lcom/android/server/wm/WindowProcessController;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 12
    .line 13
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p4, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    iput p5, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mType:I

    .line 19
    .line 20
    iput-object p6, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOptions:Landroid/os/Bundle;

    .line 21
    .line 22
    new-instance p1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;-><init>(Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;)V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    :try_start_0
    invoke-interface {p3, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_ERROR_enabled:[Z

    .line 35
    .line 36
    const/4 p2, 0x4

    .line 37
    aget-boolean p1, p1, p2

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 52
    .line 53
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const/4 v3, 0x0

    .line 58
    const-string v4, "Could not register window container listener token=%s, container=%s"

    .line 59
    .line 60
    const-wide v1, 0x553367a1fc813be5L    # 2.7163645882363945E102

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final dispatchWindowContextInfoChange()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mOptions:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/window/WindowProviderService;->isWindowProviderService(Landroid/os/Bundle;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 27
    .line 28
    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    .line 29
    .line 30
    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    new-instance v2, Landroid/content/res/Configuration;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 58
    .line 59
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    iget v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 68
    .line 69
    if-ne v0, v2, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 75
    .line 76
    .line 77
    iput v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 80
    .line 81
    invoke-static {v2, v1, v0}, Landroid/app/servertransaction/WindowContextInfoChangeItem;->obtain(Landroid/os/IBinder;Landroid/content/res/Configuration;I)Landroid/app/servertransaction/WindowContextInfoChangeItem;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mWpc:Lcom/android/server/wm/WindowProcessController;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "Invalid client token: "

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0
.end method

.method public getWindowContainer()Lcom/android/server/wm/WindowContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->dispatchWindowContextInfoChange()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->dispatchWindowContextInfoChange()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRemoved()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget v2, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    .line 32
    .line 33
    iget-boolean v4, v0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 34
    .line 35
    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/wm/DisplayContent;->findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->updateContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;->this$1:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->obtain(Landroid/os/IBinder;)Landroid/app/servertransaction/WindowContextWindowRemovalItem;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mWpc:Lcom/android/server/wm/WindowProcessController;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->unregister()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Invalid client token: "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public final register(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mDeathRecipient:Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl$DeathRecipient;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p0}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "Invalid client token: "

    .line 25
    .line 26
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WindowContextListenerImpl{clientToken="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", container="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string/jumbo p0, "}"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final unregister()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->this$0:Lcom/android/server/wm/WindowContextListenerController;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mClientToken:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final updateContainer(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mLastReportedDisplay:I

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->register(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
