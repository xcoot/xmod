.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/service/autofill/FillResponse;

.field public final synthetic f$4:Landroid/view/autofill/AutofillId;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/CharSequence;

.field public final synthetic f$7:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$8:I

.field public final synthetic f$9:Landroid/metrics/LogMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 8
    iput p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$3:Landroid/service/autofill/FillResponse;

    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$4:Landroid/view/autofill/AutofillId;

    .line 14
    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$6:Ljava/lang/CharSequence;

    .line 18
    iput-object p8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$7:Landroid/graphics/drawable/Drawable;

    .line 20
    iput p9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$8:I

    .line 22
    iput-object p10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$9:Landroid/metrics/LogMaker;

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v6, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 5
    iget-object v3, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 7
    iget v1, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$2:I

    .line 9
    iget-object v9, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$3:Landroid/service/autofill/FillResponse;

    .line 11
    iget-object v10, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$4:Landroid/view/autofill/AutofillId;

    .line 13
    iget-object v11, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    .line 15
    iget-object v13, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$6:Ljava/lang/CharSequence;

    .line 17
    iget-object v14, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$7:Landroid/graphics/drawable/Drawable;

    .line 19
    iget v15, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$8:I

    .line 21
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$9:Landroid/metrics/LogMaker;

    .line 23
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 25
    if-eq v3, v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v6, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 31
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    iput-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    .line 39
    new-instance v12, Lcom/android/server/autofill/ui/FillUi;

    .line 41
    iget-object v8, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    .line 43
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    .line 45
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    .line 48
    move-result v16

    .line 49
    new-instance v17, Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 51
    move-object/from16 v0, v17

    .line 53
    move-object v1, v6

    .line 54
    move-object v4, v9

    .line 55
    move-object v5, v10

    .line 56
    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    .line 59
    iget-object v0, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 61
    move-object v7, v12

    .line 62
    move-object v1, v12

    .line 63
    move-object v12, v0

    .line 64
    move v0, v15

    .line 65
    move/from16 v15, v16

    .line 67
    move/from16 v16, v0

    .line 69
    invoke-direct/range {v7 .. v17}, Lcom/android/server/autofill/ui/FillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZILcom/android/server/autofill/ui/AutoFillUI$1;)V

    .line 72
    iput-object v1, v6, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 74
    :goto_0
    return-void
.end method
