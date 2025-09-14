.class public final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static CORE_DEFER_UNTIL_ACTIVE:Z

.field public static final EMPTY_RECEIVERS:Ljava/util/List;


# instance fields
.field public final alarm:Z

.field public anrCount:I

.field public final appOp:I

.field public beyondCount:I

.field public final blockedUntilBeyondCount:[I

.field public final callerApp:Lcom/android/server/am/ProcessRecord;

.field public final callerFeatureId:Ljava/lang/String;

.field public final callerInstantApp:Z

.field public final callerInstrumented:Z

.field public final callerPackage:Ljava/lang/String;

.field public final callerProcState:I

.field public final callingPid:I

.field public final callingUid:I

.field public final deferUntilActive:Z

.field public final delivery:[I

.field public final deliveryReasons:[Ljava/lang/String;

.field public dispatchClockTime:J

.field public dispatchRealTime:J

.field public dispatchTime:J

.field public enqueueClockTime:J

.field public enqueueRealTime:J

.field public enqueueTime:J

.field public final excludedPackages:[Ljava/lang/String;

.field public final excludedPermissions:[Ljava/lang/String;

.field public final filterExtrasForReceiver:Ljava/util/function/BiFunction;

.field public finishTime:J

.field public hadResultTo:Z

.field public final initialSticky:Z

.field public final intent:Landroid/content/Intent;

.field public final interactive:Z

.field public final mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mCounted:Z

.field public final mMARsTargetReceiver:Ljava/util/ArrayList;

.field public mMatchingRecordsCache:Landroid/util/ArrayMap;

.field public nextReceiver:I

.field public final options:Landroid/app/BroadcastOptions;

.field public final ordered:Z

.field public originalEnqueueClockTime:J

.field public final originalStickyCallingUid:I

.field public final prioritized:Z

.field public final pushMessage:Z

.field public final pushMessageOverQuota:Z

.field public final queue:Lcom/android/server/am/BroadcastQueue;

.field public final receiverTime:J

.field public final receivers:Ljava/util/List;

.field public final receiversDispatchTime:[J

.field public final receiversExtraTime:[Ljava/lang/String;

.field public final receiversFinishTime:[J

.field public final requiredPermissions:[Ljava/lang/String;

.field public final resolvedType:Ljava/lang/String;

.field public resultAbort:Z

.field public resultCode:I

.field public resultData:Ljava/lang/String;

.field public resultExtras:Landroid/os/Bundle;

.field public resultTo:Landroid/content/IIntentReceiver;

.field public final resultToApp:Lcom/android/server/am/ProcessRecord;

.field public final scheduledTime:[J

.field public final shareIdentity:Z

.field public final state:I

.field public final sticky:Z

.field public final targetComp:Landroid/content/ComponentName;

.field public terminalCount:I

.field public final terminalTime:[J

.field public final timeoutExempt:Z

.field public final urgent:Z

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v24, p23

    move-object/from16 v26, p24

    move/from16 v27, p25

    move-object/from16 v28, p26

    move/from16 v29, p27

    const/16 v23, 0x0

    const/16 v25, -0x1

    .line 1
    invoke-direct/range {v0 .. v29}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;I)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p7

    move-object/from16 v4, p14

    move-object/from16 v5, p17

    move/from16 v6, p21

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    if-eqz v1, :cond_c

    move-object v7, p1

    .line 3
    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 4
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 6
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v7, p4

    .line 7
    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v7, p5

    .line 8
    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    move/from16 v7, p6

    .line 9
    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 10
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v7, p29

    .line 11
    iput v7, v0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    move/from16 v7, p8

    .line 12
    iput-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 13
    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    const/16 v10, 0x7d0

    if-eq v7, v10, :cond_1

    if-eqz v2, :cond_0

    .line 14
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v8

    .line 15
    :goto_1
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    move-object/from16 v2, p9

    .line 16
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v2, p10

    .line 17
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v2, p11

    .line 18
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 v2, p12

    .line 19
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move/from16 v2, p13

    .line 20
    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 21
    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz p15, :cond_2

    move-object/from16 v2, p15

    goto :goto_2

    .line 22
    :cond_2
    sget-object v2, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    :goto_2
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 23
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10, v11}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    if-eqz p15, :cond_3

    .line 24
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v9

    :goto_3
    new-array v10, v7, [I

    iput-object v10, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 25
    new-array v10, v7, [Ljava/lang/String;

    iput-object v10, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 26
    invoke-static {p2, v4}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 27
    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 28
    invoke-static {v2, v6}, Lcom/android/server/am/BroadcastRecord;->calculateBlockedUntilBeyondCount(Ljava/util/List;Z)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 29
    new-array v2, v7, [J

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 30
    new-array v2, v7, [J

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    move-object/from16 v2, p16

    .line 31
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 32
    iput-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move/from16 v2, p18

    .line 33
    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v2, p19

    .line 34
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v2, p20

    .line 35
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 36
    iput-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v2, p22

    .line 37
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v2, p23

    .line 38
    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 39
    invoke-static {v1, v6}, Lcom/android/server/am/BroadcastRecord;->isPrioritized([IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    move/from16 v1, p24

    .line 40
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 41
    iput v9, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 42
    iput v9, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    move-object/from16 v1, p26

    .line 43
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    move/from16 v1, p27

    .line 44
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-eqz v4, :cond_4

    .line 45
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v8

    goto :goto_4

    :cond_4
    move v1, v9

    :goto_4
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v4, :cond_5

    .line 46
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isPushMessagingBroadcast()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v8

    goto :goto_5

    :cond_5
    move v1, v9

    :goto_5
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v4, :cond_6

    .line 47
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isPushMessagingOverQuotaBroadcast()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v8

    goto :goto_6

    :cond_6
    move v1, v9

    :goto_6
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v4, :cond_7

    .line 48
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v8

    goto :goto_7

    :cond_7
    move v1, v9

    :goto_7
    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v4, :cond_8

    .line 49
    invoke-virtual/range {p14 .. p14}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move v8, v9

    :goto_8
    iput-boolean v8, v0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    move-object/from16 v1, p28

    .line 50
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    move/from16 v1, p25

    .line 51
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    if-eqz p15, :cond_9

    .line 52
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v9

    :goto_9
    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    if-eqz p15, :cond_a

    .line 53
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v9

    :goto_a
    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    if-eqz p15, :cond_b

    .line 54
    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v9

    :cond_b
    new-array v1, v9, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    return-void

    .line 55
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t construct with a null intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 59
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 60
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 61
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    .line 62
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 63
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 64
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 65
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 66
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    .line 67
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 68
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 69
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 70
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 71
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 72
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 73
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 74
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 75
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 76
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 77
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 78
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    .line 80
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 81
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 82
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    .line 83
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 84
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 85
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 86
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    .line 87
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 88
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 89
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 90
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 91
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 92
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 93
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 94
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 95
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 96
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 97
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 98
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 99
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 100
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 101
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 102
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 103
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 104
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 105
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 106
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    .line 107
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    .line 108
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    .line 109
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    .line 110
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    .line 111
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    .line 112
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    .line 113
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    .line 114
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    .line 115
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    .line 116
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    return-void
.end method

.method public static calculateBlockedUntilBeyondCount(Ljava/util/List;Z)[I
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v2, v0, :cond_4

    .line 12
    if-eqz p1, :cond_0

    .line 14
    aput v2, v1, v2

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    instance-of v6, v5, Lcom/android/server/am/BroadcastFilter;

    .line 23
    if-eqz v6, :cond_1

    .line 25
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .line 27
    invoke-virtual {v5}, Landroid/content/IntentFilter;->getPriority()I

    .line 30
    move-result v5

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 34
    iget v5, v5, Landroid/content/pm/ResolveInfo;->priority:I

    .line 36
    :goto_1
    if-eqz v2, :cond_3

    .line 38
    if-eq v5, v3, :cond_2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    aput v4, v1, v2

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    :goto_2
    aput v2, v1, v2

    .line 46
    move v4, v2

    .line 47
    move v3, v5

    .line 48
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    if-lez v0, :cond_5

    .line 53
    add-int/lit8 v0, v0, -0x1

    .line 55
    aget p0, v1, v0

    .line 57
    if-nez p0, :cond_5

    .line 59
    const/4 p0, -0x1

    .line 60
    invoke-static {v1, p0}, Ljava/util/Arrays;->fill([II)V

    .line 63
    :cond_5
    return-object v1
.end method

.method public static calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_1

    .line 8
    if-eqz p2, :cond_1

    .line 10
    return v1

    .line 11
    :cond_1
    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->getDeferralPolicy()I

    .line 16
    move-result p1

    .line 17
    if-eq p1, v1, :cond_3

    .line 19
    const/4 p2, 0x2

    .line 20
    if-eq p1, p2, :cond_2

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    return v1

    .line 24
    :cond_3
    return v0

    .line 25
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 27
    return v0

    .line 28
    :cond_5
    sget-boolean p1, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    .line 30
    if-eqz p1, :cond_6

    .line 32
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_6

    .line 38
    return v1

    .line 39
    :cond_6
    return v0
.end method

.method public static calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    .line 4
    move-result p0

    .line 5
    const/high16 v0, 0x10000000

    .line 7
    and-int/2addr p0, v0

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p0, :cond_0

    .line 11
    return v0

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 20
    return v0

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 27
    return v0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public static deliveryStateToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "DEFERRED"

    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "FAILURE"

    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "SCHEDULED"

    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "TIMEOUT"

    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "SKIPPED"

    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "DELIVERED"

    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "PENDING"

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 11
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 13
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 15
    return-object p0

    .line 16
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 18
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 22
    return-object p0
.end method

.method public static getReceiverUid(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .line 7
    iget p0, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 9
    return p0

    .line 10
    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 12
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 14
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 18
    return p0
.end method

.method public static isDeliveryStateTerminal(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p0, v1, :cond_0

    .line 10
    const/4 v1, 0x5

    .line 11
    if-eq p0, v1, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    return v0
.end method

.method public static isPrioritized([IZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    array-length p1, p0

    .line 5
    if-lez p1, :cond_0

    .line 7
    aget p0, p0, v0

    .line 9
    const/4 p1, -0x1

    .line 10
    if-eq p0, p1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    :cond_0
    return v0
.end method

.method public static isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p0, Landroid/content/pm/ResolveInfo;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 10
    instance-of v1, p1, Landroid/content/pm/ResolveInfo;

    .line 12
    if-eqz v1, :cond_2

    .line 14
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 16
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 18
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 22
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 24
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 26
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 32
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 34
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 36
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 38
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 40
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v2

    .line 48
    :goto_0
    return v0

    .line 49
    :cond_2
    return v2
.end method


# virtual methods
.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ne p3, v2, :cond_1

    .line 11
    move v4, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move v4, v1

    .line 14
    :goto_0
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 16
    if-ne v5, v2, :cond_2

    .line 18
    move v2, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    move v2, v1

    .line 21
    :goto_1
    if-eq v5, p3, :cond_3

    .line 23
    if-nez v4, :cond_3

    .line 25
    if-nez v2, :cond_3

    .line 27
    return v1

    .line 28
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    move-result v0

    .line 32
    sub-int/2addr v0, v3

    .line 33
    :goto_2
    if-ltz v0, :cond_a

    .line 35
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 37
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    instance-of v5, v2, Landroid/content/pm/ResolveInfo;

    .line 43
    if-nez v5, :cond_4

    .line 45
    goto :goto_3

    .line 46
    :cond_4
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 48
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 50
    if-eqz p1, :cond_5

    .line 52
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 56
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_9

    .line 62
    if-eqz p2, :cond_5

    .line 64
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 66
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_9

    .line 72
    :cond_5
    if-nez v4, :cond_6

    .line 74
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 76
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 78
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 81
    move-result v2

    .line 82
    if-ne v2, p3, :cond_9

    .line 84
    :cond_6
    if-nez p4, :cond_7

    .line 86
    return v3

    .line 87
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 94
    if-ge v0, v1, :cond_8

    .line 96
    add-int/lit8 v1, v1, -0x1

    .line 98
    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 100
    :cond_8
    move v1, v3

    .line 101
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_a
    iget p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 106
    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 111
    move-result p2

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 118
    return v1
.end method

.method public final containsReceiver(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 16
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    move-result-wide v3

    .line 11
    const-string v5, "    "

    .line 13
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 19
    const-string v6, " to user "

    .line 21
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 26
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 29
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 34
    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 43
    if-eqz v6, :cond_0

    .line 45
    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 47
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 50
    move-result-object v7

    .line 51
    if-eq v6, v7, :cond_0

    .line 53
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    const-string v6, "  targetComp: "

    .line 58
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 63
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 72
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 75
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v6, "caller="

    .line 81
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    const-string v6, " "

    .line 91
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 96
    if-eqz v6, :cond_1

    .line 98
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const-string/jumbo v6, "null"

    .line 106
    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    const-string v6, " pid="

    .line 111
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 116
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    const-string v6, " uid="

    .line 121
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 126
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 129
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 131
    const/4 v7, -0x1

    .line 132
    if-eqz v6, :cond_2

    .line 134
    array-length v6, v6

    .line 135
    if-gtz v6, :cond_3

    .line 137
    :cond_2
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 139
    if-eq v6, v7, :cond_4

    .line 141
    :cond_3
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v6, "requiredPermissions="

    .line 147
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 152
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    const-string v6, "  appOp="

    .line 161
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 166
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 169
    :cond_4
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 171
    if-eqz v6, :cond_5

    .line 173
    array-length v6, v6

    .line 174
    if-lez v6, :cond_5

    .line 176
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v6, "excludedPermissions="

    .line 182
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    .line 187
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    :cond_5
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 196
    if-eqz v6, :cond_6

    .line 198
    array-length v6, v6

    .line 199
    if-lez v6, :cond_6

    .line 201
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string/jumbo v6, "excludedPackages="

    .line 207
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    .line 212
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    :cond_6
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 221
    if-eqz v6, :cond_7

    .line 223
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v6, "options="

    .line 229
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 234
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 241
    :cond_7
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    const-string/jumbo v6, "enqueueClockTime="

    .line 247
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    new-instance v6, Ljava/util/Date;

    .line 252
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 254
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 257
    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    const-string v6, " dispatchClockTime="

    .line 266
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    new-instance v6, Ljava/util/Date;

    .line 271
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 273
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 276
    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    .line 285
    const-wide/16 v10, 0x0

    .line 287
    cmp-long v6, v8, v10

    .line 289
    if-lez v6, :cond_8

    .line 291
    const-string v6, " originalEnqueueClockTime="

    .line 293
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    new-instance v6, Ljava/util/Date;

    .line 298
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    .line 300
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 303
    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 306
    move-result-object v6

    .line 307
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 313
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v6, "dispatchTime="

    .line 319
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 324
    invoke-static {v8, v9, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 327
    const-string v6, " ("

    .line 329
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 334
    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 336
    sub-long/2addr v8, v12

    .line 337
    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 340
    const-string v8, " since enq)"

    .line 342
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 347
    cmp-long v8, v8, v10

    .line 349
    if-eqz v8, :cond_9

    .line 351
    const-string v8, " finishTime="

    .line 353
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 358
    invoke-static {v8, v9, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 361
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget-wide v3, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 366
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 368
    sub-long/2addr v3, v8

    .line 369
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 372
    const-string v3, " since disp)"

    .line 374
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    goto :goto_1

    .line 378
    :cond_9
    const-string v6, " receiverTime="

    .line 380
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 385
    invoke-static {v8, v9, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 388
    :goto_1
    const-string v3, ""

    .line 390
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 395
    if-eqz v3, :cond_a

    .line 397
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    const-string v3, "anrCount="

    .line 402
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 407
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 410
    :cond_a
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 412
    if-nez v3, :cond_b

    .line 414
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 416
    if-ne v3, v7, :cond_b

    .line 418
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 420
    if-nez v3, :cond_b

    .line 422
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    .line 424
    if-eqz v3, :cond_d

    .line 426
    :cond_b
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v3, "resultTo="

    .line 432
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 437
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 440
    const-string v3, " resultCode="

    .line 442
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 447
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 450
    const-string v3, " hadResultTo="

    .line 452
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    .line 457
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 460
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 462
    if-eqz v3, :cond_c

    .line 464
    const-string v3, " resultData=(has data)"

    .line 466
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    goto :goto_2

    .line 470
    :cond_c
    const-string v3, " resultData="

    .line 472
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 477
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    :cond_d
    :goto_2
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 482
    if-eqz v3, :cond_e

    .line 484
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v3, "resultExtras=(has extras)"

    .line 490
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    :cond_e
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 495
    if-nez v3, :cond_f

    .line 497
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 499
    if-nez v3, :cond_f

    .line 501
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 503
    if-nez v3, :cond_f

    .line 505
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 507
    if-eqz v3, :cond_10

    .line 509
    :cond_f
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    const-string/jumbo v3, "resultAbort="

    .line 515
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 520
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 523
    const-string v3, " ordered="

    .line 525
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 530
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 533
    const-string v3, " sticky="

    .line 535
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 538
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 540
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 543
    const-string v3, " initialSticky="

    .line 545
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 548
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 550
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 553
    const-string v3, " originalStickyCallingUid="

    .line 555
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    .line 560
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 563
    :cond_10
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 565
    if-eqz v3, :cond_11

    .line 567
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string/jumbo v3, "nextReceiver="

    .line 573
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 578
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 581
    :cond_11
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 583
    if-eqz v3, :cond_16

    .line 585
    const/4 v4, 0x1

    .line 586
    if-eq v3, v4, :cond_15

    .line 588
    const/4 v4, 0x2

    .line 589
    if-eq v3, v4, :cond_14

    .line 591
    const/4 v4, 0x3

    .line 592
    if-eq v3, v4, :cond_13

    .line 594
    const/4 v4, 0x4

    .line 595
    if-eq v3, v4, :cond_12

    .line 597
    const-string v3, " (?)"

    .line 599
    goto :goto_3

    .line 600
    :cond_12
    const-string v3, " (WAITING_SERVICES)"

    .line 602
    goto :goto_3

    .line 603
    :cond_13
    const-string v3, " (CALL_DONE_RECEIVE)"

    .line 605
    goto :goto_3

    .line 606
    :cond_14
    const-string v3, " (CALL_IN_RECEIVE)"

    .line 608
    goto :goto_3

    .line 609
    :cond_15
    const-string v3, " (APP_RECEIVE)"

    .line 611
    :goto_3
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    const-string/jumbo v4, "state="

    .line 617
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 622
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 625
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    :cond_16
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v3, "terminalCount="

    .line 634
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 637
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    .line 639
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 642
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 644
    const/4 v4, 0x0

    .line 645
    if-eqz v3, :cond_17

    .line 647
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 650
    move-result v3

    .line 651
    goto :goto_4

    .line 652
    :cond_17
    move v3, v4

    .line 653
    :goto_4
    new-instance v6, Landroid/util/PrintWriterPrinter;

    .line 655
    invoke-direct {v6, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 658
    move v7, v4

    .line 659
    :goto_5
    if-ge v7, v3, :cond_1e

    .line 661
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 663
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 666
    move-result-object v8

    .line 667
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 672
    aget v9, v9, v7

    .line 674
    invoke-static {v9}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    .line 677
    move-result-object v9

    .line 678
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    const/16 v9, 0x20

    .line 683
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 686
    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 688
    aget-wide v12, v12, v7

    .line 690
    cmp-long v12, v12, v10

    .line 692
    if-eqz v12, :cond_18

    .line 694
    const-string/jumbo v12, "scheduled "

    .line 697
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 702
    aget-wide v12, v12, v7

    .line 704
    iget-wide v14, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 706
    sub-long/2addr v12, v14

    .line 707
    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 710
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 713
    :cond_18
    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 715
    aget-wide v12, v12, v7

    .line 717
    cmp-long v12, v12, v10

    .line 719
    if-eqz v12, :cond_19

    .line 721
    const-string/jumbo v12, "terminal "

    .line 724
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 727
    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    .line 729
    aget-wide v12, v12, v7

    .line 731
    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    .line 733
    aget-wide v14, v14, v7

    .line 735
    sub-long/2addr v12, v14

    .line 736
    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 739
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 742
    :cond_19
    const-string v9, "("

    .line 744
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    .line 749
    aget v9, v9, v7

    .line 751
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 754
    const-string v9, ") "

    .line 756
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    const-string v9, "#"

    .line 761
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 767
    const-string v9, ": "

    .line 769
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 772
    instance-of v9, v8, Lcom/android/server/am/BroadcastFilter;

    .line 774
    const-string v12, "      "

    .line 776
    const-string v13, "/ "

    .line 778
    const-string v14, "/ o:"

    .line 780
    const-string v15, "/ e:"

    .line 782
    const-string v10, "/ s:"

    .line 784
    if-eqz v9, :cond_1a

    .line 786
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    .line 791
    aget-wide v9, v9, v7

    .line 793
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 796
    move-result-object v9

    .line 797
    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 800
    move-result-object v9

    .line 801
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 807
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    .line 809
    aget-wide v9, v9, v7

    .line 811
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 814
    move-result-object v9

    .line 815
    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 818
    move-result-object v9

    .line 819
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    .line 827
    aget-object v9, v9, v7

    .line 829
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 838
    check-cast v8, Lcom/android/server/am/BroadcastFilter;

    .line 840
    iget-object v9, v8, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 842
    if-eqz v9, :cond_1c

    .line 844
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    const-string/jumbo v9, "requiredPermission="

    .line 850
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    iget-object v8, v8, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 855
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    goto :goto_6

    .line 859
    :cond_1a
    instance-of v9, v8, Landroid/content/pm/ResolveInfo;

    .line 861
    if-eqz v9, :cond_1b

    .line 863
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    .line 868
    aget-wide v9, v9, v7

    .line 870
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 873
    move-result-object v9

    .line 874
    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 877
    move-result-object v9

    .line 878
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    .line 886
    aget-wide v9, v9, v7

    .line 888
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 891
    move-result-object v9

    .line 892
    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 895
    move-result-object v9

    .line 896
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    .line 904
    aget-object v9, v9, v7

    .line 906
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    const-string v9, "(manifest)"

    .line 914
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 919
    invoke-virtual {v8, v6, v12, v4}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 922
    goto :goto_6

    .line 923
    :cond_1b
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 926
    :cond_1c
    :goto_6
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 928
    aget-object v8, v8, v7

    .line 930
    if-eqz v8, :cond_1d

    .line 932
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    const-string/jumbo v8, "reason: "

    .line 938
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    .line 943
    aget-object v8, v8, v7

    .line 945
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    :cond_1d
    add-int/lit8 v7, v7, 0x1

    .line 950
    const-wide/16 v10, 0x0

    .line 952
    goto/16 :goto_5

    .line 954
    :cond_1e
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10500000001L

    .line 10
    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 15
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 17
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const-wide v0, 0x10900000002L

    .line 26
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 32
    return-void
.end method

.method public final getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 8
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v3, v2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/os/Bundle;

    .line 30
    if-nez v0, :cond_0

    .line 32
    return-object v1

    .line 33
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 35
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 37
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 43
    :cond_1
    instance-of v0, p1, Landroid/content/pm/ResolveInfo;

    .line 45
    if-eqz v0, :cond_3

    .line 47
    if-nez v1, :cond_2

    .line 49
    new-instance v1, Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 53
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 56
    :cond_2
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 58
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    :cond_3
    if-eqz v1, :cond_4

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 72
    :goto_0
    return-object v1
.end method

.method public final isForeground()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    .line 6
    move-result p0

    .line 7
    const/high16 v0, 0x10000000

    .line 9
    and-int/2addr p0, v0

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 15
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " "

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "/u"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 15
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "BroadcastRecord{"

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v1, "}"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    .line 46
    return-object p0
.end method
