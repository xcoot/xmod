.class public final synthetic Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "serviceConnection="

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    iput-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iput-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 32
    .line 33
    invoke-interface {v5, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->addWindowTokensForAllDisplays()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 45
    .line 46
    const-wide/16 v5, 0x2

    .line 47
    .line 48
    invoke-interface {v1, v5, v6}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 55
    .line 56
    const-string v3, "UiAutomationService.connectServiceUnknownThread"

    .line 57
    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ";connectionId="

    .line 67
    .line 68
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 72
    .line 73
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v0, "windowToken="

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v1, v3, v5, v6, v0}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto :goto_3

    .line 101
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/os/IBinder;

    .line 110
    .line 111
    invoke-interface {v2, p0, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    :goto_3
    const-string v1, "UiAutomationManager"

    .line 118
    .line 119
    const-string v2, "Error initializing connection"

    .line 120
    .line 121
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_4
    return-void
.end method
