.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$10:Landroid/metrics/LogMaker;

.field public final synthetic f$2:Landroid/service/autofill/FillResponse;

.field public final synthetic f$3:Landroid/view/autofill/AutofillId;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/content/ComponentName;

.field public final synthetic f$8:Ljava/lang/Object;

.field public final synthetic f$9:Lcom/android/server/autofill/PresentationStatsEventLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/metrics/LogMaker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$2:Landroid/service/autofill/FillResponse;

    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$3:Landroid/view/autofill/AutofillId;

    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$5:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$6:Ljava/lang/String;

    .line 18
    iput-object p8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$7:Landroid/content/ComponentName;

    .line 20
    iput-object p9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$8:Ljava/lang/Object;

    .line 22
    iput-object p10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$9:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 24
    iput-object p11, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$10:Landroid/metrics/LogMaker;

    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v8, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 5
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 7
    iget-object v11, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$2:Landroid/service/autofill/FillResponse;

    .line 9
    iget-object v12, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$3:Landroid/view/autofill/AutofillId;

    .line 11
    iget-object v13, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    .line 13
    iget-object v14, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$5:Landroid/graphics/drawable/Drawable;

    .line 15
    iget-object v15, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$6:Ljava/lang/String;

    .line 17
    iget-object v10, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$7:Landroid/content/ComponentName;

    .line 19
    iget-object v4, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$8:Ljava/lang/Object;

    .line 21
    iget-object v5, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$9:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 23
    iget-object v7, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$10:Landroid/metrics/LogMaker;

    .line 25
    iget-object v0, v8, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 27
    if-eq v2, v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v8, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 33
    new-instance v9, Lcom/android/server/autofill/ui/DialogFillUi;

    .line 35
    iget-object v6, v8, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, v8, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    .line 39
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    .line 42
    move-result v18

    .line 43
    new-instance v19, Lcom/android/server/autofill/ui/AutoFillUI$3;

    .line 45
    move-object/from16 v0, v19

    .line 47
    move-object v1, v8

    .line 48
    move-object v3, v11

    .line 49
    move-object/from16 v16, v6

    .line 51
    move-object v6, v12

    .line 52
    invoke-direct/range {v0 .. v7}, Lcom/android/server/autofill/ui/AutoFillUI$3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/view/autofill/AutofillId;Landroid/metrics/LogMaker;)V

    .line 55
    iget-object v0, v8, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 57
    move-object v1, v9

    .line 58
    move-object v2, v10

    .line 59
    move-object/from16 v10, v16

    .line 61
    move-object/from16 v16, v2

    .line 63
    move-object/from16 v17, v0

    .line 65
    invoke-direct/range {v9 .. v19}, Lcom/android/server/autofill/ui/DialogFillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/AutoFillUI$3;)V

    .line 68
    iput-object v1, v8, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    .line 70
    :goto_0
    return-void
.end method
