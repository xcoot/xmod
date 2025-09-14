.class public final Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# static fields
.field public static final BLOCK_KNOX_ANALYTICS:Z = false

.field public static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "China"

.field public static final COUNTRY_CODE_PROPERTY:Ljava/lang/String; = "ro.csc.country_code"

.field public static final ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

.field public static final PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

.field public static final SETTINGS_KEY_KES_STATUS:Ljava/lang/String; = "is_kes_enabled"

.field public static final SETTINGS_KEY_KLM_ON_PREMISE_STATUS:Ljava/lang/String; = "onpremise_activated"

.field public static final SETTINGS_KEY_KLM_STATUS:Ljava/lang/String; = "klm_activated"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] ActivationMonitor"


# instance fields
.field public mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public mB2CListener:Lcom/samsung/android/knox/analytics/activation/B2CListener;

.field public mContext:Landroid/content/Context;

.field public mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

.field public mIsChinaDevice:Z

.field public mIsOnBootCheckings:Z

.field public mIsOnPremiseActivated:Z

.field public mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

.field public mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field public mObservers:Ljava/util/List;

.field public mTriggers:Ljava/util/BitSet;

.field public mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com.sec.android.app.shealth"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "com.samsung.knox.securefolder"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 10
    .line 11
    new-instance v0, Ljava/util/BitSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    .line 32
    .line 33
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "constructor()"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    new-instance p1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 50
    .line 51
    return-void
.end method

.method public static filterOutBlacklistedElm([Lcom/samsung/android/knox/license/LicenseInfo;)Ljava/util/List;
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "filterOutBlacklistedElm()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, "filterOutBlacklistedElm(): empty LicenseInfo array"

    .line 16
    .line 17
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    array-length v0, p0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_2

    .line 24
    .line 25
    aget-object v3, p0, v2

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object v1
.end method

.method public static isPackageAllowedToRunAnalytics(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "isPackageAllowedToRunAnalytics("

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ")"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v1, v0

    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    if-ge v3, v1, :cond_1

    .line 31
    .line 32
    aget-object v4, v0, v3

    .line 33
    .line 34
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "isPackageAllowedToRunAnalytics(): Not allowed"

    .line 43
    .line 44
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public static isPackageBlacklisted(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "isPackageBlacklisted("

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ")"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    move v3, v0

    .line 33
    :goto_0
    if-ge v3, v2, :cond_2

    .line 34
    .line 35
    aget-object v4, v1, v3

    .line 36
    .line 37
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "isPackageBlacklisted(): blacklisted"

    .line 46
    .line 47
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v0
.end method


# virtual methods
.method public final bootChecking()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "bootChecking() - Device country is china, returning ..."

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "bootChecking()"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/Thread;

    .line 21
    .line 22
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkB2C() - package "

    .line 4
    .line 5
    const-string v2, " feature "

    .line 6
    .line 7
    const-string v3, " isActivation? "

    .line 8
    .line 9
    invoke-static {v1, p1, v2, p2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->addOrRemoveB2CFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object p2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->getB2CActivationStatus(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final checkB2COnBoot()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkB2ConBoot()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final checkB2COnlyAndApplyFeatureWhitelist()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkB2COnlyAndApplyFeatureWhitelist()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isOnlyB2CTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->applyWhitelistForB2CFeatures(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->removeB2CFeaturesFromWhitelist(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->removeB2CFeaturesFromWhitelist(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final checkChina()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.csc.country_code"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "China"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    .line 22
    .line 23
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "checkChina(): "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final declared-synchronized checkConditionsToStart()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "checkConditionsToStart()"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkNewStatus()Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2COnlyAndApplyFeatureWhitelist()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string v1, "checkConditionsToStart() - already in the correct state"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$2;->$SwitchMap$com$samsung$android$knox$analytics$activation$model$ActivationInfo$ActivationStatus:[I

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    aget v0, v0, v1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-eq v0, v2, :cond_3

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    if-eq v0, v3, :cond_2

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsDeactivation(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsDeactivation(Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    .line 63
    .line 64
    xor-int/2addr v0, v2

    .line 65
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsActivation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :goto_0
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit p0

    .line 71
    throw v0
.end method

.method public final checkDO(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkDO()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isDoActive()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final checkDOOnBoot()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkDOOnBoot()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isDoActive()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final checkELM(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkELM()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isElmActive()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final checkELMOnBoot()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkELMOnBoot()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELM(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final checkKLM(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkKLM()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkOnPremise()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isKlmActive()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final checkKLMOnBoot()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkKLMOnBoot()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final checkKes(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkKes()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isKesActive()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final checkKesOnBoot()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkKesOnBoot"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKes(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final checkNewStatus()Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-lez p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "checkNewStatus() = "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 48
    .line 49
    return-object p0
.end method

.method public final checkOnPremise()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "onpremise_activated"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    move v2, v1

    .line 19
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, "checkOnPremise(): "

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    .line 39
    .line 40
    if-ne v2, v0, :cond_1

    .line 41
    .line 42
    const-string p0, "checkOnPremise(): Didn\'t change, returning"

    .line 43
    .line 44
    invoke-static {v1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    .line 49
    .line 50
    return-void
.end method

.method public final checkPOOnBoot()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "checkPOOnBoot()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final getElmLicenseList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "getElmLicenseList(): Error getting ELS"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->filterOutBlacklistedElm([Lcom/samsung/android/knox/license/LicenseInfo;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "enterprise_license_policy"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 16
    .line 17
    return-object p0
.end method

.method public final isElmActive()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "isElmActive()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getElmLicenseList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-lez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "isElmActive(): "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return p0
.end method

.method public final isKesActive()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "is_kes_enabled"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-lez p0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "isKesActive(): "

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1
.end method

.method public final isKlmActive()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "klm_activated"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-lez p0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "checkKLM(): "

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1
.end method

.method public final isOnlyB2CTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/BitSet;

    .line 8
    .line 9
    sget-object p1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->flip(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public final isTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final notifyKnoxAnalyticsActivation(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyKnoxAnalyticsActivation()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onKnoxAnalyticsActivation(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final notifyKnoxAnalyticsDeactivation(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyKnoxAnalyticsDeactivation()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onKnoxAnalyticsDeactivation(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final notifyStatusChanged(IZLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyStatusChanged() pkg: "

    .line 4
    .line 5
    .line 6
    const-string v2, " trigger: "

    .line 7
    .line 8
    const-string v3, " status "

    .line 9
    .line 10
    invoke-static {p1, v1, p3, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 41
    .line 42
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onStatusChanged(IZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public final notifyTriggerChanged(IZLjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyTriggerChanged() pkg: "

    .line 4
    .line 5
    .line 6
    const-string v2, " trigger: "

    .line 7
    .line 8
    const-string v3, " status "

    .line 9
    .line 10
    invoke-static {p1, v1, p3, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 41
    .line 42
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onTriggerChanged(IZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo p1, "onBootPhase() - Device country is china, returning ..."

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/16 v0, 0x1e0

    .line 15
    .line 16
    if-eq p1, v0, :cond_4

    .line 17
    .line 18
    const/16 v0, 0x1f4

    .line 19
    .line 20
    const-string/jumbo v1, "onBootPhase(PHASE_SYSTEM_SERVICES_READY)"

    .line 21
    .line 22
    .line 23
    if-eq p1, v0, :cond_3

    .line 24
    .line 25
    const/16 v0, 0x258

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/16 p0, 0x3e8

    .line 30
    .line 31
    if-eq p1, p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo p1, "onBootPhase(PHASE_BOOT_COMPLETED)"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object p1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkChina()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->bootChecking()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerListenersObservers()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string/jumbo p1, "onBootPhase(PHASE_LOCK_SETTINGS_READY)"

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public final onPoAdded(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getPoPackageName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onPoRemoved(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final bridge synthetic onUpdateContainerLicenseStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELM(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final registerListenersObservers()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "registerListenersObservers()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->register()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/KESListener;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/KESListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/KESListener;->register()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/B2CListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mB2CListener:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->register()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 55
    .line 56
    check-cast v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string/jumbo p0, "registerListenersObservers() - EnterpriseLicenseService is null, can\'t observe license"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "registerObserver()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "setTrigger("

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ") , "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/util/BitSet;

    .line 52
    .line 53
    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageAllowedToRunAnalytics(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    .line 65
    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p0, v2, p4, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyStatusChanged(IZLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    if-eqz p2, :cond_2

    .line 82
    .line 83
    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {p4, v2}, Ljava/util/BitSet;->set(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-virtual {p4, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 101
    .line 102
    .line 103
    :goto_0
    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    .line 104
    .line 105
    invoke-virtual {p4, v1}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    if-eqz p4, :cond_3

    .line 110
    .line 111
    const-string/jumbo p0, "setTrigger(): didn\'t change, returning"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_3
    iget-boolean p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    .line 119
    .line 120
    if-nez p4, :cond_5

    .line 121
    .line 122
    iget-boolean p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    .line 123
    .line 124
    if-nez p4, :cond_4

    .line 125
    .line 126
    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p4

    .line 130
    if-nez p4, :cond_4

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getId()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyTriggerChanged(IZLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V

    .line 140
    .line 141
    .line 142
    :cond_5
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
