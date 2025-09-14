.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mServicePackageOverride:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-ge v1, v0, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->onTextClassifierServicePackageOverrideChangedLocked()V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    monitor-exit p1

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method
