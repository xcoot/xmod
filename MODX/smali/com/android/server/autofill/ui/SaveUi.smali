.class public final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCompatMode:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public mDestroyed:Z

.field public final mDialog:Landroid/app/Dialog;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mSubTitle:Ljava/lang/CharSequence;

.field public final mThemeId:I

.field public final mTitle:Ljava/lang/CharSequence;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/AutoFillUI$1;ZZZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p12

    move/from16 v7, p13

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v8, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v8}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v8, v1, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 4
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v10, "SaveUi"

    if-eqz v9, :cond_0

    .line 5
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v11, "nightMode: %b displayId: %d"

    invoke-static {v10, v11, v9}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p11, :cond_1

    const v9, 0x103042f

    goto :goto_0

    :cond_1
    const v9, 0x103043c

    .line 6
    :goto_0
    iput v9, v1, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    .line 7
    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 8
    new-instance v11, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v12, p10

    invoke-direct {v11, v12}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;-><init>(Lcom/android/server/autofill/ui/AutoFillUI$1;)V

    iput-object v11, v1, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v11, p9

    .line 9
    iput-object v11, v1, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 10
    iput-object v2, v1, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 11
    iput-object v3, v1, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 12
    iput-boolean v7, v1, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 13
    new-instance v11, Lcom/android/server/autofill/ui/SaveUi$1;

    move-object/from16 v12, p1

    invoke-direct {v11, v1, v12, v9}, Lcom/android/server/autofill/ui/SaveUi$1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/Context;I)V

    .line 14
    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 15
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v13

    const/16 v15, 0x3e7

    const/4 v14, 0x0

    if-ne v13, v15, :cond_5

    const v13, 0x1090148

    const/4 v15, 0x0

    .line 16
    invoke-virtual {v12, v13, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v13, 0x1020542

    .line 17
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ButtonBarLayout;

    .line 18
    invoke-virtual {v13, v14}, Lcom/android/internal/widget/ButtonBarLayout;->setAllowStacking(Z)V

    const v13, 0x104021f

    .line 19
    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "ja"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const v14, 0x104021e

    .line 21
    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 22
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    move-object/from16 p3, v13

    const/4 v13, 0x0

    invoke-virtual {v14, v15, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 23
    const-string v13, "SemCscFeature"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v13, 0x102021a

    .line 24
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_3

    const/16 v13, 0x8

    .line 25
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v13, 0x1020544

    .line 26
    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_4

    const/4 v14, 0x0

    .line 27
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    move-object v13, v12

    move-object/from16 v12, p3

    goto :goto_2

    :cond_5
    const v13, 0x109004f

    const/4 v14, 0x0

    .line 28
    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    :goto_2
    const v14, 0x102021c

    .line 29
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 30
    new-instance v15, Landroid/util/ArraySet;

    const/4 v4, 0x3

    invoke-direct {v15, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 31
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v4

    iput v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    and-int/lit8 v16, v4, 0x1

    if-eqz v16, :cond_6

    move/from16 v16, v9

    const v9, 0x104021a

    .line 32
    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move/from16 v16, v9

    :goto_3
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_7

    const v9, 0x1040215

    .line 33
    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 v9, v4, 0x64

    .line 34
    invoke-static {v9}, Ljava/lang/Integer;->bitCount(I)I

    move-result v9

    const/4 v5, 0x1

    if-gt v9, v5, :cond_b

    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    and-int/lit8 v9, v4, 0x40

    if-eqz v9, :cond_9

    const v9, 0x104021b

    .line 35
    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_a

    const v9, 0x1040216

    .line 36
    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    and-int/lit8 v9, v4, 0x20

    if-eqz v9, :cond_c

    const v9, 0x1040217

    .line 37
    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    :goto_4
    const v9, 0x1040219

    .line 38
    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    and-int/lit8 v9, v4, 0x8

    if-eqz v9, :cond_d

    const v9, 0x104021c

    .line 39
    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/lit8 v9, v4, 0x10

    if-eqz v9, :cond_e

    const v9, 0x1040218

    .line 40
    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_e
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v9

    move-object/from16 v17, v10

    const/4 v10, 0x2

    if-eq v9, v5, :cond_14

    if-eq v9, v10, :cond_12

    const/4 v10, 0x3

    if-eq v9, v10, :cond_10

    if-eqz v6, :cond_f

    const v9, 0x1040220

    goto :goto_6

    :cond_f
    const v9, 0x1040211

    .line 42
    :goto_6
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v10

    .line 43
    invoke-virtual {v11, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 44
    invoke-static {v9, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    move v10, v5

    move-object/from16 v18, v8

    goto/16 :goto_b

    :cond_10
    const/4 v10, 0x0

    if-eqz v6, :cond_11

    const v9, 0x1040222

    :goto_7
    move-object/from16 v18, v8

    goto :goto_8

    :cond_11
    const v9, 0x1040213

    goto :goto_7

    .line 45
    :goto_8
    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    const/4 v5, 0x2

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    filled-new-array {v8, v10, v15, v12}, [Ljava/lang/Object;

    move-result-object v5

    .line 46
    invoke-virtual {v11, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    const/4 v10, 0x1

    goto :goto_b

    :cond_12
    move-object/from16 v18, v8

    const/4 v8, 0x0

    if-eqz v6, :cond_13

    const v5, 0x1040221

    goto :goto_9

    :cond_13
    const v5, 0x1040212

    .line 47
    :goto_9
    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    filled-new-array {v9, v15, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 48
    invoke-virtual {v11, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_b

    :cond_14
    move v10, v5

    move-object/from16 v18, v8

    const/4 v8, 0x0

    if-eqz v6, :cond_15

    const v5, 0x1040223

    goto :goto_a

    :cond_15
    const v5, 0x1040214

    .line 49
    :goto_a
    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    filled-new-array {v9, v12}, [Ljava/lang/Object;

    move-result-object v9

    .line 50
    invoke-virtual {v11, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 51
    :goto_b
    iget-object v5, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v5

    const/16 v8, 0x3e7

    if-eq v5, v8, :cond_16

    const v5, 0x102021a

    .line 53
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-object/from16 v8, p4

    .line 55
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_16
    const-string v5, "applyCustomDescription(): view = "

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v8

    const/16 v9, 0x46a

    if-nez v8, :cond_17

    move-object/from16 v2, v17

    goto/16 :goto_17

    .line 57
    :cond_17
    iget v0, v0, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    const/16 v10, 0x469

    invoke-static {v10, v3, v2, v0, v7}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    move-object/from16 v2, v18

    .line 59
    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 60
    invoke-virtual {v8}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_18

    .line 61
    const-string v0, "No remote view on custom description"

    move-object/from16 v2, v17

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_18
    move-object/from16 v2, v17

    .line 62
    invoke-virtual {v8}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v3

    .line 63
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_19

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "applyCustomDescription(): transformations = "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v4, p8

    const/4 v7, 0x1

    if-eqz v3, :cond_1a

    .line 65
    invoke-static {v4, v0, v3}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 66
    const-string/jumbo v0, "could not apply main transformations on custom description"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 67
    :cond_1a
    new-instance v3, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    move/from16 v10, v16

    const/4 v7, 0x0

    .line 68
    :try_start_0
    invoke-virtual {v0, v11, v7, v3, v10}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v3

    .line 69
    invoke-virtual {v8}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v7

    .line 70
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v10, :cond_1b

    .line 71
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " updates="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_16

    .line 72
    :cond_1b
    :goto_c
    const-string/jumbo v5, "custom description has "

    if-eqz v7, :cond_24

    .line 73
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 74
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v16, :cond_1c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " batch updates"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v9, 0x0

    :goto_d
    if-ge v9, v10, :cond_24

    .line 75
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 76
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Landroid/service/autofill/InternalValidator;

    if-eqz v15, :cond_1d

    .line 77
    invoke-virtual {v15, v4}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v15

    if-nez v15, :cond_1e

    :cond_1d
    move-object/from16 p2, v7

    move/from16 p5, v10

    goto/16 :goto_10

    .line 78
    :cond_1e
    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroid/service/autofill/BatchUpdates;

    .line 79
    invoke-virtual {v14}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v15

    if-eqz v15, :cond_20

    .line 80
    sget-boolean v17, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v17, :cond_1f

    move-object/from16 p2, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p5, v10

    const-string v10, "Applying template updates for batch update #"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1f
    move-object/from16 p2, v7

    move/from16 p5, v10

    .line 81
    :goto_e
    invoke-virtual {v15, v11, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_f

    :cond_20
    move-object/from16 p2, v7

    move/from16 p5, v10

    .line 82
    :goto_f
    invoke-virtual {v14}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 83
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, ": "

    if-eqz v10, :cond_21

    .line 84
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Applying child transformation for batch update #"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_21
    invoke-static {v4, v0, v7}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v10

    if-nez v10, :cond_22

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not apply child transformation for batch update #"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 87
    :cond_22
    invoke-virtual {v0, v11, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_11

    .line 88
    :goto_10
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_23

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping batch update #"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_11
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, p2

    move/from16 v10, p5

    goto/16 :goto_d

    .line 89
    :cond_24
    invoke-virtual {v8}, Landroid/service/autofill/CustomDescription;->getActions()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 90
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 91
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_25

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " actions"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_25
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-nez v5, :cond_26

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot apply actions because custom description root is not a ViewGroup: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 94
    :cond_26
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v4, :cond_28

    .line 95
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 96
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/InternalOnClickAction;

    .line 97
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_27

    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring action "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for view "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " because it\'s not on "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 99
    :cond_27
    new-instance v8, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v9, v5}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 100
    :cond_28
    :goto_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;)V

    .line 102
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_29

    .line 104
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v7}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_29
    const v4, 0x1020219

    .line 105
    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 107
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v3, 0x1f4

    .line 108
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    .line 109
    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 110
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "on constructor: applied custom description"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 111
    :goto_16
    const-string v3, "Error applying custom description. "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :goto_17
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2a

    .line 113
    iget-object v3, v1, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 114
    iget-object v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v5, v5, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v7, v1, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    iget-object v8, v1, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    const/16 v9, 0x46b

    invoke-static {v9, v4, v8, v5, v7}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 115
    iget v5, v1, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x46a

    invoke-virtual {v4, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 116
    invoke-virtual {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const v3, 0x1020219

    .line 117
    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 118
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {v4}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    .line 121
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 122
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v4, 0x1f4

    .line 123
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 124
    :cond_2a
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "on constructor: title="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subTitle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_18
    const v0, 0x102021b

    .line 125
    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v2

    const v3, 0x102021d

    .line 127
    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getPositiveActionStyle()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    const v4, 0x1040205

    .line 129
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_19

    :cond_2c
    if-eqz v6, :cond_2d

    const v4, 0x1040224

    .line 130
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 131
    :cond_2d
    :goto_19
    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v4

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_2e

    .line 133
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    move-object/from16 v5, p7

    invoke-direct {v2, v1, v5, v4}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x1020543

    .line 134
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 135
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x1040207

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v12, Ljava/lang/String;

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$2;

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/android/server/autofill/ui/SaveUi$2;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/TextView;Landroid/service/autofill/SaveInfo;Z)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1b

    :cond_2e
    move-object/from16 v5, p7

    const/4 v4, 0x1

    if-eq v2, v4, :cond_30

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2f

    const v2, 0x104020f

    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1a

    :cond_2f
    const v2, 0x104020d

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1a

    :cond_30
    const v2, 0x1040210

    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :goto_1a
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v5, v4}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :goto_1b
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 142
    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200ef

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 143
    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_33

    .line 144
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_button_background"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_31

    move v14, v6

    goto :goto_1c

    :cond_31
    move v14, v7

    .line 145
    :goto_1c
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 146
    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x1010031

    invoke-virtual {v5, v7, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 147
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_32

    .line 148
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 149
    invoke-virtual {v0, v14, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(ZI)V

    .line 150
    invoke-virtual {v3, v14, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(ZI)V

    goto :goto_1d

    .line 151
    :cond_32
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 152
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 153
    :cond_33
    :goto_1d
    new-instance v0, Landroid/app/Dialog;

    iget v2, v1, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-direct {v0, v11, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 154
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 155
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7f6

    .line 157
    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    const v2, 0x20002

    .line 158
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x3f19999a    # 0.6f

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v2, 0x10

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v2, 0x20

    .line 161
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v2, 0x51

    .line 162
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, 0x1

    .line 163
    invoke-virtual {v0, v2}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 164
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x104020b

    .line 165
    invoke-virtual {v11, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const v2, 0x103032b

    .line 166
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 167
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    const v0, 0x1020220

    .line 168
    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v2, 0x102021f

    .line 169
    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_34

    .line 170
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 171
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 172
    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/ScrollView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 173
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/ScrollView;Landroid/view/View;)V

    .line 174
    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 175
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    return-void
.end method

.method public static applyMovementMethodIfNeed(Landroid/widget/TextView;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 14
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 20
    move-result v0

    .line 21
    const-class v2, Landroid/text/style/ClickableSpan;

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 30
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final hide()Lcom/android/server/autofill/ui/PendingUi;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 3
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    const-string v1, "SaveUi"

    .line 9
    const-string v2, "Hiding save dialog."

    .line 11
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 17
    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 23
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 30
    throw p0
.end method

.method public final show()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Showing save dialog: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SaveUi"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 27
    const/4 v0, 0x0

    .line 28
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 33
    return-void
.end method

.method public final startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    const-string v1, "SaveUi"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string v0, "Intercepting custom description intent"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 14
    iget-object v2, v0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    .line 16
    const-string v3, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    .line 18
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 21
    iget-object v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 23
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 30
    const/4 p1, 0x2

    .line 31
    iput p1, v0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 33
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 35
    if-eqz p1, :cond_1

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo p2, "hiding UI until restored with token "

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 58
    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 60
    iget p2, v0, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 62
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 64
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 66
    const/16 v2, 0x46c

    .line 68
    invoke-static {v2, p1, v1, p2, v0}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 71
    move-result-object p1

    .line 72
    iget p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object p2

    .line 78
    const/16 v0, 0x46a

    .line 80
    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 83
    move-result-object p1

    .line 84
    const/4 p2, 0x1

    .line 85
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 88
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 93
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const-string p0, "NO TITLE"

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
.end method
