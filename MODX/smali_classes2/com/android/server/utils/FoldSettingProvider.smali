.class public final Lcom/android/server/utils/FoldSettingProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SETTING_VALUES:Ljava/util/Set;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFoldLockSettingAvailabilityProvider:Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

.field public final mSettingsWrapper:Lcom/android/internal/util/SettingsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "selective_stay_awake_key"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "sleep_on_fold_key"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "stay_awake_on_fold_key"

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/utils/FoldSettingProvider;->SETTING_VALUES:Ljava/util/Set;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/SettingsWrapper;Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/utils/FoldSettingProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/utils/FoldSettingProvider;->mSettingsWrapper:Lcom/android/internal/util/SettingsWrapper;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/android/server/utils/FoldSettingProvider;->mFoldLockSettingAvailabilityProvider:Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getFoldSettingValue()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/FoldSettingProvider;->mFoldLockSettingAvailabilityProvider:Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;->isFoldLockBehaviorAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string/jumbo v1, "selective_stay_awake_key"

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/FoldSettingProvider;->mSettingsWrapper:Lcom/android/internal/util/SettingsWrapper;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/utils/FoldSettingProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 16
    .line 17
    const-string v2, "fold_lock_behavior_setting"

    .line 18
    .line 19
    const/4 v3, -0x2

    .line 20
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/util/SettingsWrapper;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object p0, v1

    .line 28
    :goto_0
    sget-object v0, Lcom/android/server/utils/FoldSettingProvider;->SETTING_VALUES:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const-string p0, "FoldSettingProvider"

    .line 37
    .line 38
    const-string v0, "getFoldSettingValue: Invalid setting value, returning default setting value"

    .line 39
    .line 40
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v1, p0

    .line 45
    :goto_1
    return-object v1
.end method
