.class public final Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

.field public final mConnectionId:I

.field public final mDefaultDisplay:Landroid/view/Display;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 9
    .line 10
    new-instance v4, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-string/jumbo v1, "com.android.server.accessibility"

    .line 13
    .line 14
    .line 15
    const-string v2, "InteractionBridge"

    .line 16
    .line 17
    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 21
    .line 22
    invoke-direct {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v5, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 27
    .line 28
    .line 29
    iget v2, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 30
    .line 31
    or-int/lit8 v2, v2, 0x42

    .line 32
    .line 33
    iput v2, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 34
    .line 35
    invoke-virtual {v5, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setAccessibilityTool(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget v2, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 42
    .line 43
    invoke-virtual {v15, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    new-instance v14, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge$1;

    .line 49
    .line 50
    iget-object v3, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    sget v6, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 53
    .line 54
    add-int/lit8 v1, v6, 0x1

    .line 55
    .line 56
    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 57
    .line 58
    iget-object v7, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 59
    .line 60
    iget-object v8, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v9, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 63
    .line 64
    iget-object v11, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 65
    .line 66
    iget-object v12, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    iget-object v10, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 73
    .line 74
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 75
    .line 76
    move-object/from16 v16, v1

    .line 77
    .line 78
    move-object v1, v14

    .line 79
    move-object/from16 v17, v10

    .line 80
    .line 81
    move-object/from16 v10, p1

    .line 82
    .line 83
    move-object v0, v14

    .line 84
    move-object/from16 v14, v17

    .line 85
    .line 86
    move-object/from16 v15, v16

    .line 87
    .line 88
    invoke-direct/range {v1 .. v15}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    .line 89
    .line 90
    .line 91
    iget v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    move-object/from16 v0, p0

    .line 95
    .line 96
    iput v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 97
    .line 98
    move-object/from16 v3, p1

    .line 99
    .line 100
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iput-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    invoke-static {v1, v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    const-string/jumbo v2, "display"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 122
    .line 123
    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    .line 128
    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    throw v0
.end method


# virtual methods
.method public final getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDefaultFocus(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v5, v1, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 25
    .line 26
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 27
    .line 28
    const/4 v8, 0x2

    .line 29
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 30
    .line 31
    invoke-virtual/range {v3 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method
