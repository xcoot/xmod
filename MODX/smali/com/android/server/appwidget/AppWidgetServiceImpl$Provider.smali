.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final WIDGET_CATEGORY_FLAGS:[I


# instance fields
.field public broadcast:Landroid/app/PendingIntent;

.field public final generatedPreviews:Landroid/util/SparseArray;

.field public id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

.field public info:Landroid/appwidget/AppWidgetProviderInfo;

.field public infoTag:Ljava/lang/String;

.field public mInfoParsed:Z

.field public maskedByLockedProfile:Z

.field public maskedByQuietProfile:Z

.field public maskedByStoppedPackage:Z

.field public maskedBySuperLocked:Z

.field public maskedBySuspendedPackage:Z

.field public final pendingDeletedWidgetIds:Landroid/util/IntArray;

.field public tag:I

.field public final templatePreviews:Landroid/util/SparseArray;

.field public final templateSizes:[I

.field public final templateStyles:[I

.field public final widgets:Ljava/util/ArrayList;

.field public zombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x1

    .line 4
    filled-new-array {v2, v0, v1}, [I

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->WIDGET_CATEGORY_FLAGS:[I

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 21
    const/16 v1, 0xe

    .line 23
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 26
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 28
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->APPWIDGET_WIDGET_SUPPORTED_SIZES:[I

    .line 30
    array-length v1, v0

    .line 31
    const/4 v2, 0x1

    .line 32
    shl-int v1, v2, v1

    .line 34
    array-length v2, v0

    .line 35
    const/4 v3, 0x2

    .line 36
    shl-int v2, v3, v2

    .line 38
    filled-new-array {v1, v2}, [I

    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateStyles:[I

    .line 44
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    .line 46
    new-instance v0, Landroid/util/IntArray;

    .line 48
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 53
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    .line 56
    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 59
    return-void
.end method


# virtual methods
.method public final getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    .line 3
    if-nez v0, :cond_4

    .line 5
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 7
    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 19
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 21
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 23
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 25
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 35
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 37
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 39
    const-string v2, "android.appwidget.provider"

    .line 41
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 44
    move-result-object v0

    .line 45
    :cond_1
    if-eqz v0, :cond_3

    .line 47
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 49
    sget-boolean p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 51
    if-eqz p1, :cond_2

    .line 53
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateGeneratedPreviewCategoriesLocked()V

    .line 59
    :cond_3
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    .line 62
    :cond_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 64
    return-object p0
.end method

.method public final getTemplatePreviewLocked(II)Landroid/os/Bundle;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 3
    if-nez v0, :cond_0

    .line 5
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v1

    .line 19
    new-array v2, v1, [I

    .line 21
    new-array v3, v1, [Landroid/widget/RemoteViews;

    .line 23
    const/4 v4, 0x0

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v4, v1, :cond_2

    .line 27
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 32
    move-result v6

    .line 33
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    .line 35
    array-length v7, v7

    .line 36
    shr-int v8, v6, v7

    .line 38
    const/4 v9, 0x1

    .line 39
    shl-int v7, v9, v7

    .line 41
    sub-int/2addr v7, v9

    .line 42
    and-int/2addr v7, v6

    .line 43
    and-int/2addr v8, p2

    .line 44
    if-eqz v8, :cond_1

    .line 46
    and-int/2addr v7, p1

    .line 47
    if-eqz v7, :cond_1

    .line 49
    aput v6, v2, v5

    .line 51
    add-int/lit8 v6, v5, 0x1

    .line 53
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Landroid/widget/RemoteViews;

    .line 61
    aput-object v7, v3, v5

    .line 63
    move v5, v6

    .line 64
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo p0, "previewStates"

    .line 70
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 73
    const-string/jumbo p0, "previewRemoteViews"

    .line 76
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 79
    return-object v0
.end method

.method public final getUserId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3
    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 5
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final hostedByPackageForUser(ILjava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 19
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 21
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 23
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 33
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 36
    move-result v3

    .line 37
    if-ne v3, p1, :cond_0

    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return v1
.end method

.method public final isInPackageForUser(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 9
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 11
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isMaskedLocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 11
    if-nez v0, :cond_1

    .line 13
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 15
    if-nez v0, :cond_1

    .line 17
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    .line 19
    if-eqz p0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3
    sget-boolean p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    .line 8
    return-void
.end method

.method public final setTemplatePreviewLocked(II[Landroid/widget/RemoteViews;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    array-length v4, v3

    .line 10
    if-nez v4, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    .line 15
    array-length v5, v4

    .line 16
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateStyles:[I

    .line 18
    array-length v7, v6

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    :goto_0
    if-ge v9, v7, :cond_3

    .line 23
    aget v11, v6, v9

    .line 25
    shl-int v12, v2, v5

    .line 27
    and-int/2addr v12, v11

    .line 28
    if-eqz v12, :cond_2

    .line 30
    array-length v12, v4

    .line 31
    const/4 v13, 0x0

    .line 32
    :goto_1
    if-ge v13, v12, :cond_2

    .line 34
    aget v14, v4, v13

    .line 36
    and-int v15, v1, v14

    .line 38
    if-eqz v15, :cond_1

    .line 40
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 42
    or-int/2addr v14, v11

    .line 43
    aget-object v8, v3, v10

    .line 45
    invoke-virtual {v15, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    add-int/lit8 v10, v10, 0x1

    .line 50
    array-length v8, v3

    .line 51
    if-lt v10, v8, :cond_1

    .line 53
    const-string v3, "All preview data has been used for preview state / preview size : "

    .line 55
    const-string v4, " / "

    .line 57
    const-string v5, ", "

    .line 59
    invoke-static {v10, v1, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    const-string v2, "AppWidgetServiceImpl"

    .line 72
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateTemplatePreviewCategoriesLocked()V

    .line 78
    return-void

    .line 79
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateTemplatePreviewCategoriesLocked()V

    .line 88
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Provider{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const-string p0, " Z"

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, ""

    .line 22
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const/16 p0, 0x7d

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final updateGeneratedPreviewCategoriesLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result v0

    .line 12
    if-ge v1, v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 16
    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    .line 18
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    move-result v3

    .line 24
    or-int/2addr v2, v3

    .line 25
    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final updateTemplatePreviewCategoriesLocked()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    shl-int/2addr v1, v0

    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 8
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 10
    const/4 v4, 0x0

    .line 11
    iput v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedColorfulPreviewStates:I

    .line 13
    iput v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedMonotonePreviewStates:I

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v3

    .line 21
    if-ge v4, v3, :cond_2

    .line 23
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 28
    move-result v3

    .line 29
    and-int v5, v3, v2

    .line 31
    and-int v6, v3, v1

    .line 33
    if-eqz v6, :cond_0

    .line 35
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 37
    iget v7, v6, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedColorfulPreviewStates:I

    .line 39
    or-int/2addr v7, v5

    .line 40
    iput v7, v6, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedColorfulPreviewStates:I

    .line 42
    :cond_0
    const/4 v6, 0x2

    .line 43
    shl-int/2addr v6, v0

    .line 44
    and-int/2addr v3, v6

    .line 45
    if-eqz v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 49
    iget v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedMonotonePreviewStates:I

    .line 51
    or-int/2addr v5, v6

    .line 52
    iput v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedMonotonePreviewStates:I

    .line 54
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v1, "updateTemplatePreviewCategoriesLocked "

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 67
    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedColorfulPreviewStates:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 79
    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedMonotonePreviewStates:I

    .line 81
    const-string v1, "AppWidgetServiceImpl"

    .line 83
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 86
    return-void
.end method
