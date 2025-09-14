.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$10:Landroid/metrics/LogMaker;

.field public final synthetic f$11:Lcom/android/server/autofill/SaveEventLogger;

.field public final synthetic f$12:Z

.field public final synthetic f$13:Z

.field public final synthetic f$14:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/autofill/ui/PendingUi;

.field public final synthetic f$4:Ljava/lang/CharSequence;

.field public final synthetic f$5:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/content/ComponentName;

.field public final synthetic f$8:Landroid/service/autofill/SaveInfo;

.field public final synthetic f$9:Landroid/service/autofill/ValueFinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Lcom/android/server/autofill/Session;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 8
    iput p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$3:Lcom/android/server/autofill/ui/PendingUi;

    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$4:Ljava/lang/CharSequence;

    .line 14
    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$5:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$6:Ljava/lang/String;

    .line 18
    iput-object p8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$7:Landroid/content/ComponentName;

    .line 20
    iput-object p9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$8:Landroid/service/autofill/SaveInfo;

    .line 22
    iput-object p10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$9:Landroid/service/autofill/ValueFinder;

    .line 24
    iput-object p11, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$10:Landroid/metrics/LogMaker;

    .line 26
    iput-object p12, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$11:Lcom/android/server/autofill/SaveEventLogger;

    .line 28
    iput-boolean p13, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$12:Z

    .line 30
    iput-boolean p14, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$13:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v6, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 5
    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 7
    iget v2, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$2:I

    .line 9
    iget-object v9, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$3:Lcom/android/server/autofill/ui/PendingUi;

    .line 11
    iget-object v10, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$4:Ljava/lang/CharSequence;

    .line 13
    iget-object v11, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$5:Landroid/graphics/drawable/Drawable;

    .line 15
    iget-object v12, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$6:Ljava/lang/String;

    .line 17
    iget-object v13, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$7:Landroid/content/ComponentName;

    .line 19
    iget-object v14, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$8:Landroid/service/autofill/SaveInfo;

    .line 21
    iget-object v7, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$9:Landroid/service/autofill/ValueFinder;

    .line 23
    iget-object v3, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$10:Landroid/metrics/LogMaker;

    .line 25
    iget-object v15, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$11:Lcom/android/server/autofill/SaveEventLogger;

    .line 27
    iget-boolean v8, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$12:Z

    .line 29
    iget-boolean v5, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$13:Z

    .line 31
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 33
    if-eq v1, v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v6, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 39
    iput-object v1, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 41
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    .line 46
    move-result-object v4

    .line 47
    iput-object v4, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    .line 49
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi;

    .line 51
    new-instance v17, Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 53
    move-object/from16 v16, v1

    .line 55
    check-cast v16, Lcom/android/server/autofill/Session;

    .line 57
    move-object/from16 v0, v17

    .line 59
    move-object v1, v6

    .line 60
    move-object/from16 p0, v2

    .line 62
    move-object v2, v3

    .line 63
    move-object v3, v15

    .line 64
    move-object/from16 v18, v4

    .line 66
    move-object/from16 v4, v16

    .line 68
    move/from16 v20, v5

    .line 70
    move-object v5, v9

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/PendingUi;)V

    .line 74
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    .line 76
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    .line 79
    move-result v0

    .line 80
    iget-object v1, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 82
    move-object v2, v7

    .line 83
    check-cast v2, Lcom/android/server/autofill/Session;

    .line 85
    move-object/from16 v7, p0

    .line 87
    move v3, v8

    .line 88
    move-object/from16 v8, v18

    .line 90
    move-object v4, v15

    .line 91
    move-object v15, v2

    .line 92
    move-object/from16 v16, v1

    .line 94
    move/from16 v18, v0

    .line 96
    move/from16 v19, v3

    .line 98
    invoke-direct/range {v7 .. v20}, Lcom/android/server/autofill/ui/SaveUi;-><init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/AutoFillUI$1;ZZZ)V

    .line 101
    move-object/from16 v0, p0

    .line 103
    iput-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 105
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 111
    move-result-wide v0

    .line 112
    iget-wide v2, v4, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    .line 114
    sub-long/2addr v0, v2

    .line 115
    iget-object v2, v4, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 117
    new-instance v3, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;

    .line 119
    const/4 v4, 0x2

    .line 120
    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;-><init>(JI)V

    .line 123
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 126
    :goto_0
    return-void
.end method
